/// <reference path="../../../scripts/lv/lv.utilities.ts" />
/// <reference path="../../../scripts/lv/lv.employeefilter.ts" />
/// <reference path="../../../pages/basecontroller.d.ts" />
lv.createController("HeThongTinhLuong.CacTinhNang.DinhNghiaBangLuongKhachHang", function () {
    class DinhNghiaBangLuongKhachHang extends lv.Categories.BaseController {
        IsLoad: boolean = false;
        strFilterT2: string = "";
        strFilterT3: string = "";
        onInit() {
            this.setFunctionID("HCSPR110");
            var me = this;
            this.registRes("Định nghĩa bảng lương bằng tay")
                .registRes("Title VN")
                .registRes("Title EN")
                .registRes("Content VN")
                .registRes("Content EN")
                .registRes("Ngày phát sinh")
                .registRes("Ghi chú khác")
                .registRes("Lọc nhân viên")
                .registRes("Xuất khẩu")
                .registRes("Nhập khẩu")
                .registRes("Lưu")
                .registRes("Tên Field")
                .registRes("Mô tả 1")
                .registRes("Mô tả 2")
                .registRes("Type")
                .registRes("Từ ngày")
                .registRes("Đến ngày")
                .registRes("Đọc dữ liệu")
                .registRes("Mã nhân viên")
                .registRes("Chi tiết")
                .registRes("Nhập thông tin lương")
                .registRes("Quản lý thông tin lương")
                .registRes("Quản lý thông tin lương theo nhân viên")
                .registRes("Payroll Template")
                .syncRes();
            me.setData("filteredEmployees", []);
            me.setData("dataFilterByTime", {
                FromTime: DateFormat.format.date(new Date(), "yyyy-MM-dd"),
                ToTime: DateFormat.format.date(new Date(), "yyyy-MM-dd")
            });
            me.setData("dataFilterByTimeAndEmpCode", {
                FromTime: DateFormat.format.date(new Date(), "yyyy-MM-dd"),
                ToTime: DateFormat.format.date(new Date(), "yyyy-MM-dd")
            });
            me.setData("dataMaster", {
                GenDate: DateFormat.format.date(new Date(), "yyyy-MM-dd")
            });
            me.setData("TabIndex", 1);
            me.onLoadCombobox();
            setTimeout(lv.utilities.checkRequied, 200);
            lvfilter.createEmployeeFilter(me, me.getFunctionID(), window.top["UserInfo"].UserName, "frmEmployeeFilter", "filteredEmployees");
        };

        onPressExportData = function () {
            var me = this;
            var template = me.getData("currentTemplate");
            var dataMaster = me.getData("dataMaster");
            lv.openExport(me, "ExportExcel.ashx?mode=dinhnghiabangluongkh"
                + "&funcID=" + me.getFunctionID()
                + "&templateID=" + dataMaster.TemplateID
                + "&UserID=" + window.top["UserInfo"].UserName
            );
        }

        /**Load Combobox*/
        onLoadCombobox() {
            var me = this;
            var cbb = new lv.combo.Combobox(me, "dataFilterByTimeAndEmpCode");
            cbb.selectionChange(function (res) {
                var data = me.getData("dataFilterByTimeAndEmpCode");
                data.EmployeeCode = res.EmployeeCode;
                me.setData("dataFilterByTimeAndEmpCode", data);
            })
            .create("HCSPR_Employees", "EmployeeCode", "cbbEmployeeCode");
            var cbb = new lv.combo.Combobox(me, "dataMaster");
            cbb.selectionChange(function (res) {
            })
            .create("HCSPR_CbbPrTemplate", "TemplateID", "cbbPayrollTemp");
        }

        /**Mở trang lọc nhân viên*/
        onPressFilter() {
            var functionID = this.getFunctionID();
            lvfilter.openEmployeeFilter();
        }

        /**Import*/
        onPressImportFiles() {
            var me = this;
            var strTbl = "HCSPR_CustomPayrollMasterDetail_tmp";
            var dataFilter = me.getData("dataMaster");
            var tableName = {
                "ParamName": "tableName",
                "ParamValue": strTbl
            };
            var userID = {
                "ParamName": "userID",
                "ParamValue": window.top["UserInfo"].UserName
            };
            var templateId = {
                "ParamName": "templateId",
                "ParamValue": dataFilter.TemplateID
            }
            var param = [];
            param.push(tableName);
            param.push(userID);
            param.push(templateId);
            lv.importExcel.importData(me, "LV.HCS.DataImport/LV.HCS.DataImport.SystemInfo/ImportExcelDinhNghiaBangLuongKhachHang", function () {
                me.onLoadData();
            }, param);
        }
        /**Save data*/
        onPressSaveData() {
            var me = this;
            var data = me.getData("dataMaster");

            if (!data.Title1) {
                lv.msg.error(me.getRes("Vui lòng nhập Title VN"));
                return;
            }
            if (!data.Content1) {
                lv.msg.error(me.getRes("Vui lòng nhập Content VN"));
                return;
            }
            if (!data.GenDate) {
                lv.msg.error(me.getRes("Vui lòng chọn Ngày phát sinh"));
                return;
            }
            data.CreatedBy = window.top["UserInfo"].UserName;
            me.loadData("HCSPR_CustomPayrollMaster")
                .filter("GenDate = @code AND TemplateID = @tempId")
                .params({
                    code: data.GenDate,
                    tempId: data.TemplateID
                })
                .done(function (res) {
                    if (res.data.length > 0) {
                        lv.msg.confirm(me.getRes("Dữ liệu sẽ bị ghi đè")).OK(function () {
                            me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                                .data({
                                    Source: "HCSPR_SPInsertDataPayrollMaster",
                                    Params: {
                                        idgendate: null,
                                        tempId: data.TemplateID,
                                        gendate: data.GenDate,
                                        titlevn: data.Title1,
                                        titleen: data.Title2,
                                        contentvn: data.Content1,
                                        contenten: data.Content2,
                                        note: data.Note,
                                        userid: window.top["UserInfo"].UserName
                                    }
                                }).done(function (evt) {
                                    lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                                })
                        });
                    } else {
                        me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                            .data({
                                Source: "HCSPR_SPInsertDataPayrollMaster",
                                Params: {
                                    idgendate: null,
                                    gendate: data.GenDate,
                                    tempId: data.TemplateID,
                                    titlevn: data.Title1,
                                    titleen: data.Title2,
                                    contentvn: data.Content1,
                                    contenten: data.Content2,
                                    note: data.Note,
                                    userid: window.top["UserInfo"].UserName
                                }
                            }).done(function (evt) {
                                lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                            })
                    }
                    
                });
        }
        /**Load data*/
        onLoadData = function () {
            var me = this;
            var dataFilter = me.getData("dataMaster");
            me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                .data({
                    Source: "HCSPR_SPLoadDataTempPayrollMasterDetail",
                    Params: {
                        userid: window.top["UserInfo"].UserName,
                        tempId: dataFilter.TemplateID
                    }
                }).done(function (evt) {
                    if (evt.data.Data.length > 0) {
                        me.setData("dataTableMaster", evt.data.Data);
                        me.onDrawTable("pgContainer", "dataTableMaster", dataFilter.TemplateID);
                    } else {
                        me.setData("dataTableMaster", []);
                    }
                })
        }

        // Vẽ table

        onDrawTable(idPage, dataMaster, tempID) {
            var me = this;
            var pgContainer = me.getCmpById<sap.m.ScrollContainer>(idPage);
            //Xóa tòan bộ UI table hiện có
            pgContainer["removeAllContent"]();
            var headerColumns = [];
            var tableCells = [];
            var data = me.getData(dataMaster);
            var PrefixTableName = data["TemplateType"];
            var ExcelTemplateID = data["TemplateID"];
            var table: sap.m.Table;
            me.loadData("HCSLS_CustomePayrollField")
                .filter("TemplateID = @code")
                .params({ code: tempID })
                .orders({ Ordinal: 1})
                .done(function (res) {
                    var idxTab = me.getData("TabIndex");
                    if (idxTab == 3) {
                        res.data.push({
                            "FieldName": "GenDate",
                            "Description1": "Ngày phát sinh",
                            "Description2": "Date incurred",
                            "Type": "DateTime"
                        })
                    }
                    $.each(res.data, function (idx, val) {
                        // lấy header
                        if (val["FieldName"] == "STT") {
                            let headercolumn = new sap.m.Column({
                                minScreenWidth: "Tablet",
                                visible: true,
                                width: "70px",
                                demandPopin: true,
                                hAlign: sap.ui.core.TextAlign.Left,
                                header: new sap.m.Text({
                                    text: val["Description1"] + "/" + val["Description2"]
                                })
                            });
                            headerColumns.push(headercolumn);
                        } else {
                            let headercolumn = new sap.m.Column({
                                minScreenWidth: "Tablet",
                                visible: true,
                                demandPopin: true,
                                hAlign: sap.ui.core.TextAlign.Left,
                                header: new sap.m.Text({
                                    text: val["Description1"] + "/" + val["Description2"]
                                })
                            });
                            headerColumns.push(headercolumn);
                        }
                        //Table cell
                        if (val["Type"] == 'float' || val["Type"] == 'double') {
                            let cell = new sap.m.Text({
                                path: "/",
                                text: "{path:'" + dataMaster + ">" + val.FieldName + "', formatter:'lv.formatTextNumber1'}"
                            });
                            tableCells.push(cell);
                        } else if (val["Type"] == 'DateTime'){
                            let cell = new sap.m.Text({
                                path: "/",
                                text: "{path:'" + dataMaster + ">" + val.FieldName + "', formatter:'lv.formatDate'}"
                            });
                            tableCells.push(cell);
                        } else {
                            let cell = new sap.m.Text({
                                path: "/",
                                text: "{" + dataMaster + ">" + val.FieldName + "}"
                            });
                            tableCells.push(cell);
                        }
                        //
                        if (res.data.length - 1 == idx) {
                            if (idxTab != 1) {
                                let headercolumn = new sap.m.Column({
                                    minScreenWidth: "Tablet",
                                    visible: true,
                                    width: "50px",
                                    demandPopin: true,
                                    hAlign: sap.ui.core.TextAlign.Left,
                                    header: new sap.m.Text({
                                        text: ""
                                    })
                                });
                                headerColumns.push(headercolumn);
                                //Table cell
                                let button = new sap.ui.commons.Button("", {
                                    icon: "sap-icon://detail-view"
                                });
                                button.addEventDelegate({
                                    onclick: function (oEvent) {
                                        var data = oEvent.srcControl.getBindingContext(dataMaster).getObject();
                                        if (idxTab == 2) {
                                            me.setData('DetailTab2DataMaster', data);
                                            var navConfig = me.getCmpById<sap.m.NavContainer>("navConfig");
                                            var page = me.getCmpById<sap.m.Page>("page2Detail");
                                            navConfig.to(page);
                                            me.onDrawForm('pgContainerDetailTab2', 'DetailTab2DataMaster', tempID);
                                        } else if (idxTab == 3) {
                                            me.setData('DetailTab3DataMaster', data);
                                            var navConfig = me.getCmpById<sap.m.NavContainer>("navConfigTab3");
                                            var page = me.getCmpById<sap.m.Page>("page3Detail");
                                            navConfig.to(page);
                                            me.onDrawForm('pgContainerDetailTab3', 'DetailTab3DataMaster', tempID);
                                        }
                                    }
                                });
                                tableCells.push(button);
                            }
                        }
                    }); // End foreach
                    //Xóa tòan bộ UI table hiện có
                    pgContainer["removeAllContent"]();
                    /////////////table header/////////////
                    var headerTable = new sap.m.Table({
                        columns: headerColumns
                    });
                    headerTable.setShowNoData(false);
                    /////////////table header/////////////
                    pgContainer.addContent(headerTable);
                    if (idxTab == 1) {
                        table = new sap.m.Table({
                            growing: true,
                            growingThreshold: 100,
                            growingScrollToLoad: true,
                            mode: sap.m.ListMode.None,
                            //selectionMode: sap.ui.table.SelectionMode.MultiToggle,
                            //selectionChange: function (oEvent) {
                            //    console.log(oEvent.getSource());
                            //    //me.onDeleteItem(oEvent);
                            //},
                            columns: headerColumns,
                            items: {
                                path: "" + dataMaster + ">/",

                                template: new sap.m.ColumnListItem({
                                    cells: tableCells
                                })
                            }
                        });
                    } else {
                        table = new sap.m.Table({
                            growing: true,
                            growingThreshold: 100,
                            growingScrollToLoad: true,
                            mode: sap.m.ListMode.MultiSelect,
                            //selectionMode: sap.ui.table.SelectionMode.MultiToggle,
                            //selectionChange: function (oEvent) {
                            //    console.log(oEvent.getSource());
                            //    //me.onDeleteItem(oEvent);
                            //},
                            columns: headerColumns,
                            items: {
                                path: "" + dataMaster + ">/",

                                template: new sap.m.ColumnListItem({
                                    cells: tableCells
                                })
                            }
                        });
                    }
                    table["attachSelect"](function (oEvent) {
                        me.setData("dataCheck", oEvent.getSource());
                    });
                    //table.addEventDelegate({
                    //    onclick: function (oEvent) {
                    //        var data = oEvent.srcControl.getBindingContext(dataMaster).getObject();
                    //        me.setData('DetailTab2DataMaster', data);
                    //        var navConfig = me.getCmpById<sap.m.NavContainer>("navConfig");
                    //        var page = me.getCmpById<sap.m.Page>("page2Detail");
                    //        page.setTitle("");
                    //        navConfig.to(page);
                    //        me.onDrawForm('pgContainerDetailTab2', 'DetailTab2DataMaster');
                    //    }
                    //});
                    setTimeout(function () {
                        var hContainer = $("#" + pgContainer.getId()).height();
                        var hHeader = $("#" + headerTable.getId()).height();
                        if (headerColumns.length <= 8) {
                            var scrContainer = new sap.m.ScrollContainer({
                                horizontal: false,
                                vertical: true,
                                focusable: false
                            });
                            scrContainer.addContent(table);
                            pgContainer.addContent(scrContainer);
                        }
                        else {
                            var scrContainer = new sap.m.ScrollContainer({
                                height: (hContainer - hHeader - 16) + "px",
                                width: (headerColumns.length * 116) + "px",
                                horizontal: false,
                                vertical: true,
                                focusable: false
                            });
                            scrContainer.addContent(table);
                            pgContainer.addContent(scrContainer);
                        }
                    }, 300);
                    
                })
        }

        /**Sự kiện khi thay đổi Tab*/
        onSelectTabChanged(oEvent) {
            var me = this;
            var key = oEvent.getParameters().key;
            me.setData("TabIndex", key);
            me.onLoadComboboxTab(key);
            setTimeout(lv.utilities.checkRequied, 100);
        }

        /**Load Combobox*/
        onLoadComboboxTab(key) {
            var me = this;
            if (key == 2) {
                var cbb = new lv.combo.Combobox(me, "dataFilterByTime");
                cbb.selectionChange(function (res) {
                })
                .create("HCSPR_CbbPrTemplate", "TemplateID", "cbbPayrollTempTab2");
            } else if (key == 3){
                var cbb = new lv.combo.Combobox(me, "dataFilterByTimeAndEmpCode");
                cbb.selectionChange(function (res) {
                })
                .create("HCSPR_CbbPrTemplate", "TemplateID", "cbbPayrollTempTab3");
            }
        }

        /**Vẽ form*/

        onDrawForm(idPage, dataMaster, tempID) {
            var me = this;
            var pgContainer = me.getCmpById<sap.m.ScrollContainer>(idPage);
            pgContainer["removeAllContent"]();
            var pageMain = new sap.m.Page();
            pageMain.setShowHeader(false);
            var layout = new sap.ui.layout.VerticalLayout("", {
                width: "100%",
                content: []
            });
            var form = new sap.ui.layout.form.Form({
                layout: new sap.ui.layout.form.ResponsiveGridLayout({
                    labelSpanL: 12,
                    emptySpanL: 0,
                    labelSpanM: 12,
                    emptySpanM: 0,
                    columnsL: 1,
                    columnsM: 1
                }),
                formContainers: []
            });
            var formContainer = new sap.ui.layout.form.FormContainer({
                formElements: []
            });

            me.loadData("HCSLS_CustomePayrollField")
                .filter("TemplateID = @code")
                .params({ code: tempID })
                .orders({ Ordinal: 1 })
                .done(function (res) {
                    $.each(res.data, function (idx, val) {
                        var formElement = new sap.ui.layout.form.FormElement({
                            label: val["Description1"] + "/" + val["Description2"],
                            fields: []
                        });
                        formElement.addField(new sap.m.Input({
                            path: "/",
                            value: "{" + dataMaster + ">/" + val.FieldName + "}"
                        }));
                        formContainer.addFormElement(formElement);
                    })
                    form.addFormContainer(formContainer);
                    layout.addContent(form);
                    setTimeout(function () {
                        var scrContainer = new sap.m.ScrollContainer({
                            horizontal: false,
                            vertical: true,
                            focusable: false
                        });
                        scrContainer.addContent(layout);
                        pgContainer.addContent(scrContainer);
                    }, 300);
                })

        }

        /**Đọc data từ ngày đến ngày*/
        onPressReadDataByTime() {
            var me = this;
            var data = me.getData("dataFilterByTime");
            if (!data.FromTime) {
                lv.msg.error(me.getRes("Vui lòng chọn Từ ngày"));
                return;
            }
            if (!data.ToTime) {
                lv.msg.error(me.getRes("Vui lòng chọn Đến ngày"));
                return;
            }
            if (!data.TemplateID) {
                lv.msg.error(me.getRes("Vui lòng chọn Payroll Template"));
                return;
            }
            me.loadData("(SELECT * " +
                "FROM HCSPR_CustomPayrollMaster " +
                "WHERE GenDate >= '" + data.FromTime + "' AND GenDate <= '" + data.ToTime + "' AND TemplateID = " + data.TemplateID + ") AS A")
                .done(function (res) {
                    me.setData("dataTab2LstGendate", res.data);
                })
        }

        /**Đọc data từ ngày đến ngày*/
        onPressReadDataByTimeAndEmpCode() {
            var me = this;
            var data = me.getData("dataFilterByTimeAndEmpCode");
            if (!data.FromTime) {
                lv.msg.error(me.getRes("Vui lòng chọn Từ ngày"));
                return;
            }
            if (!data.ToTime) {
                lv.msg.error(me.getRes("Vui lòng chọn Đến ngày"));
                return;
            }
            if (!data.EmployeeCode) {
                lv.msg.error(me.getRes("Vui lòng chọn Nhân viên"));
                return;
            }
            me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                .data({
                    Source: "HCSPR_SPLoadDataPayrollMasterDetailByTime",
                    Params: {
                        userid: window.top["UserInfo"].UserName,
                        idmaster: null,
                        templateid: data.TemplateID,
                        fromtime: data.FromTime,
                        totime: data.ToTime,
                        employeecode: data.EmployeeCode,
                        filter: me.strFilterT3 || null,
                        typefilter: 3
                    }
                }).done(function (evt) {
                    if (evt.data.Data.length > 0) {
                        me.setData("dataTableMasterTab3", evt.data.Data);
                        me.onDrawTable("pgContainerTab3", "dataTableMasterTab3", data.TemplateID);
                    } else {
                        me.setData("dataTableMasterTab3", []);
                    }
                })
        }
        /**Save item detail*/
        onPressSaveDataDetailTab2 = function () {
            var me = this;
            var data = me.getData('DetailTab2DataMaster');
            var dataGen = me.getData('dataGendate');
            var dataTime = me.getData("dataFilterByTime");
            var keys = Object.keys(data);
            var str = "";
            for (var i = 0; i < keys.length; i++) {
                str += keys[i] + ":" + data[keys[i]] + "$";
            }
            str = str.slice(0, -1);
            me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                .data({
                    Source: "HCSSYS_spUpdateDataPayrollMasterDetail",
                    Params: {
                        Str: str,
                        idmaster: dataGen.ID,
                        UserName: window.top["UserInfo"].UserName
                    }
                }).done(function (res) {
                    if (!res.data.Error) {
                        lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                        me.onShowDetailEmployee();
                        var navConfig = me.getCmpById("navConfig");
                        var page = me.getCmpById("page2DetailLstEmp");
                        navConfig.to(page);

                    } else {

                    }
                });
        }
        /**Sự kiện click item gendate*/
        onSelectTableItemLstGendate(oEvent) {
            var me = this;
            var selectItem = oEvent.getSource().getBindingContext("dataTab2LstGendate").getObject();
            me.setData("dataItemDetailGendate", selectItem);
            me.getCmpById<sap.m.Dialog>("dialogGendateDetail").open();
        }
        /**
         * 
         */
        doCancelDialogEdit() {
            this.getCmpById<sap.m.Dialog>("dialogGendateDetail").close();
        }
        /**
         * 
         */
        doSaveDialogDetailGendate() {
            var me = this;
            var dataF = me.getData("dataFilterByTime");
            var data = me.getData("dataItemDetailGendate");
            me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                .data({
                    Source: "HCSPR_SPInsertDataPayrollMaster",
                    Params: {
                        idgendate: data.ID,
                        gendate: data.GenDate,
                        tempId: dataF.TemplateID,
                        titlevn: data.Title1,
                        titleen: data.Title2,
                        contentvn: data.Content1,
                        contenten: data.Content2,
                        note: data.Note,
                        userid: window.top["UserInfo"].UserName
                    }
                }).done(function (evt) {
                    lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                    me.doCancelDialogEdit();
                    me.onPressReadDataByTime();
                })
        }

        onShowDetailEmployee(oEvent) {
            var me = this;
            var data = me.getData("dataFilterByTime");
            var emp;
            if (oEvent) {
                emp = oEvent.getSource().data("currentGendate");
            } else {
                emp = me.getData("dataGendate");
            }
            me.setData("dataGendate", emp);
            me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                .data({
                    Source: "HCSPR_SPLoadDataPayrollMasterDetailByTime",
                    Params: {
                        userid: window.top["UserInfo"].UserName,
                        idmaster: emp.ID,
                        templateid: data.TemplateID,
                        fromtime: null,
                        totime: null,
                        employeecode: null,
                        filter: me.strFilterT2 || null,
                        typefilter: 2
                    }
                }).done(function (evt) {
                    if (evt.data.Data.length > 0) {
                        me.setData("dataTableMasterTab2", evt.data.Data);
                        var navConfig = me.getCmpById<sap.m.NavContainer>("navConfig");
                        var page = me.getCmpById<sap.m.Page>("page2DetailLstEmp");
                        navConfig.to(page);
                        me.onDrawTable("pgContainerTab2", "dataTableMasterTab2", data.TemplateID);
                    } else {
                        me.setData("dataTableMasterTab2", []);
                        var navConfig = me.getCmpById<sap.m.NavContainer>("navConfig");
                        var page = me.getCmpById<sap.m.Page>("page2DetailLstEmp");
                        navConfig.to(page);
                        me.onDrawTable("pgContainerTab2", "dataTableMasterTab2", data.TemplateID);
                    }
                })
        }
        /**
         * Delete gendate tab 2
         */
        onPressDeleteDataTab2 = function () {
            var me = this;
            var data = me.getData("dataCheck");
            var dataGen = me.getData("dataGendate");
            var strEmpCode = "";
            if (data != null) {
                data = data.getSelectedItems();
                for (var i = 0; i < data.length; i++) {
                    strEmpCode += data[i].getBindingContext("dataTableMasterTab2").getObject()["ID"] + ",";
                }
                strEmpCode = strEmpCode.slice(0, -1);
            }
            lv.msg.confirm(me.getRes("Xóa dữ liệu được chọn")).OK(function () {
                me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                    .data({
                        Source: "HCSSYS_spDeleteDataPayrollMasterDetail",
                        Params: {
                            strId: strEmpCode,
                            parentId: dataGen.ID
                        }
                    }).done(function (evt) {
                        lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                        me.onShowDetailEmployee();
                    })
            })
        }

        /**Save item detail tab 3*/
        onPressSaveDataDetailTab3 = function () {
            var me = this;
            var data = me.getData('DetailTab3DataMaster');
            var dataGen = me.getData('dataGendate');
            var dataTime = me.getData("dataFilterByTime");
            var keys = Object.keys(data);
            var str = "";
            for (var i = 0; i < keys.length; i++) {
                str += keys[i] + ":" + data[keys[i]] + "$";
            }
            str = str.slice(0, -1);
            me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                .data({
                    Source: "HCSSYS_spUpdateDataPayrollMasterDetail",
                    Params: {
                        Str: str,
                        idmaster: null,
                        UserName: window.top["UserInfo"].UserName
                    }
                }).done(function (res) {
                    if (!res.data.Error) {
                        lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                        me.onPressReadDataByTimeAndEmpCode();
                        var navConfig = me.getCmpById("navConfigTab3");
                        var page = me.getCmpById("detailTab3");
                        navConfig.to(page);

                    } else {

                    }
                });
        }
        /**
         * Delete data tab 3
         */
        onPressDeleteDataTab3() {
            var me = this;
            var data = me.getData("dataCheck");
            var strEmpCode = "";
            if (data != null) {
                data = data.getSelectedItems();
                for (var i = 0; i < data.length; i++) {
                    strEmpCode += data[i].getBindingContext("dataTableMasterTab3").getObject()["ID"] + ",";
                }
                strEmpCode = strEmpCode.slice(0, -1);
            }
            lv.msg.confirm(me.getRes("Xóa dữ liệu được chọn")).OK(function () {
                me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                    .data({
                        Source: "HCSSYS_spDeleteDataPayrollMasterDetail",
                        Params: {
                            strId: strEmpCode,
                            parentId: null
                        }
                    }).done(function (evt) {
                        lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                        me.onPressReadDataByTimeAndEmpCode();
                    })
            })
        }
        /**
         * 
         */
        onNavBackPage() {
            var me = this;
            var navConfig = me.getCmpById<sap.m.NavContainer>("navConfig");
            var page = me.getCmpById<sap.m.Page>("page2Master");
            navConfig.to(page);
        }
        /**
         * 
         */
        onNavBackPageLstEmp() {
            var me = this;
            var navConfig = me.getCmpById<sap.m.NavContainer>("navConfig");
            var page = me.getCmpById<sap.m.Page>("page2DetailLstEmp");
            navConfig.to(page);
        }
        /**
         * 
         */
        onNavBackPage3() {
            var me = this;
            var navConfig = me.getCmpById<sap.m.NavContainer>("navConfigTab3");
            var page = me.getCmpById<sap.m.Page>("detailTab3");
            navConfig.to(page);
        }
        /**
         * 
         * @param oEvt
         */
        onSearchDataGenDateTab2(oEvt) {
            var aFilters = [];
            var sQuery = oEvt.getSource().getValue();
            if (sQuery && sQuery.length > 0) {
                var Title1 = new sap.ui.model.Filter("Title1", sap.ui.model.FilterOperator.Contains, sQuery);
                var Title2 = new sap.ui.model.Filter("Title2", sap.ui.model.FilterOperator.Contains, sQuery);
                var Content1 = new sap.ui.model.Filter("Content1", sap.ui.model.FilterOperator.Contains, sQuery);
                var Content2 = new sap.ui.model.Filter("Content2", sap.ui.model.FilterOperator.Contains, sQuery);
                var Note = new sap.ui.model.Filter("Note", sap.ui.model.FilterOperator.Contains, sQuery);
                var GenDate = new sap.ui.model.Filter("GenDate", sap.ui.model.FilterOperator.Contains, sQuery);
                var allFilter = new sap.ui.model.Filter([Title1, Title2, Content1, Content2, Note, GenDate], false);
            }
            this.getCmpById<sap.m.List>("tbLstGendate").getBinding("items")["filter"](allFilter, "Application");
        }
        /**
         * 
         * @param oEvt
         */
        doSearchLstEmpTab2(oEvt) {
            var me = this;
            var aFilters = [];
            var sQuery = oEvt.getSource().getValue();
            me.strFilterT2 = sQuery;
            me.onShowDetailEmployee(null);
        }
        /**
         * 
         * @param oEvt
         */
        doSearchLstEmpTab3(oEvt) {
            var me = this;
            var aFilters = [];
            var sQuery = oEvt.getSource().getValue();
            me.strFilterT3 = sQuery;
            me.onPressReadDataByTimeAndEmpCode();
        }
        /**
         * 
         */
        onPressExportDataEmpTab2() {
            var me = this;
            var data = me.getData("dataGendate");
            var dataFilter = me.getData("dataFilterByTime");
            lv.openExport(me, "ExportExcel.ashx?mode=dnbangluongbangtayTTL"
                + "&funcID=" + me.getFunctionID()
                + "&UserID=" + window.top["UserInfo"].UserName
                + "&TemplateID=" + dataFilter.TemplateID
                + "&ID=" + data.ID
                + "&FromTime=null" 
                + "&ToTime=null" 
                + "&EmployeeCode=null" 
                + "&Filter=null"
                + "&Tab=2"
            );
        }
        /**Import*/
        onPressImportFilesEmpTab2() {
            var me = this;
            var data = me.getData("dataGendate");
            var dataFilter = me.getData("dataFilterByTime");
            var strTbl = "HCSPR_CustomPayrollMasterDetail";
            var tableName = {
                "ParamName": "tableName",
                "ParamValue": strTbl
            };
            var userID = {
                "ParamName": "userName",
                "ParamValue": window.top["UserInfo"].UserName
            };
            var dataID = {
                "ParamName": "ID",
                "ParamValue": data.ID
            };
            var templateId = {
                "ParamName": "templateId",
                "ParamValue": dataFilter.TemplateID
            }
            var param = [];
            param.push(tableName);
            param.push(userID);
            param.push(dataID);
            param.push(templateId);
            lv.importExcel.importData(me, "LV.HCS.DataImport/LV.HCS.DataImport.SystemInfo/ImportExcelDNBLBTQuanLyThongTinLuong", function () {
                me.onShowDetailEmployee(null);
            }, param);
        }
        /**
         * 
         */
        onPressExportDataEmpTab3() {
            var me = this;
            var data = me.getData("dataFilterByTimeAndEmpCode");
            lv.openExport(me, "ExportExcel.ashx?mode=dnbangluongbangtayTTL"
                + "&funcID=" + me.getFunctionID()
                + "&UserID=" + window.top["UserInfo"].UserName
                + "&TemplateID=" + data.TemplateID
                + "&ID=null"
                + "&FromTime=" + data.FromTime 
                + "&ToTime=" + data.ToTime 
                + "&EmployeeCode=" + data.EmployeeCode
                + "&Filter=null"
                + "&Tab=3"
            );
        }
        /**Import*/
        onPressImportFilesEmpTab3() {
            var me = this;
            var dataTime = me.getData("dataFilterByTimeAndEmpCode");
            var strTbl = "HCSPR_CustomPayrollMasterDetail";
            var tableName = {
                "ParamName": "tableName",
                "ParamValue": strTbl
            };
            var userID = {
                "ParamName": "userName",
                "ParamValue": window.top["UserInfo"].UserName
            };
            var dataID = {
                "ParamName": "ID",
                "ParamValue": "null"
            };
            var fromTime = {
                "ParamName": "FromTime",
                "ParamValue": dataTime.FromTime
            };
            var toTime = {
                "ParamName": "ToTime",
                "ParamValue": dataTime.ToTime
            };
            var templateId = {
                "ParamName": "templateId",
                "ParamValue": dataTime.TemplateID
            }
            var param = [];
            param.push(tableName);
            param.push(userID);
            param.push(dataID);
            param.push(fromTime);
            param.push(toTime);
            param.push(templateId);
            lv.importExcel.importData(me, "LV.HCS.DataImport/LV.HCS.DataImport.SystemInfo/ImportExcelDNBLBTQuanLyThongTinLuong", function () {
                me.onPressReadDataByTimeAndEmpCode();
            }, param);
        }
        /**
         * 
         */
        onPressDeleteDataGenDateTab2() {
            var me = this;
            var lstDataView = me.getCmpById<sap.m.Table>("tbLstGendate");
            var selectItems = lstDataView.getSelectedContexts(true);
            var dataPost: lv.ISaveItemsDataPost = {};
            dataPost.deleteItems = [];
            var strId = "";
            $.each(selectItems, function (idx, val) {
                var obj = val.getObject();
                strId += obj.ID + ",";
                dataPost.deleteItems.push(obj);
            });
            strId = strId.slice(0, -1);
            lv.msg.confirm(me.getRes("Xóa dữ liệu được chọn")).OK(function () {
                me.call("LV.HCS.Core/LV.HCS.Core.Datasource/ExecStore")
                    .data({
                        Source: "HCSPR_spDeleteDataCustomPayrollMaster",
                        Params: {
                            strid: strId
                        }
                    }).done(function (evt) {
                        lv.msg.toast(window.top["sysLanRes"].LVMessageSaveOK.txtLVMessageSaveOK);
                        me.onPressReadDataByTime();
                    })
            })
        }
    }
    return new DinhNghiaBangLuongKhachHang();
});