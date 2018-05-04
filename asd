<li class="u02mtool" id="u02cmenu">
					<a href="#u02countrymenu" style="width: auto;
    font-size: 13px;
    line-height: 42px;
    color: #324b5c;
    display: inline-block;
    padding: 0 5px;
    margin-top: 19px;">
						<img src="http://localhost:8080/surehcs2/wp-content/uploads/2018/03/united-states.png">
					</a>
				</li>
        
        <ul class="portfolio_slider_wrap">


tdArr[idx++] = '<td data-field="' + column.field + '"';
						tdArr[idx++] = ' class="' + classes.join(' ') + '"';
						tdArr[idx++] = '>';
						tdArr[idx++] = Plugin.getObject(column.field, row);
						tdArr[idx++] = '<label class="m-checkbox">' +
									   '<input type="checkbox" checked="checked">' +
																		'Checked' +
																		'<span></span>'
																	'</label></td>';


























<script type="text/javascript">
    /**
 * @class mApp  Metronic App class
 */

var mApp = function() {

    /**
    * Initializes bootstrap tooltip
    */
    var initTooltip = function(el) {
        var skin = el.data('skin') ? 'm-tooltip--skin-' + el.data('skin') : '';
        var width = el.data('width') == 'auto' ? 'm-tooltop--auto-width' : '';
            
        el.tooltip({
            trigger: 'hover',
            template: '<div class="m-tooltip ' + skin + ' ' + width + ' tooltip" role="tooltip">\
                <div class="arrow"></div>\
                <div class="tooltip-inner"></div>\
            </div>'
        });
    }
    
    /**
    * Initializes bootstrap tooltips
    */
    var initTooltips = function() {
        // init bootstrap tooltips
        $('[data-toggle="m-tooltip"]').each(function() {
            initTooltip($(this));
        });
    }

    /**
    * Initializes bootstrap popover
    */
    var initPopover = function(el) {
        var skin = el.data('skin') ? 'm-popover--skin-' + el.data('skin') : '';
        var triggerValue = el.data('trigger') ? el.data('trigger') : 'hover';
            
        el.popover({
            trigger: triggerValue,
            template: '\
            <div class="m-popover ' + skin + ' popover" role="tooltip">\
                <div class="arrow"></div>\
                <h3 class="popover-header"></h3>\
                <div class="popover-body"></div>\
            </div>'
        });
    }

    /**
    * Initializes bootstrap popovers
    */
    var initPopovers = function() {
        // init bootstrap popover
        $('[data-toggle="m-popover"]').each(function() {
            initPopover($(this));
        });
    }

    /**
    * Initializes bootstrap file input
    */
    var initFileInput = function() {
        // init bootstrap popover
        $('.custom-file-input').on('change',function(){
            var fileName = $(this).val();
            $(this).next('.custom-file-control').addClass("selected").html(fileName);
        });
    }           

    /**
    * Initializes metronic portlet
    */
    var initPortlet = function(el, options) {
        // init portlet tools
        el.mPortlet(options);
    }

    /**
    * Initializes metronic portlets
    */
    var initPortlets = function() {
        // init portlet tools
        $('[data-portlet="true"]').each(function() {
            var el = $(this);

            if ( el.data('portlet-initialized') !== true ) {
                initPortlet(el, {});
                el.data('portlet-initialized', true);
            }
        });
    }

    /**
    * Initializes scrollable contents
    */
    var initScrollables = function() {
        $('[data-scrollable="true"]').each(function(){
            var maxHeight;
            var height;
            var el = $(this);

            if (mUtil.isInResponsiveRange('tablet-and-mobile')) {
                if (el.data('mobile-max-height')) {
                    maxHeight = el.data('mobile-max-height');
                } else {
                    maxHeight = el.data('max-height');
                }

                if (el.data('mobile-height')) {
                    height = el.data('mobile-height');
                } else {
                    height = el.data('height');
                }
            } else {
                maxHeight = el.data('max-height');
                height = el.data('max-height');
            }

            if (maxHeight) {
                el.css('max-height', maxHeight);
            }
            if (height) {
                el.css('height', height);
            }

            mApp.initScroller(el, {});
        });
    }

    /**
    * Initializes bootstrap alerts
    */
    var initAlerts = function() {
        // init bootstrap popover
        $('body').on('click', '[data-close=alert]', function() {
            $(this).closest('.alert').hide();
        });
    }

    /**
    * Initializes bootstrap collapse for Metronic's accordion feature
    */
    var initAccordions = function(el) {
       
    }

	var hideTouchWarning = function() {
		jQuery.event.special.touchstart = {
			setup: function(_, ns, handle) {
				if (typeof this === 'function')
					if (ns.includes('noPreventDefault')) {
						this.addEventListener('touchstart', handle, {passive: false});
					} else {
						this.addEventListener('touchstart', handle, {passive: true});
					}
			},
		};
		jQuery.event.special.touchmove = {
			setup: function(_, ns, handle) {
				if (typeof this === 'function')
					if (ns.includes('noPreventDefault')) {
						this.addEventListener('touchmove', handle, {passive: false});
					} else {
						this.addEventListener('touchmove', handle, {passive: true});
					}
			},
		};
		jQuery.event.special.wheel = {
			setup: function(_, ns, handle) {
				if (typeof this === 'function')
					if (ns.includes('noPreventDefault')) {
						this.addEventListener('wheel', handle, {passive: false});
					} else {
						this.addEventListener('wheel', handle, {passive: true});
					}
			},
		};
	};

    return {
        /**
        * Main class initializer
        */
        init: function() {
            mApp.initComponents();
        },

        /**
        * Initializes components
        */
        initComponents: function() {
            hideTouchWarning();
            initScrollables();
            initTooltips();
            initPopovers();
            initAlerts();
            initPortlets();
            initFileInput();
            initAccordions();
        },

        /**
        * 
        * @param {object} el jQuery element object
        */
        // wrJangoer function to scroll(focus) to an element
        initTooltips: function() {
            initTooltips();
        },

        /**
        * 
        * @param {object} el jQuery element object
        */
        // wrJangoer function to scroll(focus) to an element
        initTooltip: function(el) {
            initTooltip(el);
        },

        /**
        * 
        * @param {object} el jQuery element object
        */
        // wrJangoer function to scroll(focus) to an element
        initPopovers: function() {
            initPopovers();
        },

        /**
        * 
        * @param {object} el jQuery element object
        */
        // wrJangoer function to scroll(focus) to an element
        initPopover: function(el) {
            initPopover(el);
        },

        /**
        * 
        * @param {object} el jQuery element object
        */
        // function to init portlet
        initPortlet: function(el, options) {
            initPortlet(el, options);
        },

        /**
        * 
        * @param {object} el jQuery element object
        */
        // function to init portlets
        initPortlets: function() {
            initPortlets();
        },

        /**
        * Scrolls to an element with animation
        * @param {object} el jQuery element object
        * @param {number} offset Offset to element scroll position
        */
        scrollTo: function(el, offset) {
            var pos = (el && el.length > 0) ? el.offset().top : 0;
            pos = pos + (offset ? offset : 0);

            jQuery('html,body').animate({
                scrollTop: pos
            }, 'slow');
        },

        /**
        * Scrolls until element is centered in the viewport 
        * @param {object} el jQuery element object
        */
        // wrJangoer function to scroll(focus) to an element
        scrollToViewport: function(el) {
            var elOffset = el.offset().top;
            var elHeight = el.height();
            var windowHeight = mUtil.getViewPort().height;
            var offset = elOffset - ((windowHeight / 2) - (elHeight / 2));

            jQuery('html,body').animate({
                scrollTop: offset
            }, 'slow');
        },

        /**
        * Scrolls to the top of the page
        */
        // function to scroll to the top
        scrollTop: function() {
            mApp.scrollTo();
        },

        /**
        * Initializes scrollable content using mCustomScrollbar plugin
        * @param {object} el jQuery element object
        * @param {object} options mCustomScrollbar plugin options(refer: http://manos.malihu.gr/jquery-custom-content-scroller/)
        */
        initScroller: function(el, options) {
            if (mUtil.isMobileDevice()) {
                el.css('overflow', 'auto');
            } else {
                //el.mCustomScrollbar("destroy");
                el.mCustomScrollbar({
                    scrollInertia: 0,
                    autoDraggerLength: true,
                    autoHideScrollbar: true,
                    autoExpandScrollbar: false,
                    alwaysShowScrollbar: 0,
                    axis: el.data('axis') ? el.data('axis') : 'y',
                    mouseWheel: {
                        scrollAmount: 120,
                        preventDefault: true
                    },
                    setHeight: (options.height ? options.height : ''),
                    theme:"minimal-dark"
                });
            }           
        },

        /**
        * Destroys scrollable content's mCustomScrollbar plugin instance
        * @param {object} el jQuery element object
        */
        destroyScroller: function(el) {
            el.mCustomScrollbar("destroy");
        },

        /**
        * Shows bootstrap alert
        * @param {object} options
        * @returns {string} ID attribute of the created alert
        */
        alert: function(options) {
            options = $.extend(true, {
                container: "", // alerts parent container(by default placed after the page breadcrumbs)
                place: "append", // "append" or "prepend" in container 
                type: 'success', // alert's type
                message: "", // alert's message
                close: true, // make alert closable
                reset: true, // close all previouse alerts first
                focus: true, // auto scroll to the alert after shown
                closeInSeconds: 0, // auto close after defined seconds
                icon: "" // put icon before the message
            }, options);

            var id = mUtil.getUniqueID("App_alert");

            var html = '<div id="' + id + '" class="custom-alerts alert alert-' + options.type + ' fade in">' + (options.close ? '<button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>' : '') + (options.icon !== "" ? '<i class="fa-lg fa fa-' + options.icon + '"></i>  ' : '') + options.message + '</div>';

            if (options.reset) {
                $('.custom-alerts').remove();
            }

            if (!options.container) {
                if ($('.page-fixed-main-content').size() === 1) {
                    $('.page-fixed-main-content').prepend(html);
                } else if (($('body').hasClass("page-container-bg-solid") || $('body').hasClass("page-content-white")) && $('.page-head').size() === 0) {
                    $('.page-title').after(html);
                } else {
                    if ($('.page-bar').size() > 0) {
                        $('.page-bar').after(html);
                    } else {
                        $('.page-breadcrumb, .breadcrumbs').after(html);
                    }
                }
            } else {
                if (options.place == "append") {
                    $(options.container).append(html);
                } else {
                    $(options.container).prepend(html);
                }
            }

            if (options.focus) {
                mApp.scrollTo($('#' + id));
            }

            if (options.closeInSeconds > 0) {
                setTimeout(function() {
                    $('#' + id).remove();
                }, options.closeInSeconds * 1000);
            }

            return id;
        },

        /**
        * Blocks element with loading indiciator using http://malsup.com/jquery/block/
        * @param {object} target jQuery element object
        * @param {object} options 
        */
        block: function(target, options) {
            var el = $(target);

            options = $.extend(true, {
                opacity: 0.03,
                overlayColor: '#000000',
                state: 'brand',
                type: 'loader',
                size: 'lg',
                centerX: true,
                centerY: true,
                message: '',
                shadow: true,
                width: 'auto'
            }, options);

            var skin;
            var state;
            var loading;

            if (options.type == 'spinner') {
                skin = options.skin ? 'm-spinner--skin-' + options.skin : '';
                state = options.state ? 'm-spinner--' + options.state : '';
                loading = '<div class="m-spinner ' + skin + ' ' + state + '"></div';
            } else {
                skin = options.skin ? 'm-loader--skin-' + options.skin : '';
                state = options.state ? 'm-loader--' + options.state : '';
                size = options.size ? 'm-loader--' + options.size : '';
                loading = '<div class="m-loader ' + skin + ' ' + state + ' ' + size + '"></div';
            }

            if (options.message && options.message.length > 0) {
                var classes = 'm-blockui ' + (options.shadow === false ? 'm-blockui-no-shadow' : '');

                html = '<div class="' + classes + '"><span>' + options.message + '</span><span>' + loading + '</span></div>';
                options.width = mUtil.realWidth(html) + 10;
                if (target == 'body') {
                    html = '<div class="' + classes + '" style="margin-left:-'+ (options.width / 2) +'px;"><span>' + options.message + '</span><span>' + loading + '</span></div>';
                }
            } else {
                html = loading;
            }

            var params = {
                message: html,
                centerY: options.centerY,
                centerX: options.centerX,
                css: {
                    top: '30%',
                    left: '50%',
                    border: '0',
                    padding: '0',
                    backgroundColor: 'none',
                    width: options.width
                },
                overlayCSS: {
                    backgroundColor: options.overlayColor,
                    opacity: options.opacity,
                    cursor: 'wait',
                    zIndex: '10'
                },
                onUnblock: function() {
                    if (el) {
                        el.css('position', '');
                        el.css('zoom', '');
                    }                    
                }
            };

            if (target == 'body') {
                params.css.top = '50%';
                $.blockUI(params);
            } else {
                var el = $(target);
                el.block(params);
            }
        },

        /**
        * Un-blocks the blocked element 
        * @param {object} target jQuery element object
        */
        unblock: function(target) {
            if (target && target != 'body') {
                $(target).unblock();
            } else {
                $.unblockUI();
            }
        },

        /**
        * Blocks the page body element with loading indicator
        * @param {object} options 
        */
        blockPage: function(options) {
            return mApp.block('body', options);
        },

        /**
        * Un-blocks the blocked page body element
        */
        unblockPage: function() {
            return mApp.unblock('body');
        },

        /**
        * Enable loader progress for button and other elements
        * @param {object} target jQuery element object
        * @param {object} options
        */
        progress: function(target, options) {
            var skin = (options && options.skin) ? options.skin : 'light';
            var alignment = (options && options.alignment) ? options.alignment : 'right'; 
            var size = (options && options.size) ? 'm-spinner--' + options.size : ''; 
            var classes = 'm-loader ' + 'm-loader--' + skin + ' m-loader--' + alignment + ' m-loader--' + size;

            mApp.unprogress(target);
            
            $(target).addClass(classes);
            $(target).data('progress-classes', classes);
        },

        /**
        * Disable loader progress for button and other elements
        * @param {object} target jQuery element object
        */
        unprogress: function(target) {
            $(target).removeClass($(target).data('progress-classes'));
        }
    };
}();

//== Initialize mApp class on document ready
$(document).ready(function() {
    mApp.init();
});
/**
 * @class mUtil  Metronic base utilize class that privides helper functions
 */

var mUtil = function() {
    var resizeHandlers = [];

    /** @type {object} breakpoints The device width breakpoints **/
    var breakpoints = {        
        sm: 544, // Small screen / phone           
        md: 768, // Medium screen / tablet            
        lg: 992, // Large screen / desktop        
        xl: 1200 // Extra large screen / wide desktop
    };

    /** @type {object} colors State colors **/
    var colors = {
        brand:      '#716aca',
        metal:      '#c4c5d6',
        light:      '#ffffff',
        accent:     '#00c5dc',
        primary:    '#5867dd',
        success:    '#34bfa3',
        info:       '#36a3f7',
        warning:    '#ffb822',
        danger:     '#f4516c'
    };

    /**
    * Handle window resize event with some 
    * delay to attach event handlers upon resize complete 
    */
    var _windowResizeHandler = function() {
        var resize;
        var _runResizeHandlers = function() {
            // reinitialize other subscribed elements
            for (var i = 0; i < resizeHandlers.length; i++) {
                var each = resizeHandlers[i];
                each.call();
            }
        };

        jQuery(window).resize(function() {
            if (resize) {
                clearTimeout(resize);
            }
            resize = setTimeout(function() {
                _runResizeHandlers();
            }, 250); // wait 50ms until window resize finishes.
        });
    };

    return {
        /**
        * Class main initializer.
        * @param {object} options.
        * @returns null
        */
        //main function to initiate the theme
        init: function(options) {
            if (options && options.breakpoints) {
                breakpoints = options.breakpoints;
            }

            if (options && options.colors) {
                colors = options.colors;
            }

            _windowResizeHandler();
        },

        /**
        * Adds window resize event handler.
        * @param {function} callback function.
        */
        addResizeHandler: function(callback) {
            resizeHandlers.push(callback);
        },

        /**
        * Trigger window resize handlers.
        */
        runResizeHandlers: function() {
            _runResizeHandlers();
        },        

        /**
        * Get GET parameter value from URL.
        * @param {string} paramName Parameter name.
        * @returns {string}  
        */
        getURLParam: function(paramName) {
            var searchString = window.location.search.substring(1),
                i, val, params = searchString.split("&");

            for (i = 0; i < params.length; i++) {
                val = params[i].split("=");
                if (val[0] == paramName) {
                    return unescape(val[1]);
                }
            }

            return null;
        },

        /**
        * Checks whether current device is mobile touch.
        * @returns {boolean}  
        */
        isMobileDevice: function() {
            return (this.getViewPort().width < this.getBreakpoint('lg') ? true : false);
        },

        /**
        * Checks whether current device is desktop.
        * @returns {boolean}  
        */
        isDesktopDevice: function() {
            return mUtil.isMobileDevice() ? false : true;
        },

        /**
        * Gets browser window viewport size. Ref: http://andylangton.co.uk/articles/javascript/get-viewport-size-javascript/
        * @returns {object}  
        */
        getViewPort: function() {
            var e = window,
                a = 'inner';
            if (!('innerWidth' in window)) {
                a = 'client';
                e = document.documentElement || document.body;
            }

            return {
                width: e[a + 'Width'],
                height: e[a + 'Height']
            };
        },

        /**
        * Checks whether given device mode is currently activated.
        * @param {string} mode Responsive mode name(e.g: desktop, desktop-and-tablet, tablet, tablet-and-mobile, mobile)
        * @returns {boolean}  
        */
        isInResponsiveRange: function(mode) {
            var breakpoint = this.getViewPort().width;

            if (mode == 'general') {
                return true;
            } else if (mode == 'desktop' && breakpoint >= (this.getBreakpoint('lg') + 1)) {
                return true;
            } else if (mode == 'tablet' && (breakpoint >= (this.getBreakpoint('md') + 1) && breakpoint < this.getBreakpoint('lg'))) {
                return true;
            } else if (mode == 'mobile' && breakpoint <= this.getBreakpoint('md')) {
                return true;
            } else if (mode == 'desktop-and-tablet' && breakpoint >= (this.getBreakpoint('md') + 1)) {
                return true;
            } else if (mode == 'tablet-and-mobile' && breakpoint <= this.getBreakpoint('lg')) {
                return true;
            } else if (mode == 'minimal-desktop-and-below' && breakpoint <= this.getBreakpoint('xl')) {
                return true;
            }

            return false;
        },

        /**
        * Generates unique ID for give prefix.
        * @param {string} prefix Prefix for generated ID
        * @returns {boolean}  
        */
        getUniqueID: function(prefix) {
            return prefix + Math.floor(Math.random() * (new Date()).getTime());
        },

        /**
        * Gets window width for give breakpoint mode.
        * @param {string} mode Responsive mode name(e.g: xl, lg, md, sm)
        * @returns {number}  
        */
        getBreakpoint: function(mode) {
            if ($.inArray(mode, breakpoints)) {
                return breakpoints[mode];
            }
        },

        /**
        * Checks whether object has property matchs given key path.
        * @param {object} obj Object contains values paired with given key path
        * @param {string} keys Keys path seperated with dots
        * @returns {object}  
        */
        isset: function(obj, keys) {
            var stone;

            keys = keys || '';

            if (keys.indexOf('[') !== -1) {
                throw new Error('Unsupported object path notation.');
            }

            keys = keys.split('.');

            do {
                if (obj === undefined) {
                    return false;
                }

                stone = keys.shift();

                if (!obj.hasOwnProperty(stone)) {
                    return false;
                }

                obj = obj[stone];

            } while (keys.length);

            return true;
        },

        /**
        * Gets highest z-index of the given element parents
        * @param {object} el jQuery element object
        * @returns {number}  
        */
        getHighestZindex: function(el) {
            var elem = $(el),
                position, value;

            while (elem.length && elem[0] !== document) {
                // Ignore z-index if position is set to a value where z-index is ignored by the browser
                // This makes behavior of this function consistent across browsers
                // WebKit always returns auto if the element is positioned
                position = elem.css("position");

                if (position === "absolute" || position === "relative" || position === "fixed") {
                    // IE returns 0 when zIndex is not specified
                    // other browsers return a string
                    // we ignore the case of nested elements with an explicit value of 0
                    // <div style="z-index: -10;"><div style="z-index: 0;"></div></div>
                    value = parseInt(elem.css("zIndex"), 10);
                    if (!isNaN(value) && value !== 0) {
                        return value;
                    }
                }
                elem = elem.parent();
            }
        },

        /**
        * Checks whether the element has given classes
        * @param {object} el jQuery element object
        * @param {string} Classes string
        * @returns {boolean}  
        */
        hasClasses: function(el, classes) {
            var classesArr = classes.split(" ");

            for ( var i = 0; i < classesArr.length; i++ ) {
                if ( el.hasClass( classesArr[i] ) == false ) {
                    return false;
                }
            }                

            return true;
        },

        /**
        * Gets element actual/real width
        * @param {object} el jQuery element object
        * @returns {number}  
        */
        realWidth: function(el){
            var clone = $(el).clone();
            clone.css("visibility","hidden");
            clone.css('overflow', 'hidden');
            clone.css("height","0");
            $('body').append(clone);
            var width = clone.outerWidth();
            clone.remove();

            return width;
        },

        /**
        * Checks whether the element has any parent with fixed position
        * @param {object} el jQuery element object
        * @returns {boolean}  
        */
        hasFixedPositionedParent: function(el) {
            var result = false;
            
            el.parents().each(function () {
                if ($(this).css('position') == 'fixed') {
                    result = true;
                    return;
                }
            });

            return result;
        },

        /**
        * Simulates delay
        */
        sleep: function(milliseconds) {
            var start = new Date().getTime();
            for (var i = 0; i < 1e7; i++) {
                if ((new Date().getTime() - start) > milliseconds){
                    break;
                }
            }
        },

        /**
        * Gets randomly generated integer value within given min and max range
        * @param {number} min Range start value
        * @param {number} min Range end value
        * @returns {number}  
        */
        getRandomInt: function(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        },

        /**
        * Gets state color's hex code by color name
        * @param {string} name Color name
        * @returns {string}  
        */
        getColor: function(name) {
            return colors[name];
        },

        /**
        * Checks whether Angular library is included
        * @returns {boolean}  
        */
        isAngularVersion: function() {
            return window.Zone !== undefined  ? true : false;
        }
    }
}();

//== Initialize mUtil class on document ready
$(document).ready(function() {
    mUtil.init();
});
(function($) {

	if (typeof mUtil === 'undefined') throw new Error('mUtil is required and must be included before mDatatable.');

	// plugin setup
	$.fn.mDatatable = function(options) {
		if ($(this).length === 0) throw new Error('No mDatatable element exist.');

		// global variables
		var datatable = this;

		// debug enabled?
		// 1) state will be cleared on each refresh
		// 2) enable some logs
		// 3) etc.
		datatable.debug = false;

		datatable.API = {
			record: null,
			value: null,
			params: null,
		};

		var Plugin = {
			/********************
			 ** PRIVATE METHODS
			 ********************/
			isInit: false,
			offset: 110,
			stateId: 'meta',
			ajaxParams: {},

			init: function(options) {
				Plugin.setupBaseDOM.call();
				Plugin.setupDOM(datatable.table);
				Plugin.spinnerCallback(true);

				// set custom query from options
				Plugin.setDataSourceQuery(Plugin.getOption('data.source.read.params.query'));

				// on event after layout had done setup, show datatable
				$(datatable).on('m-datatable--on-layout-updated', Plugin.afterRender);

				if (datatable.debug) Plugin.stateRemove(Plugin.stateId);

				// initialize extensions
				$.each(Plugin.getOption('extensions'), function(extName, extOptions) {
					if (typeof $.fn.mDatatable[extName] === 'function')
						new $.fn.mDatatable[extName](datatable, extOptions);
				});

				// get data
				if (options.data.type === 'remote' || options.data.type === 'local') {
					if (options.data.saveState === false
						|| options.data.saveState.cookie === false
						&& options.data.saveState.webstorage === false) {
						Plugin.stateRemove(Plugin.stateId);
					}
					// get data for local
					if (options.data.type === 'local' &&
						typeof options.data.source === 'object') {
						if (options.data.source === null) {
							// this is html table
							Plugin.extractTable();
						}
						datatable.dataSet = datatable.originalDataSet = Plugin.dataMapCallback(options.data.source);
					}
					Plugin.dataRender();
				}

				Plugin.setHeadTitle.call();
				Plugin.setHeadTitle.call(this, datatable.tableFoot);

				// for normal table, setup layout right away
				if (options.data.type === null) {
					Plugin.setupCellField.call();
					Plugin.setupTemplateCell.call();
					// setup extra system column properties
					Plugin.setupSystemColumn.call();
				}

				// hide header
				if (typeof options.layout.header !== 'undefined' &&
					options.layout.header === false) {
					$(datatable.table).find('thead').remove();
				}

				// hide footer
				if (typeof options.layout.footer !== 'undefined' &&
					options.layout.footer === false) {
					$(datatable.table).find('tfoot').remove();
				}

				// for normal and local data type, run layoutUpdate
				if (options.data.type === null ||
					options.data.type === 'local') {
					// setup nested datatable, if option enabled
					Plugin.setupSubDatatable.call();
					// setup extra system column properties
					Plugin.setupSystemColumn.call();
					Plugin.redraw();
				}

				$(window).resize(Plugin.fullRender);

				$(datatable).height('');

				$(Plugin.getOption('search.input')).on('keyup', function(e) {
					if (Plugin.getOption('search.onEnter') && e.which !== 13) return;
					Plugin.search($(this).val().toLowerCase());
				});

				return datatable;
			},

			/**
			 * Extract static HTML table content into datasource
			 */
			extractTable: function() {
				var columns = [];
				var headers = $(datatable).
					find('tr:first-child th').
					get().
					map(function(cell, i) {
						var field = $(cell).data('field');
						if (typeof field === 'undefined') {
							field = $(cell).text().trim();
						}
						var column = {field: field, title: field};
						for (var ii in options.columns) {
							if (options.columns[ii].field === field) {
								column = $.extend(true, {}, options.columns[ii], column);
							}
						}
						columns.push(column);
						return field;
					});
				// auto create columns config
				options.columns = columns;

				var data = $(datatable).find('tr').get().map(function(row) {
					return $(row).find('td').get().map(function(cell, i) {
						return $(cell).html();
					});
				});
				var source = [];
				$.each(data, function(i, row) {
					if (row.length === 0) return;
					var td = {};
					$.each(row, function(index, value) {
						td[headers[index]] = value;
					});
					source.push(td);
				});
				options.data.source = source;
			},

			/**
			 * One time layout update on init
			 */
			layoutUpdate: function() {
				// setup nested datatable, if option enabled
				Plugin.setupSubDatatable.call();

				// setup extra system column properties
				Plugin.setupSystemColumn.call();

				Plugin.columnHide.call();

				Plugin.sorting.call();

				// setup cell hover event
				Plugin.setupHover.call();

				if (typeof options.detail === 'undefined'
					// temporary disable lock column in subtable
					&& Plugin.getDepth() === 1) {
					// lock columns handler
					Plugin.lockTable.call();
				}

				if (!Plugin.isInit) {
					$(datatable).trigger('m-datatable--on-init', {table: $(datatable.wrap).attr('id'), options: options});
					Plugin.isInit = true;
				}

				$(datatable).trigger('m-datatable--on-layout-updated', {table: $(datatable.wrap).attr('id')});
			},

			lockTable: function() {
				// todo; revise lock table responsive
				var lock = {
					lockEnabled: false,
					init: function() {
						// check if table should be locked columns
						lock.lockEnabled = Plugin.lockEnabledColumns();
						if (lock.lockEnabled.left.length === 0 &&
							lock.lockEnabled.right.length === 0) {
							return;
						}
						lock.enable();
					},
					enable: function() {
						var enableLock = function(tablePart) {
							// check if already has lock column
							if ($(tablePart).find('.m-datatable__lock').length > 0) {
								Plugin.log('Locked container already exist in: ', tablePart);
								return;
							}
							// check if no rows exists
							if ($(tablePart).find('.m-datatable__row').length === 0) {
								Plugin.log('No row exist in: ', tablePart);
								return;
							}

							// locked div container
							var lockLeft = $('<div/>').
								addClass('m-datatable__lock m-datatable__lock--left');
							var lockScroll = $('<div/>').
								addClass('m-datatable__lock m-datatable__lock--scroll');
							var lockRight = $('<div/>').
								addClass('m-datatable__lock m-datatable__lock--right');

							$(tablePart).find('.m-datatable__row').each(function() {
								var rowLeft = $('<tr/>').
									addClass('m-datatable__row').
									appendTo(lockLeft);
								var rowScroll = $('<tr/>').
									addClass('m-datatable__row').
									appendTo(lockScroll);
								var rowRight = $('<tr/>').
									addClass('m-datatable__row').
									appendTo(lockRight);
								$(this).find('.m-datatable__cell').each(function() {
									var locked = $(this).data('locked');
									if (typeof locked !== 'undefined') {
										if (typeof locked.left !== 'undefined' || locked === true) {
											// default locked to left
											$(this).appendTo(rowLeft);
										}
										if (typeof locked.right !== 'undefined') {
											$(this).appendTo(rowRight);
										}
									} else {
										$(this).appendTo(rowScroll);
									}
								});
								// remove old row
								$(this).remove();
							});

							if (lock.lockEnabled.left.length > 0) {
								$(datatable.wrap).addClass('m-datatable--lock');
								$(lockLeft).appendTo(tablePart);
							}
							if (lock.lockEnabled.left.length > 0 || lock.lockEnabled.right.length > 0) {
								$(lockScroll).appendTo(tablePart);
							}
							if (lock.lockEnabled.right.length > 0) {
								$(datatable.wrap).addClass('m-datatable--lock');
								$(lockRight).appendTo(tablePart);
							}
						};

						$(datatable.table).find('thead,tbody,tfoot').each(function() {
							var tablePart = this;
							if ($(this).find('.m-datatable__lock').length === 0) {
								$(this).ready(function() {
									enableLock(tablePart);
								});
							}
						});
					},
				};
				lock.init();
				return lock;
			},

			/**
			 * Render everything for resize
			 */
			fullRender: function() {
				// todo; full render datatable for specific condition only
				Plugin.spinnerCallback(true);
				$(datatable.wrap).removeClass('m-datatable--loaded');

				var lockEnabled = Plugin.lockEnabledColumns();
				if (lockEnabled.left.length === 0 &&
					lockEnabled.right.length === 0 && Plugin.isLocked()) {
					// reset locked table head if not meet the requirements
					$(datatable.tableHead).empty();
					Plugin.setHeadTitle();
					if (typeof datatable.tableFoot !== 'undefined') {
						$(datatable.tableFoot).empty();
						Plugin.setHeadTitle(datatable.tableFoot);
					}
				}

				Plugin.insertData();
			},

			lockEnabledColumns: function() {
				var screen = $(window).width();
				var columns = options.columns;
				var enabled = {left: [], right: []};
				$.each(columns, function(i, column) {
					if (typeof column.locked !== 'undefined') {
						if (typeof column.locked.left !== 'undefined') {
							if (mUtil.getBreakpoint(column.locked.left) <= screen) {
								enabled['left'].push(column.locked.left);
							}
						}
						if (typeof column.locked.right !== 'undefined') {
							if (mUtil.getBreakpoint(column.locked.right) <= screen) {
								enabled['right'].push(column.locked.right);
							}
						}
					}
				});
				return enabled;
			},

			/**
			 * After render event, called by m-datatable--on-layout-updated
			 * @param e
			 * @param args
			 */
			afterRender: function(e, args) {
				if (args.table == $(datatable.wrap).attr('id')) {
					if (!Plugin.isLocked()) {
						Plugin.redraw();
						// work on non locked columns
						if (Plugin.getOption('rows.autoHide')) {
							Plugin.autoHide();
							// reset r
							$(datatable.table).find('.m-datatable__row').css('height', '');
						}
					}
					$(datatable).ready(function() {
						// row even class
						$(datatable.tableBody).find('.m-datatable__row').removeClass('m-datatable__row--even');
						if ($(datatable.wrap).hasClass('m-datatable--subtable')) {
							$(datatable.tableBody).find('.m-datatable__row:not(.m-datatable__row-detail):even').addClass('m-datatable__row--even');
						} else {
							$(datatable.tableBody).find('.m-datatable__row:nth-child(even)').addClass('m-datatable__row--even');
						}

						// redraw locked columns table
						if (Plugin.isLocked()) Plugin.redraw();
						$(datatable.tableBody).css('visibility', '');
						$(datatable.wrap).addClass('m-datatable--loaded');
						Plugin.scrollbar.call();
						// Plugin.hoverColumn.call();
						Plugin.spinnerCallback(false);
					});
				}
			},

			hoverTimer: 0,
			isScrolling: false,
			setupHover: function() {
				$(window).scroll(function(e) {
					// stop hover when scrolling
					clearTimeout(Plugin.hoverTimer);
					Plugin.isScrolling = true;
				});

				$(datatable.tableBody).
					find('.m-datatable__cell').
					off('mouseenter', 'mouseleave').
					on('mouseenter', function() {
						// reset scroll timer to hover class
						Plugin.hoverTimer = setTimeout(function() {
							Plugin.isScrolling = false;
						}, 200);
						if (Plugin.isScrolling) return;

						// normal table
						var row = $(this).
							closest('.m-datatable__row').
							addClass('m-datatable__row--hover');
						var index = $(row).index() + 1;

						// lock table
						$(row).
							closest('.m-datatable__lock').
							parent().
							find('.m-datatable__row:nth-child(' + index + ')').
							addClass('m-datatable__row--hover');
					}).
					on('mouseleave', function() {
						// normal table
						var row = $(this).
							closest('.m-datatable__row').
							removeClass('m-datatable__row--hover');
						var index = $(row).index() + 1;

						// look table
						$(row).
							closest('.m-datatable__lock').
							parent().
							find('.m-datatable__row:nth-child(' + index + ')').
							removeClass('m-datatable__row--hover');
					});
			},

			/**
			 * Adjust width of locked table containers by resize handler
			 * @returns {number}
			 */
			adjustLockContainer: function() {
				if (!Plugin.isLocked()) return 0;

				// refer to head dimension
				var containerWidth = $(datatable.tableHead).width();
				var lockLeft = $(datatable.tableHead).
					find('.m-datatable__lock--left').
					width();
				var lockRight = $(datatable.tableHead).
					find('.m-datatable__lock--right').
					width();

				if (typeof lockLeft === 'undefined') lockLeft = 0;
				if (typeof lockRight === 'undefined') lockRight = 0;

				var lockScroll = Math.floor(containerWidth - lockLeft - lockRight);
				$(datatable.table).
					find('.m-datatable__lock--scroll').
					css('width', lockScroll);

				return lockScroll;
			},

			/**
			 * todo; not in use
			 */
			dragResize: function() {
				var pressed = false;
				var start = undefined;
				var startX, startWidth;
				$(datatable.tableHead).
					find('.m-datatable__cell').
					mousedown(function(e) {
						start = $(this);
						pressed = true;
						startX = e.pageX;
						startWidth = $(this).width();
						$(start).addClass('m-datatable__cell--resizing');

					}).
					mousemove(function(e) {
						if (pressed) {
							var i = $(start).index();
							var tableBody = $(datatable.tableBody);
							var ifLocked = $(start).closest('.m-datatable__lock');

							if (ifLocked) {
								var lockedIndex = $(ifLocked).index();
								tableBody = $(datatable.tableBody).
									find('.m-datatable__lock').
									eq(lockedIndex);
							}

							$(tableBody).find('.m-datatable__row').each(function(tri, tr) {
								$(tr).
									find('.m-datatable__cell').
									eq(i).
									width(startWidth + (e.pageX - startX)).
									children().
									width(startWidth + (e.pageX - startX));
							});

							$(start).children().css('width', startWidth + (e.pageX - startX));
						}

					}).
					mouseup(function() {
						$(start).removeClass('m-datatable__cell--resizing');
						pressed = false;
					});

				$(document).mouseup(function() {
					$(start).removeClass('m-datatable__cell--resizing');
					pressed = false;
				});
			},

			/**
			 * To prepare placeholder for table before content is loading
			 */
			initHeight: function() {
				if (options.layout.height && options.layout.scroll) {
					var theadHeight = $(datatable.tableHead).find('.m-datatable__row').height();
					var tfootHeight = $(datatable.tableFoot).find('.m-datatable__row').height();
					var bodyHeight = options.layout.height;
					if (theadHeight > 0) {
						bodyHeight -= theadHeight;
					}
					if (tfootHeight > 0) {
						bodyHeight -= tfootHeight;
					}
					$(datatable.tableBody).css('max-height', bodyHeight);
				}
			},

			/**
			 * Setup base DOM (table, thead, tbody, tfoot) and create if not exist.
			 */
			setupBaseDOM: function() {
				// keep original state before mDatatable initialize
				datatable.initialDatatable = $(datatable).clone();

				// main element
				if ($(datatable).prop('tagName') === 'TABLE') {
					// if main init element is <table>, wrap with div
					datatable.table = $(datatable).
						removeClass('m-datatable').
						addClass('m-datatable__table');
					if ($(datatable.table).parents('.m-datatable').length === 0) {
						datatable.table.wrap($('<div/>').
							addClass('m-datatable').
							addClass('m-datatable--' + options.layout.theme));
						datatable.wrap = $(datatable.table).parent();
					}
				} else {
					// create table
					datatable.wrap = $(datatable).
						addClass('m-datatable').
						addClass('m-datatable--' + options.layout.theme);
					datatable.table = $('<table/>').
						addClass('m-datatable__table').
						appendTo(datatable);
				}

				if (typeof options.layout.class !== 'undefined') {
					$(datatable.wrap).addClass(options.layout.class);
				}

				$(datatable.table).
					removeClass('m-datatable--destroyed').
					css('display', 'block');

				// force disable save state
				if (typeof $(datatable).attr('id') === 'undefined') {
					Plugin.setOption('data.saveState', false);
					$(datatable.table).attr('id', mUtil.getUniqueID('m-datatable--'));
				}

				// predefine table height
				if (Plugin.getOption('layout.minHeight'))
					$(datatable.table).css('min-height', Plugin.getOption('layout.minHeight'));

				if (Plugin.getOption('layout.height'))
					$(datatable.table).css('max-height', Plugin.getOption('layout.height'));

				// for normal table load
				if (options.data.type === null) {
					$(datatable.table).css('width', '').css('display', '');
				}

				// create table head element
				datatable.tableHead = $(datatable.table).find('thead');
				if ($(datatable.tableHead).length === 0) {
					datatable.tableHead = $('<thead/>').prependTo(datatable.table);
				}

				// create table head element
				datatable.tableBody = $(datatable.table).find('tbody');
				if ($(datatable.tableBody).length === 0) {
					datatable.tableBody = $('<tbody/>').appendTo(datatable.table);
				}

				if (typeof options.layout.footer !== 'undefined' &&
					options.layout.footer) {
					// create table foot element
					datatable.tableFoot = $(datatable.table).find('tfoot');
					if ($(datatable.tableFoot).length === 0) {
						datatable.tableFoot = $('<tfoot/>').appendTo(datatable.table);
					}
				}
			},

			/**
			 * Set column data before table manipulation.
			 */
			setupCellField: function(tableParts) {
				if (typeof tableParts === 'undefined') tableParts = $(datatable.table).children();
				var columns = options.columns;
				$.each(tableParts, function(part, tablePart) {
					$(tablePart).find('.m-datatable__row').each(function(tri, tr) {
						// prepare data
						$(tr).find('.m-datatable__cell').each(function(tdi, td) {
							if (typeof columns[tdi] !== 'undefined') {
								$(td).data(columns[tdi]);
							}
						});
					});
				});
			},

			/**
			 * Set column template callback
			 * @param tablePart
			 */
			setupTemplateCell: function(tablePart) {
				if (typeof tablePart === 'undefined') tablePart = datatable.tableBody;
				var columns = options.columns;
				$(tablePart).find('.m-datatable__row').each(function(tri, tr) {
					// row data object, if any
					var obj = $(tr).data('obj') || {};

					// @deprecated in v5.0.6
					obj['getIndex'] = function() {
						return tri;
					};
					// @deprecated in v5.0.6
					obj['getDatatable'] = function() {
						return datatable;
					};

					// @deprecated in v5.0.6
					var rowCallback = Plugin.getOption('rows.callback');
					if (typeof rowCallback === 'function') {
						rowCallback($(tr), obj, tri);
					}
					// before template row callback
					var beforeTemplate = Plugin.getOption('rows.beforeTemplate');
					if (typeof beforeTemplate === 'function') {
						beforeTemplate($(tr), obj, tri);
					}
					// if data object is undefined, collect from table
					if (typeof obj === 'undefined') {
						obj = {};
						$(tr).find('.m-datatable__cell').each(function(tdi, td) {
							// get column settings by field
							var column = $.grep(columns, function(n, i) {
								return $(td).data('field') === n.field;
							})[0];
							if (typeof column !== 'undefined') {
								obj[column['field']] = $(td).text();
							}
						});
					}

					$(tr).find('.m-datatable__cell').each(function(tdi, td) {
						// get column settings by field
						var column = $.grep(columns, function(n, i) {
							return $(td).data('field') === n.field;
						})[0];
						if (typeof column !== 'undefined') {
							// column template
							if (typeof column.template !== 'undefined') {
								var finalValue = '';
								// template string
								if (typeof column.template === 'string') {
									finalValue = Plugin.dataPlaceholder(column.template, obj);
								}
								// template callback function
								if (typeof column.template === 'function') {
									finalValue = column.template(obj, tri, datatable);
								}
								var span = $('<span/>').append(finalValue);
								// insert to cell, wrap with span
								$(td).html(span);

								// set span overflow
								if (typeof column.overflow !== 'undefined') {
									$(span).css('overflow', column.overflow);
								}
							}
						}
					});

					// after template row callback
					var afterTemplate = Plugin.getOption('rows.afterTemplate');
					if (typeof afterTemplate === 'function') {
						afterTemplate($(tr), obj, tri);
					}
				});
			},

			/**
			 * Setup extra system column properties
			 * Note: selector checkbox, subtable toggle
			 */
			setupSystemColumn: function() {
				datatable.dataSet = datatable.dataSet || [];
				// no records available
				if (datatable.dataSet.length === 0) return;

				var columns = options.columns;
				$(datatable.tableBody).
					find('.m-datatable__row').
					each(function(tri, tr) {
						$(tr).find('.m-datatable__cell').each(function(tdi, td) {
							// get column settings by field
							var column = $.grep(columns, function(n, i) {
								return $(td).data('field') === n.field;
							})[0];
							if (typeof column !== 'undefined') {
								var value = $(td).text();

								// enable column selector
								if (typeof column.selector !== 'undefined' &&
									column.selector !== false) {
									// check if checkbox exist
									if ($(td).find('.m-checkbox [type="checkbox"]').length > 0) return;
									$(td).addClass('m-datatable__cell--check');
									// append checkbox
									var chk = $('<label/>').
										addClass('m-checkbox m-checkbox--single').
										append($('<input/>').
											attr('type', 'checkbox').
											attr('value', value).
											on('click', function() {
												if ($(this).is(':checked')) {
													// add checkbox active row class
													Plugin.setActive(this);
												} else {
													// add checkbox active row class
													Plugin.setInactive(this);
												}
											})).
										append($('<span/>'));

									// checkbox selector has outline style
									if (typeof column.selector.class !== 'undefined') {
										$(chk).addClass(column.selector.class);
									}

									$(td).children().html(chk);
								}

								// enable column subtable toggle
								if (typeof column.subtable !== 'undefined' && column.subtable) {
									// check if subtable toggle exist
									if ($(td).find('.m-datatable__toggle-subtable').length > 0) return;
									// append subtable toggle
									$(td).
										children().
										html($('<span/>').
											addClass('m-datatable__toggle-subtable').
											//attr('href', '#').
											attr('data-value', value).
											append($('<i/>').
												addClass(Plugin.getOption('layout.icons.rowDetail.collapse'))));
								}
							}
						});
					});

				// init checkbox for header/footer
				var initCheckbox = function(tr) {
					// get column settings by field
					var column = $.grep(columns, function(n, i) {
						return typeof n.selector !== 'undefined' && n.selector !== false;
					})[0];

					if (typeof column !== 'undefined') {
						// enable column selector
						if (typeof column.selector !== 'undefined' && column.selector !== false) {
							var td = $(tr).find('[data-field="' + column.field + '"]');
							// check if checkbox exist
							if ($(td).find('.m-checkbox [type="checkbox"]').length > 0) return;
							$(td).addClass('m-datatable__cell--check');

							// todo; check all, for server pagination
							// append checkbox
							var chk = $('<label/>').
								addClass('m-checkbox m-checkbox--single m-checkbox--all').
								append($('<input/>').
									attr('type', 'checkbox').
									on('click', function() {
										if ($(this).is(':checked')) {
											Plugin.setActiveAll(true);
										} else {
											Plugin.setActiveAll(false);
										}
									})).
								append($('<span/>'));

							// checkbox selector has outline style
							if (typeof column.selector.class !== 'undefined') {
								$(chk).addClass(column.selector.class);
							}
                            if(options.data.checkboxFirst || typeof options.data.checkboxFirst === 'undefined'){
							    $(td).children().html(chk);
                            }
						}
					}
				};

				if (options.layout.header) {
					initCheckbox($(datatable.tableHead).find('.m-datatable__row').first());
				}
				if (options.layout.footer) {
					initCheckbox($(datatable.tableFoot).find('.m-datatable__row').first());
				}
			},

			/**
			 * Adjust width to match container size
			 */
			adjustCellsWidth: function() {
				// get table width
				var containerWidth = $(datatable.tableHead).width();

				// offset reserved for sort icon
				var sortOffset = 20;

				// get total number of columns
				var columns = Plugin.getOneRow(datatable.tableHead, 1).length;
				if (columns > 0) {
					//  remove reserved sort icon width
					containerWidth = containerWidth - (sortOffset * columns);
					var minWidth = Math.floor(containerWidth / columns);

					// minimum width
					if (minWidth <= Plugin.offset) {
						minWidth = Plugin.offset;
					}

					$(datatable.table).
						find('.m-datatable__row').
						find('.m-datatable__cell').
						each(function(tdi, td) {
							var width = minWidth;
							var dataWidth = $(td).data('width');
							if (typeof dataWidth !== 'undefined') {
								width = dataWidth;
							}
							$(td).children().css('width', width);
						});
				}
			},

			/**
			 * Adjust height to match container size
			 */
			adjustCellsHeight: function() {
				$.each($(datatable.table).children(), function(part, tablePart) {
					var totalRows = $(tablePart).find('.m-datatable__row').first().parent().find('.m-datatable__row').length;
					for (var i = 1; i <= totalRows; i++) {
						var rows = $(tablePart).find('.m-datatable__row:nth-child(' + i + ')');
						if ($(rows).length > 0) {
							var maxHeight = Math.max.apply(null, $(rows).map(function() {
								return $(this).height();
							}).get());
							$(rows).css('height', Math.ceil(parseInt(maxHeight)));
						}
					}
				});
			},

			/**
			 * Setup table DOM and classes
			 */
			setupDOM: function(table) {
				// set table classes
				$(table).find('> thead').addClass('m-datatable__head');
				$(table).find('> tbody').addClass('m-datatable__body');
				$(table).find('> tfoot').addClass('m-datatable__foot');
				$(table).find('tr').addClass('m-datatable__row');
				$(table).find('tr > th, tr > td').addClass('m-datatable__cell');
				$(table).find('tr > th, tr > td').each(function(i, td) {
					if ($(td).find('span').length === 0) {
						$(td).wrapInner($('<span/>').css('width', Plugin.offset));
					}
                    if (options.data.tableCheckBoxChild) {
                        var col = options.columns;
                        if(col) {
                            var colFilter = col.filter(function(item){
	                            return item.addClassName != undefined
                            });
                            if(colFilter && colFilter.length > 0) {
                                var attr = $(td).attr('data-field');
                                var dataClass = colFilter.filter(function(iiii) {
	                                return iiii.field == $(td).attr('data-field')
                                });
                                if(dataClass && dataClass.length > 0){
                                    $(td).children('span').addClass(dataClass[0].addClassName);
                                }
                            }
                        }
                    }
                    
				});
			},

			/**
			 * Default scrollbar
			 * @returns {{tableLocked: null, init: init, onScrolling: onScrolling}}
			 */
			scrollbar: function() {
				var scroll = {
					scrollable: null,
					tableLocked: null,
					mcsOptions: {
						scrollInertia: 0,
						autoDraggerLength: true,
						autoHideScrollbar: true,
						autoExpandScrollbar: false,
						alwaysShowScrollbar: 0,
						mouseWheel: {
							scrollAmount: 120,
							preventDefault: false,
						},
						advanced: {
							updateOnContentResize: true,
							autoExpandHorizontalScroll: true,
						},
						theme: 'minimal-dark',
					},
					init: function() {
						// destroy previous custom scrollbar
						Plugin.destroyScroller(scroll.scrollable);
						var screen = mUtil.getViewPort().width;
						// setup scrollable datatable
						if (options.layout.scroll) {
							// add scrollable datatable class
							$(datatable.wrap).addClass('m-datatable--scroll');

							var scrollable = $(datatable.tableBody).find('.m-datatable__lock--scroll');

							// check if scrollable area have rows
							if ($(scrollable).find('.m-datatable__row').length > 0 && $(scrollable).length > 0) {
								scroll.scrollHead = $(datatable.tableHead).find('> .m-datatable__lock--scroll > .m-datatable__row');
								scroll.scrollFoot = $(datatable.tableFoot).find('> .m-datatable__lock--scroll > .m-datatable__row');
								scroll.tableLocked = $(datatable.tableBody).find('.m-datatable__lock:not(.m-datatable__lock--scroll)');
								if (screen > mUtil.getBreakpoint('lg')) {
									scroll.mCustomScrollbar(scrollable);
								} else {
									scroll.defaultScrollbar(scrollable);
								}
							} else if ($(datatable.tableBody).find('.m-datatable__row').length > 0) {
								scroll.scrollHead = $(datatable.tableHead).find('> .m-datatable__row');
								scroll.scrollFoot = $(datatable.tableFoot).find('> .m-datatable__row');
								if (screen > mUtil.getBreakpoint('lg')) {
									scroll.mCustomScrollbar(datatable.tableBody);
								} else {
									scroll.defaultScrollbar(datatable.tableBody);
								}
							}
						} else {
							$(datatable.table).
								// css('height', 'auto').
								css('overflow-x', 'auto');
						}
					},
					defaultScrollbar: function(scrollable) {
						$(scrollable).
							css('overflow', 'auto').
							css('max-height', Plugin.getOption('layout.height')).
							on('scroll', scroll.onScrolling);
					},
					onScrolling: function(e) {
						var left = $(this).scrollLeft();
						var top = $(this).scrollTop();
						$(scroll.scrollHead).css('left', -left);
						$(scroll.scrollFoot).css('left', -left);
						$(scroll.tableLocked).each(function(i, table) {
							$(table).css('top', -top);
						});
					},
					mCustomScrollbar: function(scrollable) {
						scroll.scrollable = scrollable;
						var height = Plugin.getOption('layout.height');
						// vertical and horizontal scrollbar
						var axis = 'xy';
						if (height === null) {
							// horizontal scrollbar
							axis = 'x';
						}
						var mcsOptions = $.extend({}, scroll.mcsOptions, {
							axis: axis,
							setHeight: $(datatable.tableBody).height(),
							callbacks: {
								whileScrolling: function() {
									var mcs = this.mcs;
									$(scroll.scrollHead).css('left', mcs.left);
									$(scroll.scrollFoot).css('left', mcs.left);
									$(scroll.tableLocked).each(function(i, table) {
										$(table).css('top', mcs.top);
									});
									// stop hover when scrolling
									clearTimeout(Plugin.hoverTimer);
									Plugin.isScrolling = true;
								},
							},
						});

						if (Plugin.getOption('layout.smoothScroll.scrollbarShown') === true) {
							$(scrollable).attr('data-scrollbar-shown', 'true');
						}

						// create a new instance for table body with scrollbar
						Plugin.mCustomScrollbar(scrollable, mcsOptions);
					},
				};
				scroll.init();
				return scroll;
			},

			/**
			 * Init custom scrollbar and reset position
			 * @param element
			 * @param options
			 */
			mCustomScrollbar: function(element, options) {
				$(datatable.tableBody).css('overflow', '');
				// check if any custom scrollbar exist in the element
				Plugin.destroyScroller($(datatable.table).find('.mCustomScrollbar'));
				$(element).mCustomScrollbar(options);
			},

			/**
			 * Set column title from options.columns settings
			 */
			setHeadTitle: function(tablePart) {
				if (typeof tablePart === 'undefined') tablePart = datatable.tableHead;
				var columns = options.columns;
				var row = $(tablePart).find('.m-datatable__row');
				var ths = $(tablePart).find('.m-datatable__cell');
				if ($(row).length === 0) {
					row = $('<tr/>').appendTo(tablePart);
				}
				$.each(columns, function(i, column) {
					var th = $(ths).eq(i);
					if ($(th).length === 0) {
						th = $('<th/>').appendTo(row);
					}
					// set column title
					if (typeof column['title'] !== 'undefined') {
						$(th).
							html(column['title']).
							attr('data-field', column.field).
							data(column);
					}
					// apply text align to thead/tfoot
					if (typeof column.textAlign !== 'undefined') {
						var align = typeof datatable.textAlign[column.textAlign] !==
						'undefined' ? datatable.textAlign[column.textAlign] : '';
						$(th).addClass(align);
					}
				});
				Plugin.setupDOM(tablePart);
			},

			/**
			 * Initiate to get remote or local data via ajax
			 */
			dataRender: function(action) {
				$(datatable.table).
					siblings('.m-datatable__pager').
					removeClass('m-datatable--paging-loaded');

				var buildMeta = function() {
					datatable.dataSet = datatable.dataSet || [];
					Plugin.localDataUpdate();
					// local pagination meta
					var meta = Plugin.getDataSourceParam('pagination');
					if (meta.perpage === 0) {
						meta.perpage = options.data.pageSize || 10;
					}
					meta.total = datatable.dataSet.length;
					var start = Math.max(meta.perpage * (meta.page - 1), 0);
					var end = Math.min(start + meta.perpage, meta.total);
					datatable.dataSet = $(datatable.dataSet).slice(start, end);
					return meta;
				};

				var afterGetData = function(result) {
					var localPagingCallback = function(ctx, meta) {
						if (!$(ctx.pager).hasClass('m-datatable--paging-loaded')) {
							$(ctx.pager).remove();
							ctx.init(meta);
						}
						$(ctx.pager).off().on('m-datatable--on-goto-page', function(e) {
							$(ctx.pager).remove();
							ctx.init(meta);
						});

						var start = Math.max(meta.perpage * (meta.page - 1), 0);
						var end = Math.min(start + meta.perpage, meta.total);

						Plugin.localDataUpdate();
						datatable.dataSet = $(datatable.dataSet).slice(start, end);

						// insert data into table content
						Plugin.insertData();
					};

					$(datatable.wrap).removeClass('m-datatable--error');
					// pagination enabled
					if (options.pagination) {
						if (options.data.serverPaging && options.data.type !== 'local') {
							// server pagination
							var serverMeta = Plugin.getObject('meta', result || null);
							if (serverMeta !== null) {
								Plugin.paging(serverMeta);
							} else {
								// no meta object from server response, fallback to local pagination
								Plugin.paging(buildMeta(), localPagingCallback);
							}
						} else {
							// local pagination can be used by remote data also
							Plugin.paging(buildMeta(), localPagingCallback);
						}
					} else {
						// pagination is disabled
						Plugin.localDataUpdate();
					}
					// insert data into table content
					Plugin.insertData();
				};

				// get local datasource
				if (options.data.type === 'local'
					// for remote json datasource
					|| typeof options.data.source.read === 'undefined' &&
					datatable.dataSet !== null
					// for remote datasource, server sorting is disabled and data already received from remote
					|| options.data.serverSorting === false && action === 'sort'
				) {
					afterGetData();
					return;
				}

				// getting data from remote only
				Plugin.getData().done(afterGetData);
			},

			/**
			 * Process ajax data
			 */
			insertData: function() {
				datatable.dataSet = datatable.dataSet || [];
				var params = Plugin.getDataSourceParam();

				// todo; fix performance
				var tableBody = $('<tbody/>').
					addClass('m-datatable__body').
					css('visibility', 'hidden');
				var colLength = options.columns.length;

				$.each(datatable.dataSet, function(i, row) {
					// keep data object to row
					var tr = $('<tr/>').attr('data-row', i).data('obj', row);
					var idx = 0;
					var tdArr = [];
					for (var a = 0; a < colLength; a += 1) {
						var column = options.columns[a];
						var classes = [];
						// add sorted class to cells
						if (params.sort.field === column.field) {
							classes.push('m-datatable__cell--sorted');
						}

						// apply text align
						if (typeof column.textAlign !== 'undefined') {
							var align = typeof datatable.textAlign[column.textAlign] !==
							'undefined' ? datatable.textAlign[column.textAlign] : '';
							classes.push(align);
						}
                        
						tdArr[idx++] = '<td data-field="' + column.field + '"' + ' data-value="' + Plugin.getObject(column.field, row) + '"';
						tdArr[idx++] = ' class="' + classes.join(' ') + '"';
						tdArr[idx++] = '>';
						tdArr[idx++] = Plugin.getObject(column.field, row);
						tdArr[idx++] = '</td>';
					}
					$(tr).append(tdArr.join(''));
					$(tableBody).append(tr);
				});

				// display no records message
				if (datatable.dataSet.length === 0) {
					Plugin.destroyScroller($(datatable.table).find('.mCustomScrollbar'));
					$('<span/>').
						addClass('m-datatable--error').
						css('width', '100%').
						html(Plugin.getOption('translate.records.noRecords')).
						appendTo(tableBody);
					$(datatable.wrap).addClass('m-datatable--error m-datatable--loaded');
					Plugin.spinnerCallback(false);
				}

				// replace existing table body
				$(datatable.tableBody).replaceWith(tableBody);
				datatable.tableBody = tableBody;

				// layout update
				Plugin.setupDOM(datatable.table);
				Plugin.setupCellField([datatable.tableBody]);
				Plugin.setupTemplateCell(datatable.tableBody);
				Plugin.layoutUpdate();
                debugger
                if(options.data.tableCheckBox == true){
                     // Code để check vào checkbox table Danh sách tính năng
                var dtbody = datatable.tableBody[0];
                var dtbodyChildren = dtbody.childNodes;

                for(var i = 0; i < dtbodyChildren.length; i++){
	                console.log($(dtbodyChildren[i]))
	                var xxxx = $(dtbodyChildren[i])[0].childNodes;
	                for(var j = 0; j< xxxx.length; j ++){
		                var attrDt = $($(xxxx[j])[0]).attr('data-value');
		                if(attrDt && attrDt === 'true'){
                            var chSpan = $($(xxxx[j])[0]).children("span");
                            if(chSpan){
                                var chLabel = $(chSpan).children("label");
                                if(chLabel) {
                                    $(chLabel).trigger('click');
                                }
                            }
		                }
	                }
                }
                }
			},

			updateTableComponents: function() {
				datatable.tableHead = $(datatable.table).children('thead');
				datatable.tableBody = $(datatable.table).children('tbody');
				datatable.tableFoot = $(datatable.table).children('tfoot');
			},

			/**
			 * Call ajax for raw JSON data
			 */
			getData: function() {
				datatable.ajaxParams = {
					dataType: 'json',
					method: 'GET',
					data: {},
					timeout: 30000,
				};

				if (options.data.type === 'local') {
					datatable.ajaxParams.url = options.data.source;
				}

				if (options.data.type === 'remote') {
					datatable.ajaxParams.url = Plugin.getOption('data.source.read.url');
					if (typeof datatable.ajaxParams.url !== 'string') datatable.ajaxParams.url = Plugin.getOption('data.source.read');
					if (typeof datatable.ajaxParams.url !== 'string') datatable.ajaxParams.url = Plugin.getOption('data.source');
					datatable.ajaxParams.headers = Plugin.getOption('data.source.read.headers');
					datatable.ajaxParams.method = Plugin.getOption('data.source.read.method') || 'POST';

					var data = Plugin.getDataSourceParam();
					// remove if server params is not enabled
					if (!Plugin.getOption('data.serverPaging')) {
						delete data['pagination'];
					}
					if (!Plugin.getOption('data.serverSorting')) {
						delete data['sort'];
					}
					datatable.ajaxParams.data['datatable'] = data;
				}

				return $.ajax(datatable.ajaxParams).done(function(response, textStatus, jqXHR) {
					datatable.lastResponse = response;
					// extendible data map callback for custom datasource
					datatable.dataSet = datatable.originalDataSet = Plugin.dataMapCallback(response);
					$(datatable).
						trigger('m-datatable--on-ajax-done', [datatable.dataSet]);
				}).fail(function(jqXHR, textStatus, errorThrown) {
					Plugin.destroyScroller($(datatable.table).find('.mCustomScrollbar'));
					$(datatable).trigger('m-datatable--on-ajax-fail', [jqXHR]);
					$('<span/>').
						addClass('m-datatable--error').
						width('100%').
						html(Plugin.getOption('translate.records.noRecords')).
						appendTo(datatable.tableBody);
					$(datatable.wrap).addClass('m-datatable--error m-datatable--loaded');
					Plugin.spinnerCallback(false);
				}).always(function() {
				});
			},

			/**
			 * Pagination object
			 * @param meta if null, local pagination, otherwise remote pagination
			 * @param callback for update data when navigating page
			 */
			paging: function(meta, callback) {
				var pg = {
					meta: null,
					pager: null,
					paginateEvent: null,
					pagerLayout: {pagination: null, info: null},
					callback: null,
					init: function(meta) {
						pg.meta = meta;

						// todo; if meta object not exist will cause error
						// always recount total pages
						pg.meta.pages = Math.max(Math.ceil(pg.meta.total / pg.meta.perpage), 1);

						// current page must be not over than total pages
						if (pg.meta.page > pg.meta.pages) pg.meta.page = pg.meta.pages;

						// set unique event name between tables
						pg.paginateEvent = Plugin.getTablePrefix();

						pg.pager = $(datatable.table).siblings('.m-datatable__pager');
						if ($(pg.pager).hasClass('m-datatable--paging-loaded')) return;

						// if class .m-datatable--paging-loaded not exist, recreate pagination
						$(pg.pager).remove();

						// if no pages available
						if (pg.meta.pages === 0) return;

						// update datasource params
						Plugin.setDataSourceParam('pagination', {
							page: pg.meta.page,
							pages: pg.meta.pages,
							perpage: pg.meta.perpage,
							total: pg.meta.total,
						});

						// default callback function, contains remote pagination handler
						pg.callback = pg.serverCallback;
						// custom callback function
						if (typeof callback === 'function') pg.callback = callback;

						pg.addPaginateEvent();
						pg.populate();

						pg.meta.page = Math.max(pg.meta.page || 1, pg.meta.page);

						$(datatable).trigger(pg.paginateEvent, pg.meta);

						pg.pagingBreakpoint.call();
						$(window).resize(pg.pagingBreakpoint);
					},
					serverCallback: function(ctx, meta) {
						Plugin.dataRender();
					},
					populate: function() {
						var icons = Plugin.getOption('layout.icons.pagination');
						var title = Plugin.getOption('translate.toolbar.pagination.items.default');
						// pager root element
						pg.pager = $('<div/>').addClass('m-datatable__pager m-datatable--paging-loaded clearfix');
						// numbering links
						var pagerNumber = $('<ul/>').addClass('m-datatable__pager-nav');
						pg.pagerLayout['pagination'] = pagerNumber;

						// pager first/previous button
						$('<li/>').
							append($('<a/>').
								attr('title', title.first).
								addClass('m-datatable__pager-link m-datatable__pager-link--first').
								append($('<i/>').addClass(icons.first)).
								on('click', pg.gotoMorePage).
								attr('data-page', 1)).
							appendTo(pagerNumber);
						$('<li/>').
							append($('<a/>').
								attr('title', title.prev).
								addClass('m-datatable__pager-link m-datatable__pager-link--prev').
								append($('<i/>').addClass(icons.prev)).
								on('click', pg.gotoMorePage)).
							appendTo(pagerNumber);

						// more previous pages
						$('<li/>').
							append($('<a/>').
								attr('title', title.more).
								addClass('m-datatable__pager-link m-datatable__pager-link--more-prev').
								html($('<i/>').addClass(icons.more)).
								on('click', pg.gotoMorePage)).
							appendTo(pagerNumber);

						$('<li/>').
							append($('<input/>').
								attr('type', 'text').
								addClass('m-pager-input form-control').
								attr('title', title.input).
								on('keyup', function() {
									// on keyup update [data-page]
									$(this).attr('data-page', Math.abs($(this).val()));
								}).
								on('keypress', function(e) {
									// on keypressed enter button
									if (e.which === 13) pg.gotoMorePage(e);
								})).
							appendTo(pagerNumber);

						var pagesNumber = Plugin.getOption('toolbar.items.pagination.pages.desktop.pagesNumber');
						var end = Math.ceil(pg.meta.page / pagesNumber) * pagesNumber;
						var start = end - pagesNumber;
						if (end > pg.meta.pages) {
							end = pg.meta.pages;
						}
						for (var x = start; x < end; x++) {
							var pageNumber = x + 1;
							$('<li/>').
								append($('<a/>').
									addClass('m-datatable__pager-link m-datatable__pager-link-number').
									text(pageNumber).
									attr('data-page', pageNumber).
									attr('title', pageNumber).
									on('click', pg.gotoPage)).
								appendTo(pagerNumber);
						}

						// more next pages
						$('<li/>').
							append($('<a/>').
								attr('title', title.more).
								addClass('m-datatable__pager-link m-datatable__pager-link--more-next').
								html($('<i/>').addClass(icons.more)).
								on('click', pg.gotoMorePage)).
							appendTo(pagerNumber);

						// pager next/last button
						$('<li/>').
							append($('<a/>').
								attr('title', title.next).
								addClass('m-datatable__pager-link m-datatable__pager-link--next').
								append($('<i/>').addClass(icons.next)).
								on('click', pg.gotoMorePage)).
							appendTo(pagerNumber);
						$('<li/>').
							append($('<a/>').
								attr('title', title.last).
								addClass('m-datatable__pager-link m-datatable__pager-link--last').
								append($('<i/>').addClass(icons.last)).
								on('click', pg.gotoMorePage).
								attr('data-page', pg.meta.pages)).
							appendTo(pagerNumber);

						// page info
						if (Plugin.getOption('toolbar.items.info')) {
							pg.pagerLayout['info'] = $('<div/>').
								addClass('m-datatable__pager-info').
								append($('<span/>').addClass('m-datatable__pager-detail'));
						}

						$.each(Plugin.getOption('toolbar.layout'), function(i, layout) {
							$(pg.pagerLayout[layout]).appendTo(pg.pager);
						});

						// page size select
						var pageSizeSelect = $('<select/>').
							addClass('selectpicker m-datatable__pager-size').
							attr('title', Plugin.getOption('translate.toolbar.pagination.items.default.select')).
							attr('data-width', '70px').
							val(pg.meta.perpage).
							on('change', pg.updatePerpage).
							prependTo(pg.pagerLayout['info']);

						var pageSizes = Plugin.getOption('toolbar.items.pagination.pageSizeSelect');
						// default value here, to fix override option by user
						if (pageSizes.length == 0) pageSizes = [10, 20, 30, 50, 100];
						$.each(pageSizes, function(i, size) {
							var display = size;
							if (size === -1) display = 'All';
							$('<option/>').
								attr('value', size).
								html(display).
								appendTo(pageSizeSelect);
						});

						// init selectpicker to dropdown
						$(datatable).ready(function() {
							$('.selectpicker').
								selectpicker().
								siblings('.dropdown-toggle').
								attr('title', Plugin.getOption(
									'translate.toolbar.pagination.items.default.select'));
						});

						pg.paste();
					},
					paste: function() {
						// insert pagination based on placement position, top|bottom
						$.each($.unique(Plugin.getOption('toolbar.placement')),
							function(i, position) {
								if (position === 'bottom') {
									$(pg.pager).clone(true).insertAfter(datatable.table);
								}
								if (position === 'top') {
									// pager top need some extra space
									$(pg.pager).
										clone(true).
										addClass('m-datatable__pager--top').
										insertBefore(datatable.table);
								}
							});
					},
					gotoMorePage: function(e) {
						e.preventDefault();
						// $(this) is a link of .m-datatable__pager-link

						if ($(this).attr('disabled') === 'disabled') return false;

						var page = $(this).attr('data-page');

						// event from text input
						if (typeof page === 'undefined') {
							page = $(e.target).attr('data-page');
						}

						pg.openPage(parseInt(page));
						return false;
					},
					gotoPage: function(e) {
						e.preventDefault();
						// prevent from click same page number
						if ($(this).hasClass('m-datatable__pager-link--active')) return;

						pg.openPage(parseInt($(this).data('page')));
					},
					openPage: function(page) {
						// currentPage is 1-based index
						pg.meta.page = parseInt(page);

						$(datatable).trigger(pg.paginateEvent, pg.meta);
						pg.callback(pg, pg.meta);

						// update page callback function
						$(pg.pager).trigger('m-datatable--on-goto-page', pg.meta);
					},
					updatePerpage: function(e) {
						e.preventDefault();
						if (Plugin.getOption('layout.height') === null) {
							// fix white space, when perpage is set from many records to less records
							$('html, body').animate({scrollTop: $(datatable).position().top});
						}

						pg.pager = $(datatable.table).
							siblings('.m-datatable__pager').
							removeClass('m-datatable--paging-loaded');

						// on change select page size
						if (e.originalEvent) {
							pg.meta.perpage = parseInt($(this).val());
						}

						$(pg.pager).
							find('select.m-datatable__pager-size').
							val(pg.meta.perpage).
							attr('data-selected', pg.meta.perpage);

						// update datasource params
						Plugin.setDataSourceParam('pagination', {
							page: pg.meta.page,
							pages: pg.meta.pages,
							perpage: pg.meta.perpage,
							total: pg.meta.total,
						});

						// update page callback function
						$(pg.pager).trigger('m-datatable--on-update-perpage', pg.meta);
						$(datatable).trigger(pg.paginateEvent, pg.meta);
						pg.callback(pg, pg.meta);

						// update pagination info
						pg.updateInfo.call();
					},
					addPaginateEvent: function(e) {
						// pagination event
						$(datatable).
							off(pg.paginateEvent).
							on(pg.paginateEvent, function(e, meta) {
								Plugin.spinnerCallback(true);

								pg.pager = $(datatable.table).siblings('.m-datatable__pager');
								var pagerNumber = $(pg.pager).find('.m-datatable__pager-nav');

								// set sync active page class
								$(pagerNumber).
									find('.m-datatable__pager-link--active').
									removeClass('m-datatable__pager-link--active');
								$(pagerNumber).
									find('.m-datatable__pager-link-number[data-page="' + meta.page + '"]').
									addClass('m-datatable__pager-link--active');

								// set next and previous link page number
								$(pagerNumber).
									find('.m-datatable__pager-link--prev').
									attr('data-page', Math.max(meta.page - 1, 1));
								$(pagerNumber).
									find('.m-datatable__pager-link--next').
									attr('data-page', Math.min(meta.page + 1, meta.pages));

								// current page input value sync
								$(pg.pager).each(function() {
									$(this).
										find('.m-pager-input[type="text"]').
										prop('value', meta.page);
								});

								$(pg.pager).find('.m-datatable__pager-nav').show();
								if (meta.pages <= 1) {
									// hide pager if has 1 page
									$(pg.pager).find('.m-datatable__pager-nav').hide();
								}

								// update datasource params
								Plugin.setDataSourceParam('pagination', {
									page: pg.meta.page,
									pages: pg.meta.pages,
									perpage: pg.meta.perpage,
									total: pg.meta.total,
								});

								$(pg.pager).
									find('select.m-datatable__pager-size').
									val(meta.perpage).
									attr('data-selected', meta.perpage);

								// clear active rows
								$(datatable.table).
									find('.m-checkbox > [type="checkbox"]').
									prop('checked', false);
								$(datatable.table).
									find('.m-datatable__row--active').
									removeClass('m-datatable__row--active');

								pg.updateInfo.call();
								pg.pagingBreakpoint.call();
								// Plugin.resetScroll();
							});
					},
					updateInfo: function() {
						var start = Math.max(pg.meta.perpage * (pg.meta.page - 1) + 1, 1);
						var end = Math.min(start + pg.meta.perpage - 1, pg.meta.total);
						// page info update
						$(pg.pager).
							find('.m-datatable__pager-info').
							find('.m-datatable__pager-detail').
							html(Plugin.dataPlaceholder(
								Plugin.getOption('translate.toolbar.pagination.items.info'), {
									start: start,
									end: pg.meta.perpage === -1 ? pg.meta.total : end,
									pageSize: pg.meta.perpage === -1 ||
									pg.meta.perpage >= pg.meta.total
										? pg.meta.total
										: pg.meta.perpage,
									total: pg.meta.total,
								}));
					},

					/**
					 * Update pagination layout breakpoint
					 */
					pagingBreakpoint: function() {
						// keep page links reference
						var pagerNumber = $(datatable.table).
							siblings('.m-datatable__pager').
							find('.m-datatable__pager-nav');
						if ($(pagerNumber).length === 0) return;

						var currentPage = Plugin.getCurrentPage();
						var pagerInput = $(pagerNumber).
							find('.m-pager-input').
							closest('li');

						// reset
						$(pagerNumber).find('li').show();

						// pagination update
						$.each(Plugin.getOption('toolbar.items.pagination.pages'),
							function(mode, option) {
								if (mUtil.isInResponsiveRange(mode)) {
									switch (mode) {
										case 'desktop':
										case 'tablet':
											var end = Math.ceil(currentPage / option.pagesNumber) *
												option.pagesNumber;
											var start = end - option.pagesNumber;
											$(pagerInput).hide();
											pg.meta = Plugin.getDataSourceParam('pagination');
											pg.paginationUpdate();
											break;

										case 'mobile':
											$(pagerInput).show();
											$(pagerNumber).
												find('.m-datatable__pager-link--more-prev').
												closest('li').
												hide();
											$(pagerNumber).
												find('.m-datatable__pager-link--more-next').
												closest('li').
												hide();
											$(pagerNumber).
												find('.m-datatable__pager-link-number').
												closest('li').
												hide();
											break;
									}

									return false;
								}
							});
					},

					/**
					 * Update pagination number and button display
					 */
					paginationUpdate: function() {
						var pager = $(datatable.table).
								siblings('.m-datatable__pager').
								find('.m-datatable__pager-nav'),
							pagerMorePrev = $(pager).
								find('.m-datatable__pager-link--more-prev'),
							pagerMoreNext = $(pager).
								find('.m-datatable__pager-link--more-next'),
							pagerFirst = $(pager).find('.m-datatable__pager-link--first'),
							pagerPrev = $(pager).find('.m-datatable__pager-link--prev'),
							pagerNext = $(pager).find('.m-datatable__pager-link--next'),
							pagerLast = $(pager).find('.m-datatable__pager-link--last');

						// get visible page
						var pagerNumber = $(pager).find('.m-datatable__pager-link-number');
						// get page before of first visible
						var morePrevPage = Math.max($(pagerNumber).first().data('page') - 1,
							1);
						$(pagerMorePrev).each(function(i, prev) {
							$(prev).attr('data-page', morePrevPage);
						});
						// show/hide <li>
						if (morePrevPage === 1) {
							$(pagerMorePrev).parent().hide();
						} else {
							$(pagerMorePrev).parent().show();
						}

						// get page after of last visible
						var moreNextPage = Math.min($(pagerNumber).last().data('page') + 1,
							pg.meta.pages);
						$(pagerMoreNext).each(function(i, prev) {
							$(pagerMoreNext).attr('data-page', moreNextPage).show();
						});

						// show/hide <li>
						if (moreNextPage === pg.meta.pages
							// missing dot fix when last hidden page is one left
							&& moreNextPage === $(pagerNumber).last().data('page')) {
							$(pagerMoreNext).parent().hide();
						} else {
							$(pagerMoreNext).parent().show();
						}

						// begin/end of pages
						if (pg.meta.page === 1) {
							$(pagerFirst).
								attr('disabled', true).
								addClass('m-datatable__pager-link--disabled');
							$(pagerPrev).
								attr('disabled', true).
								addClass('m-datatable__pager-link--disabled');
						} else {
							$(pagerFirst).
								removeAttr('disabled').
								removeClass('m-datatable__pager-link--disabled');
							$(pagerPrev).
								removeAttr('disabled').
								removeClass('m-datatable__pager-link--disabled');
						}
						if (pg.meta.page === pg.meta.pages) {
							$(pagerNext).
								attr('disabled', true).
								addClass('m-datatable__pager-link--disabled');
							$(pagerLast).
								attr('disabled', true).
								addClass('m-datatable__pager-link--disabled');
						} else {
							$(pagerNext).
								removeAttr('disabled').
								removeClass('m-datatable__pager-link--disabled');
							$(pagerLast).
								removeAttr('disabled').
								removeClass('m-datatable__pager-link--disabled');
						}

						// display more buttons
						var nav = Plugin.getOption('toolbar.items.pagination.navigation');
						if (!nav.first) $(pagerFirst).remove();
						if (!nav.prev) $(pagerPrev).remove();
						if (!nav.next) $(pagerNext).remove();
						if (!nav.last) $(pagerLast).remove();
					},
				};
				pg.init(meta);
				return pg;
			},

			/**
			 * Hide/show table cell defined by options[columns][i][responsive][visible/hidden]
			 */
			columnHide: function() {
				var screen = mUtil.getViewPort().width;
				// foreach columns setting
				$.each(options.columns, function(i, column) {
					if (typeof column.responsive !== 'undefined') {
						var field = column.field;
						var tds = $.grep($(datatable.table).find('.m-datatable__cell'), function(n, i) {
							return field === $(n).data('field');
						});
						if (mUtil.getBreakpoint(column.responsive.hidden) >= screen) {
							$(tds).hide();
						} else {
							$(tds).show();
						}
						if (mUtil.getBreakpoint(column.responsive.visible) <= screen) {
							$(tds).show();
						} else {
							$(tds).hide();
						}
					}
				});
			},

			/**
			 * Setup sub datatable
			 */
			setupSubDatatable: function() {
				var subTableCallback = Plugin.getOption('detail.content');
				if (typeof subTableCallback !== 'function') return;

				// subtable already exist
				if ($(datatable.table).find('.m-datatable__subtable').length > 0) return;

				$(datatable.wrap).addClass('m-datatable--subtable');

				options.columns[0]['subtable'] = true;

				// toggle on open sub table
				var toggleSubTable = function(e) {
					e.preventDefault();
					// get parent row of this subtable
					var parentRow = $(this).closest('.m-datatable__row');

					// get subtable row for sub table
					var subTableRow = $(parentRow).next('.m-datatable__row-subtable');
					if ($(subTableRow).length === 0) {
						// prepare DOM for sub table, each <tr> as parent and add <tr> as child table
						subTableRow = $('<tr/>').
							addClass('m-datatable__row-subtable m-datatable__row-loading').
							hide().
							append($('<td/>').
								addClass('m-datatable__subtable').
								attr('colspan', Plugin.getTotalColumns()));
						$(parentRow).after(subTableRow);
						// add class to even row
						if ($(parentRow).hasClass('m-datatable__row--even')) {
							$(subTableRow).addClass('m-datatable__row-subtable--even');
						}
					}

					$(subTableRow).toggle();

					var subTable = $(subTableRow).find('.m-datatable__subtable');

					// get id from first column of parent row
					var primaryKey = $(this).
						closest('[data-field]:first-child').
						find('.m-datatable__toggle-subtable').
						data('value');

					var icon = $(this).find('i').removeAttr('class');

					// prevent duplicate datatable init
					if ($(parentRow).hasClass('m-datatable__row--subtable-expanded')) {
						$(icon).addClass(Plugin.getOption('layout.icons.rowDetail.collapse'));
						// remove expand class from parent row
						$(parentRow).removeClass('m-datatable__row--subtable-expanded');
						// trigger event on collapse
						$(datatable).trigger('m-datatable--on-collapse-subtable', [parentRow]);
					} else {
						// expand and run callback function
						$(icon).addClass(Plugin.getOption('layout.icons.rowDetail.expand'));
						// add expand class to parent row
						$(parentRow).addClass('m-datatable__row--subtable-expanded');
						// trigger event on expand
						$(datatable).trigger('m-datatable--on-expand-subtable', [parentRow]);
					}

					// prevent duplicate datatable init
					if ($(subTable).find('.m-datatable').length === 0) {
						// get data by primary id
						$.map(datatable.dataSet, function(n, i) {
							if (primaryKey === n[options.columns[0].field]) {
								e.data = n;
								return true;
							}
							return false;
						});

						// deprecated in v5.0.6
						e.detailCell = subTable;

						e.parentRow = parentRow;
						e.subTable = subTable;

						// run callback with event
						subTableCallback(e);

						$(subTable).children('.m-datatable').on('m-datatable--on-init', function(e) {
							$(subTableRow).removeClass('m-datatable__row-loading');
						});
						if (Plugin.getOption('data.type') === 'local') {
							$(subTableRow).removeClass('m-datatable__row-loading');
						}
					}
				};

				var columns = options.columns;
				$(datatable.tableBody).
					find('.m-datatable__row').
					each(function(tri, tr) {
						$(tr).find('.m-datatable__cell').each(function(tdi, td) {
							// get column settings by field
							var column = $.grep(columns, function(n, i) {
								return $(td).data('field') === n.field;
							})[0];
							if (typeof column !== 'undefined') {
								var value = $(td).text();
								// enable column subtable toggle
								if (typeof column.subtable !== 'undefined' && column.subtable) {
									// check if subtable toggle exist
									if ($(td).find('.m-datatable__toggle-subtable').length > 0) return;
									// append subtable toggle
									$(td).html($('<span/>').
										addClass('m-datatable__toggle-subtable').
										//attr('href', '#').
										attr('data-value', value).
										attr('title', Plugin.getOption('detail.title')).
										on('click', toggleSubTable).
										append($('<i/>').
											css('width', $(td).data('width')).
											addClass(Plugin.getOption('layout.icons.rowDetail.collapse'))));
								}
							}
						});
					});

				// $(datatable.tableHead).find('.m-datatable__row').first()
			},

			/**
			 * Datasource mapping callback
			 */
			dataMapCallback: function(raw) {
				// static dataset array
				var dataSet = raw;
				// dataset mapping callback
				if (typeof Plugin.getOption('data.source.read.map') === 'function') {
					return Plugin.getOption('data.source.read.map')(raw);
				} else {
					// default data mapping fallback
					if (typeof raw.data !== 'undefined') {
						dataSet = raw.data;
					}
				}
				return dataSet;
			},

			isSpinning: false,
			/**
			 * BlockUI spinner callback
			 * @param block
			 */
			spinnerCallback: function(block) {
				if (block) {
					if (!Plugin.isSpinning) {
						// get spinner options
						var spinnerOptions = Plugin.getOption('layout.spinner');
						if (spinnerOptions.message === true) {
							// use default spinner message from translation
							spinnerOptions.message = Plugin.getOption('translate.records.processing');
						}
						Plugin.isSpinning = true;
						if (typeof mApp !== 'undefined') {
							mApp.block(datatable, spinnerOptions);
						}
					}
				} else {
					Plugin.isSpinning = false;
					if (typeof mApp !== 'undefined') {
						mApp.unblock(datatable);
					}
				}
			},

			/**
			 * Default sort callback function
			 * @param data
			 * @param sort
			 * @param column
			 * @returns {*|Array.<T>|{sort, field}|{asc, desc}}
			 */
			sortCallback: function(data, sort, column) {
				var type = column['type'] || 'string';
				var format = column['format'] || '';
				var field = column['field'];

				if (type === 'date' && typeof moment === 'undefined') {
					throw new Error('Moment.js is required.');
				}

				return $(data).sort(function(a, b) {
					var aField = a[field];
					var bField = b[field];

					switch (type) {
						case 'date':
							var diff = moment(aField, format).diff(moment(bField, format));
							if (sort === 'asc') {
								return diff > 0 ? 1 : diff < 0 ? -1 : 0;
							} else {
								return diff < 0 ? 1 : diff > 0 ? -1 : 0;
							}
							break;

						case 'number':
							if (isNaN(parseFloat(aField)) && aField != null) {
								aField = Number(aField.replace(/[^0-9\.-]+/g, ''));
							}
							if (isNaN(parseFloat(bField)) && bField != null) {
								bField = Number(bField.replace(/[^0-9\.-]+/g, ''));
							}
							aField = parseFloat(aField);
							bField = parseFloat(bField);
							if (sort === 'asc') {
								return aField > bField ? 1 : aField < bField ? -1 : 0;
							} else {
								return aField < bField ? 1 : aField > bField ? -1 : 0;
							}
							break;

						case 'string':
						default:
							if (sort === 'asc') {
								return aField > bField ? 1 : aField < bField ? -1 : 0;
							} else {
								return aField < bField ? 1 : aField > bField ? -1 : 0;
							}
							break;
					}
				});
			},

			/**
			 * Custom debug log
			 * @param text
			 * @param obj
			 */
			log: function(text, obj) {
				if (typeof obj === 'undefined') obj = '';
				if (datatable.debug) {
					console.log(text, obj);
				}
			},

			/**
			 * Auto hide columnds overflow in row
			 */
			autoHide: function() {
				$(datatable.table).find('.m-datatable__cell').show();
				$(datatable.tableBody).each(function() {
					while ($(this)[0].offsetWidth < $(this)[0].scrollWidth) {
						$(this).find('.m-datatable__row').each(function(i) {
							var cell = $(this).find('.m-datatable__cell').not(':hidden').last();
							$(cell).hide();
							if (i === 0) {
								$(datatable.tableHead).find('.m-datatable__cell').eq($(cell).index()).hide();
								$(datatable.tableFoot).find('.m-datatable__cell').eq($(cell).index()).hide();
							}
						});
					}
				});

				var toggleHiddenColumns = function(e) {
					e.preventDefault();

					var row = $(this).closest('.m-datatable__row');
					var detailRow = $(row).next();

					if (!$(detailRow).hasClass('m-datatable__row-detail')) {
						$(this).find('i').
							removeClass(Plugin.getOption('layout.icons.rowDetail.collapse')).
							addClass(Plugin.getOption('layout.icons.rowDetail.expand'));

						var hidden = $(row).find('.m-datatable__cell:hidden').clone().show();

						detailRow = $('<tr/>').addClass('m-datatable__row-detail').insertAfter(row);
						var detailRowTd = $('<td/>').
							addClass('m-datatable__detail').
							attr('colspan', Plugin.getTotalColumns()).appendTo(detailRow);

						var detailSubTable = $('<table/>');
						$(hidden).each(function() {
							$(detailSubTable).
								append($('<tr class="m-datatable__row"></tr>').
									append($('<td class="m-datatable__cell"></td>').
										append($('<span/>').
											css('width', Plugin.offset).
											append($(this).data('field')))).
									append(this));
						});
						$(detailRowTd).append(detailSubTable);

					} else {
						$(this).find('i').
							removeClass(Plugin.getOption('layout.icons.rowDetail.expand')).
							addClass(Plugin.getOption('layout.icons.rowDetail.collapse'));
						$(detailRow).remove();
					}
				};

				// toggle show hidden columns
				$(datatable.tableBody).find('.m-datatable__row').each(function() {
					$(this).prepend($('<td/>').addClass('m-datatable__cell m-datatable__toggle--detail').
						append($('<a/>').
							addClass('m-datatable__toggle-detail').
							attr('href', '#').
							on('click', toggleHiddenColumns).
							append($('<i/>').
								css('width', '21px').// maintain width for both icons expand and collapse
								addClass(Plugin.getOption('layout.icons.rowDetail.collapse')))));

					// check if subtable toggle exist
					if ($(datatable.tableHead).find('.m-datatable__toggle-detail').length === 0) {
						$(datatable.tableHead).
							find('.m-datatable__row').
							first().
							prepend('<th class="m-datatable__cell m-datatable__toggle-detail"><span style="width: 21px"></span></th>');
						$(datatable.tableFoot).
							find('.m-datatable__row').
							first().
							prepend('<th class="m-datatable__cell m-datatable__toggle-detail"><span style="width: 21px"></span></th>');
					} else {
						$(datatable.tableHead).find('.m-datatable__toggle-detail').find('span').css('width', '21px');
					}
				});
			},

			/**
			 * todo; implement hover column
			 */
			hoverColumn: function() {
				$(datatable.tableBody).on('mouseenter', '.m-datatable__cell', function() {
					var colIdx = $(Plugin.cell(this).nodes()).index();
					$(Plugin.cells().nodes()).removeClass('m-datatable__cell--hover');
					$(Plugin.column(colIdx).nodes()).addClass('m-datatable__cell--hover');
				});
			},

			/********************
			 ** HELPERS
			 ********************/

			/**
			 * Check if table is a locked colums table
			 */
			isLocked: function() {
				return $(datatable.wrap).hasClass('m-datatable--lock') || false;
			},

			/**
			 * Insert html into table content, take count mCustomScrollbar DOM to prevent replace
			 * @param html
			 * @param tablePart
			 */
			replaceTableContent: function(html, tablePart) {
				if (typeof tablePart === 'undefined') tablePart = datatable.tableBody;
				if ($(tablePart).hasClass('mCustomScrollbar')) {
					$(tablePart).find('.mCSB_container').html(html);
				} else {
					$(tablePart).html(html);
				}
			},

			/**
			 * Get total extra space of an element for width calculation, including padding, margin, border
			 * @param element
			 * @returns {number}
			 */
			getExtraSpace: function(element) {
				var padding = parseInt($(element).css('paddingRight')) +
					parseInt($(element).css('paddingLeft'));
				var margin = parseInt($(element).css('marginRight')) +
					parseInt($(element).css('marginLeft'));
				var border = Math.ceil(
					$(element).css('border-right-width').replace('px', ''));
				return padding + margin + border;
			},

			/**
			 * Insert data of array into {{ }} template placeholder
			 * @param template
			 * @param data
			 * @returns {*}
			 */
			dataPlaceholder: function(template, data) {
				var result = template;
				$.each(data, function(key, val) {
					result = result.replace('{{' + key + '}}', val);
				});
				return result;
			},

			/**
			 * Get table unique ID
			 * Note: table unique change each time refreshed
			 * @param suffix
			 * @returns {*}
			 */
			getTableId: function(suffix) {
				if (typeof suffix === 'undefined') suffix = '';
				var id = $(datatable).attr('id');
				if (typeof id === 'undefined') {
					id = $(datatable).attr('class').split(' ')[0];
				}
				return id + suffix;
			},

			/**
			 * Get table prefix with depth number
			 */
			getTablePrefix: function(suffix) {
				if (typeof suffix !== 'undefined') suffix = '-' + suffix;
				return Plugin.getTableId() + '-' + Plugin.getDepth() + suffix;
			},

			/**
			 * Get current table depth of sub table
			 * @returns {number}
			 */
			getDepth: function() {
				var depth = 0;
				var table = datatable.table;
				do {
					table = $(table).parents('.m-datatable__table');
					depth++;
				} while ($(table).length > 0);
				return depth;
			},

			/**
			 * Keep state item
			 * @param key
			 * @param value
			 */
			stateKeep: function(key, value) {
				key = Plugin.getTablePrefix(key);
				if (Plugin.getOption('data.saveState') === false) return;
				if (Plugin.getOption('data.saveState.webstorage') && localStorage) {
					localStorage.setItem(key, JSON.stringify(value));
				}
				if (Plugin.getOption('data.saveState.cookie')) {
					Cookies.set(key, JSON.stringify(value));
				}
			},

			/**
			 * Get state item
			 * @param key
			 * @param defValue
			 */
			stateGet: function(key, defValue) {
				key = Plugin.getTablePrefix(key);
				if (Plugin.getOption('data.saveState') === false) return;
				var value = null;
				if (Plugin.getOption('data.saveState.webstorage') && localStorage) {
					value = localStorage.getItem(key);
				} else {
					value = Cookies.get(key);
				}
				if (typeof value !== 'undefined' && value !== null) {
					return JSON.parse(value);
				}
			},

			/**
			 * Update data in state without clear existing
			 * @param key
			 * @param value
			 */
			stateUpdate: function(key, value) {
				var ori = Plugin.stateGet(key);
				if (typeof ori === 'undefined' || ori === null) ori = {};
				Plugin.stateKeep(key, $.extend({}, ori, value));
			},

			/**
			 * Remove state item
			 * @param key
			 */
			stateRemove: function(key) {
				key = Plugin.getTablePrefix(key);
				if (localStorage) {
					localStorage.removeItem(key);
				}
				Cookies.remove(key);
			},

			/**
			 * Get total columns.
			 */
			getTotalColumns: function(tablePart) {
				if (typeof tablePart === 'undefined') tablePart = datatable.tableBody;
				return $(tablePart).
					find('.m-datatable__row').
					first().
					find('.m-datatable__cell').length;
			},

			/**
			 * Get table row. Useful to get row when current table is in lock mode.
			 * Can be used for both lock and normal table mode.
			 * By default, returning result will be in a list of <td>.
			 * @param tablePart
			 * @param row 1-based index
			 * @param tdOnly Optional. Default true
			 * @returns {*}
			 */
			getOneRow: function(tablePart, row, tdOnly) {
				if (typeof tdOnly === 'undefined') tdOnly = true;
				// get list of <tr>
				var result = $(tablePart).find('.m-datatable__row:not(.m-datatable__row-detail):nth-child(' + row + ')');
				if (tdOnly) {
					// get list of <td> or <th>
					result = result.find('.m-datatable__cell');
				}
				return result;
			},

			/**
			 * Check if element has vertical overflow
			 * @param element
			 * @returns {boolean}
			 */
			hasOverflowY: function(element) {
				var children = $(element).find('.m-datatable__row');
				var maxHeight = 0;

				if (children.length > 0) {
					$(children).each(function(tdi, td) {
						maxHeight += Math.floor($(td).innerHeight());
					});

					return maxHeight > $(element).innerHeight();
				}

				return false;
			},

			/**
			 * Sort table row at HTML level by column index.
			 * todo; Not in use.
			 * @param header Header sort clicked
			 * @param sort asc|desc. Optional. Default asc
			 * @param int Boolean. Optional. Comparison value parse to integer. Default false
			 */
			sortColumn: function(header, sort, int) {
				if (typeof sort === 'undefined') sort = 'asc'; // desc
				if (typeof int === 'undefined') int = false;

				var column = $(header).index();
				var rows = $(datatable.tableBody).find('.m-datatable__row');
				var hIndex = $(header).closest('.m-datatable__lock').index();
				if (hIndex !== -1) {
					rows = $(datatable.tableBody).
						find('.m-datatable__lock:nth-child(' + (hIndex + 1) + ')').
						find('.m-datatable__row');
				}

				var container = $(rows).parent();
				$(rows).sort(function(a, b) {
					var tda = $(a).find('td:nth-child(' + column + ')').text();
					var tdb = $(b).find('td:nth-child(' + column + ')').text();

					if (int) {
						// useful for integer type sorting
						tda = parseInt(tda);
						tdb = parseInt(tdb);
					}

					if (sort === 'asc') {
						return tda > tdb ? 1 : tda < tdb ? -1 : 0;
					} else {
						return tda < tdb ? 1 : tda > tdb ? -1 : 0;
					}
				}).appendTo(container);
			},

			/**
			 * Perform sort remote and local
			 */
			sorting: function() {
				var sortObj = {
					init: function() {
						if (options.sortable) {
							$(datatable.tableHead).
								find('.m-datatable__cell:not(.m-datatable__cell--check)').
								addClass('m-datatable__cell--sort').
								off('click').
								on('click', sortObj.sortClick);
							// first init
							sortObj.setIcon();
						}
					},
					setIcon: function() {
						var meta = Plugin.getDataSourceParam('sort');
						// sort icon beside column header
						var td = $(datatable.tableHead).
							find('.m-datatable__cell[data-field="' + meta.field + '"]').
							attr('data-sort', meta.sort);
						var sorting = $(td).find('span');
						var icon = $(sorting).find('i');

						var icons = Plugin.getOption('layout.icons.sort');
						// update sort icon; desc & asc
						if ($(icon).length > 0) {
							$(icon).removeAttr('class').addClass(icons[meta.sort]);
						} else {
							$(sorting).append($('<i/>').addClass(icons[meta.sort]));
						}
					},
					sortClick: function(e) {
						var meta = Plugin.getDataSourceParam('sort');
						var field = $(this).data('field');
						var column = Plugin.getColumnByField(field);
						// sort is disabled for this column
						if (typeof column.sortable !== 'undefined' &&
							column.sortable === false) return;

						$(datatable.tableHead).
							find('.m-datatable__cell > span > i').
							remove();

						if (options.sortable) {
							Plugin.spinnerCallback(true);

							var sort = 'desc';
							if (meta.field === field) {
								sort = meta.sort;
							}

							// toggle sort
							sort = typeof sort === 'undefined' || sort === 'desc'
								? 'asc'
								: 'desc';

							// update field and sort params
							meta = {field: field, sort: sort};
							Plugin.setDataSourceParam('sort', meta);

							sortObj.setIcon();

							setTimeout(function() {
								Plugin.dataRender('sort');
								$(datatable).trigger('m-datatable--on-sort', meta);
							}, 300);
						}
					},
				};
				sortObj.init();
			},

			/**
			 * Update JSON data list linked with sort, filter and pagination.
			 * Call this method, before using dataSet variable.
			 * @returns {*|null}
			 */
			localDataUpdate: function() {
				var params = Plugin.getDataSourceParam();
				if (typeof datatable.originalDataSet === 'undefined') {
					datatable.originalDataSet = datatable.dataSet;
				}

				var field = params.sort.field;
				var sort = params.sort.sort;
				var column = Plugin.getColumnByField(field);
				if (typeof column !== 'undefined') {
					if (typeof column.sortCallback === 'function') {
						datatable.dataSet = column.sortCallback(datatable.originalDataSet, sort, column);
					} else {
						datatable.dataSet = Plugin.sortCallback(datatable.originalDataSet, sort, column);
					}
				} else {
					datatable.dataSet = datatable.originalDataSet;
				}

				if (typeof params.query === 'object') {
					params.query = params.query || {};

					var search = $(Plugin.getOption('search.input')).val();
					if (typeof search !== 'undefined' && search !== '') {
						search = search.toLowerCase();
						datatable.dataSet = $.grep(datatable.dataSet, function(obj) {
							for (var field in obj) {
								if (!obj.hasOwnProperty(field)) continue;
								if (typeof obj[field] === 'string') {
									if (obj[field].toLowerCase().indexOf(search) > -1) {
										return true;
									}
								}
							}
							return false;
						});
						// remove generalSearch as we don't need this for next columns filter
						delete params.query[Plugin.getGeneralSearchKey()];
					}

					// remove empty element from array
					$.each(params.query, function(k, v) {
						if (v === '') {
							delete params.query[k];
						}
					});

					// filter array by query
					datatable.dataSet = Plugin.filterArray(datatable.dataSet, params.query);

					// reset array index
					datatable.dataSet = datatable.dataSet.filter(function() {
						return true;
					});
				}

				return datatable.dataSet;
			},

			/**
			 * Utility helper to filter array by object pair of {key:value}
			 * @param list
			 * @param args
			 * @param operator
			 * @returns {*}
			 */
			filterArray: function(list, args, operator) {
				if (typeof list !== 'object') {
					return [];
				}

				if (typeof operator === 'undefined') operator = 'AND';

				if (typeof args !== 'object') {
					return list;
				}

				operator = operator.toUpperCase();

				if ($.inArray(operator, ['AND', 'OR', 'NOT']) === -1) {
					return [];
				}

				var count = Object.keys(args).length;
				var filtered = [];

				$.each(list, function(key, obj) {
					var to_match = obj;

					var matched = 0;
					$.each(args, function(m_key, m_value) {
						if (to_match.hasOwnProperty(m_key) && m_value == to_match[m_key]) {
							matched++;
						}
					});

					if (('AND' == operator && matched == count) ||
						('OR' == operator && matched > 0) ||
						('NOT' == operator && 0 == matched)) {
						filtered[key] = obj;
					}
				});

				list = filtered;

				return list;
			},

			/**
			 * Reset lock column scroll to 0 when resize
			 */
			resetScroll: function() {
				if (typeof options.detail === 'undefined' && Plugin.getDepth() === 1) {
					$(datatable.table).find('.m-datatable__row').css('left', 0);
					$(datatable.table).find('.m-datatable__lock').css('top', 0);
					$(datatable.tableBody).scrollTop(0);
				}
			},

			/**
			 * Get column options by field
			 * @param field
			 * @returns {boolean}
			 */
			getColumnByField: function(field) {
				var result;
				$.each(options.columns, function(i, column) {
					if (field === column.field) {
						result = column;
						return false;
					}
				});
				return result;
			},

			/**
			 * Get default sort column
			 */
			getDefaultSortColumn: function() {
				var result = {sort: '', field: ''};
				$.each(options.columns, function(i, column) {
					if (typeof column.sortable !== 'undefined'
						&& $.inArray(column.sortable, ['asc', 'desc']) !== -1) {
						result = {sort: column.sortable, field: column.field};
						return false;
					}
				});
				return result;
			},

			/**
			 * Helper to get element dimensions, when the element is hidden
			 * @param element
			 * @param includeMargin
			 * @returns {{width: number, height: number, innerWidth: number, innerHeight: number, outerWidth: number, outerHeight: number}}
			 */
			getHiddenDimensions: function(element, includeMargin) {
				var props = {
						position: 'absolute',
						visibility: 'hidden',
						display: 'block',
					},
					dim = {
						width: 0,
						height: 0,
						innerWidth: 0,
						innerHeight: 0,
						outerWidth: 0,
						outerHeight: 0,
					},
					hiddenParents = $(element).parents().addBack().not(':visible');
				includeMargin = (typeof includeMargin === 'boolean')
					? includeMargin
					: false;

				var oldProps = [];
				hiddenParents.each(function() {
					var old = {};

					for (var name in props) {
						old[name] = this.style[name];
						this.style[name] = props[name];
					}

					oldProps.push(old);
				});

				dim.width = $(element).width();
				dim.outerWidth = $(element).outerWidth(includeMargin);
				dim.innerWidth = $(element).innerWidth();
				dim.height = $(element).height();
				dim.innerHeight = $(element).innerHeight();
				dim.outerHeight = $(element).outerHeight(includeMargin);

				hiddenParents.each(function(i) {
					var old = oldProps[i];
					for (var name in props) {
						this.style[name] = old[name];
					}
				});

				return dim;
			},

			getGeneralSearchKey: function() {
				var searchInput = $(Plugin.getOption('search.input'));
				return $(searchInput).prop('name') || $(searchInput).prop('id');
			},

			/**
			 * Get value by dot notation path string and to prevent undefined errors
			 * @param path String Dot notation path in string
			 * @param object Object to iterate
			 * @returns {*}
			 */
			getObject: function(path, object) {
				return path.split('.').reduce(function(obj, i) {
					return obj !== null && typeof obj[i] !== 'undefined' ? obj[i] : null;
				}, object);
			},

			/**
			 * Extend object
			 * @param obj
			 * @param path
			 * @param value
			 * @returns {*}
			 */
			extendObj: function(obj, path, value) {
				var levels = path.split('.'),
					i = 0;

				function createLevel(child) {
					var name = levels[i++];
					if (typeof child[name] !== 'undefined' && child[name] !== null) {
						if (typeof child[name] !== 'object' &&
							typeof child[name] !== 'function') {
							child[name] = {};
						}
					} else {
						child[name] = {};
					}
					if (i === levels.length) {
						child[name] = value;
					} else {
						createLevel(child[name]);
					}
				}

				createLevel(obj);
				return obj;
			},

			/********************
			 ** PUBLIC API METHODS
			 ********************/

			// delay timer
			timer: 0,

			/**
			 * Redraw datatable by recalculating its DOM elements, etc.
			 * @returns {jQuery}
			 */
			redraw: function() {
				Plugin.adjustCellsWidth.call();
				Plugin.adjustCellsHeight.call();
				Plugin.adjustLockContainer.call();
				Plugin.initHeight.call();
				return datatable;
			},

			/**
			 * Shortcode to reload
			 * @returns {jQuery}
			 */
			load: function() {
				Plugin.reload();
				return datatable;
			},

			/**
			 * Datasource reload
			 * @returns {jQuery}
			 */
			reload: function() {
				var delay = (function() {
					return function(callback, ms) {
						clearTimeout(Plugin.timer);
						Plugin.timer = setTimeout(callback, ms);
					};
				})();
				delay(function() {
					// local only. remote pagination will skip this block
					if (options.data.serverFiltering === false) {
						Plugin.localDataUpdate();
					}
					Plugin.dataRender();
					$(datatable).trigger('m-datatable--on-reloaded');
				}, Plugin.getOption('search.delay'));
				return datatable;
			},

			/**
			 * Get record by record ID
			 * @param id
			 * @returns {jQuery}
			 */
			getRecord: function(id) {
				if (typeof datatable.tableBody === 'undefined') datatable.tableBody = $(datatable.table).children('tbody');
				$(datatable.tableBody).find('.m-datatable__cell:first-child').each(function(i, cell) {
					if (id == $(cell).text()) {
						var rowNumber = $(cell).closest('.m-datatable__row').index() + 1;
						datatable.API.record = datatable.API.value = Plugin.getOneRow(datatable.tableBody, rowNumber);
						return datatable;
					}
				});
				return datatable;
			},

			/**
			 * @deprecated in v5.0.6
			 * Get column of current record ID
			 * @param columnName
			 * @returns {jQuery}
			 */
			getColumn: function(columnName) {
				Plugin.setSelectedRecords();
				datatable.API.value = $(datatable.API.record).find('[data-field="' + columnName + '"]');
				return datatable;
			},

			/**
			 * Destroy datatable to original DOM state before datatable was initialized
			 * @returns {jQuery}
			 */
			destroy: function() {
				$(datatable).parent().find('.m-datatable__pager').remove();
				var initialDatatable = $(datatable.initialDatatable).addClass('m-datatable--destroyed').show();
				$(datatable).replaceWith(initialDatatable);
				datatable = initialDatatable;
				$(datatable).trigger('m-datatable--on-destroy');
				Plugin.isInit = false;
				initialDatatable = null;
				return initialDatatable;
			},

			/**
			 * Sort by column field
			 * @param field
			 * @param sort
			 */
			sort: function(field, sort) {
				if (typeof sort === 'undefined') sort = 'asc';
				$(datatable.tableHead).
					find('.m-datatable__cell[data-field="' + field + '"]').
					trigger('click');
				return datatable;
			},

			/**
			 * @deprecated in v5.0.6
			 * Get current selected column value
			 * @returns {jQuery}
			 */
			getValue: function() {
				return $(datatable.API.value).text();
			},

			/**
			 * Set checkbox active
			 * @param cell JQuery selector or checkbox ID
			 */
			setActive: function(cell) {
				if (typeof cell === 'string') {
					// set by checkbox id
					cell = $(datatable.tableBody).
						find('.m-checkbox--single > [type="checkbox"][value="' + cell + '"]');
				}

				$(cell).prop('checked', true);

				// normal table
				var row = $(cell).
					closest('.m-datatable__row').
					addClass('m-datatable__row--active');

				var index = $(row).index() + 1;
				// lock table
				$(row).
					closest('.m-datatable__lock').
					parent().
					find('.m-datatable__row:nth-child(' + index + ')').
					addClass('m-datatable__row--active');

				var ids = [];
				$(row).each(function(i, td) {
					var id = $(td).find('.m-checkbox--single:not(.m-checkbox--all) > [type="checkbox"]').val();
					if (typeof id !== 'undefined') {
						ids.push(id);
					}
				});

				$(datatable).trigger('m-datatable--on-check', [ids]);
			},

			/**
			 * Set checkbox inactive
			 * @param cell JQuery selector or checkbox ID
			 */
			setInactive: function(cell) {
				if (typeof cell === 'string') {
					// set by checkbox id
					cell = $(datatable.tableBody).
						find('.m-checkbox--single > [type="checkbox"][value="' + cell + '"]');
				}

				$(cell).prop('checked', false);

				// normal table
				var row = $(cell).
					closest('.m-datatable__row').
					removeClass('m-datatable__row--active');
				var index = $(row).index() + 1;

				// lock table
				$(row).
					closest('.m-datatable__lock').
					parent().
					find('.m-datatable__row:nth-child(' + index + ')').
					removeClass('m-datatable__row--active');

				var ids = [];
				$(row).each(function(i, td) {
					var id = $(td).find('.m-checkbox--single:not(.m-checkbox--all) > [type="checkbox"]').val();
					if (typeof id !== 'undefined') {
						ids.push(id);
					}
				});

				$(datatable).trigger('m-datatable--on-uncheck', [ids]);
			},

			/**
			 * Set all checkboxes active or inactive
			 * @param active
			 */
			setActiveAll: function(active) {
				// todo; check if child table also will set active?
				var checkboxes = $(datatable.table).find('.m-datatable__body .m-datatable__row').
					find('.m-datatable__cell .m-checkbox [type="checkbox"]');
				if (active) {
					Plugin.setActive(checkboxes);
				} else {
					Plugin.setInactive(checkboxes);
				}
			},

			/**
			 * @deprecated in v5.0.6
			 * Get selected rows which are active
			 * @returns {jQuery}
			 */
			setSelectedRecords: function() {
				datatable.API.record = $(datatable.tableBody).find('.m-datatable__row--active');
				return datatable;
			},

			/**
			 * Get selected records
			 * @returns {null}
			 */
			getSelectedRecords: function() {
				// support old method
				Plugin.setSelectedRecords();
				datatable.API.record = datatable.rows('.m-datatable__row--active').nodes();
				return datatable.API.record;
			},

			/**
			 * Get options by dots notation path
			 * @param path String Dot notation path in string
			 * @returns {*}
			 */
			getOption: function(path) {
				return Plugin.getObject(path, options);
			},

			/**
			 * Set global options nodes by dots notation path
			 * @param path
			 * @param object
			 */
			setOption: function(path, object) {
				options = Plugin.extendObj(options, path, object);
			},

			/**
			 * Search filter for local & remote
			 * @param value
			 * @param columns. Optional list of columns to be filtered.
			 */
			search: function(value, columns) {
				if (typeof columns !== 'undefined') columns = $.makeArray(columns);
				var delay = (function() {
					return function(callback, ms) {
						clearTimeout(Plugin.timer);
						Plugin.timer = setTimeout(callback, ms);
					};
				})();

				delay(function() {
					// get query parameters
					var query = Plugin.getDataSourceQuery();

					// search not by columns
					if (typeof columns === 'undefined' && typeof value !== 'undefined') {
						var key = Plugin.getGeneralSearchKey();
						query[key] = value;
					}

					// search by columns, support multiple columns
					if (typeof columns === 'object') {
						$.each(columns, function(k, column) {
							query[column] = value;
						});
						// remove empty element from arrays
						$.each(query, function(k, v) {
							if (v === '') {
								delete query[k];
							}
						});
					}

					Plugin.setDataSourceQuery(query);

					// local filter only. remote pagination will skip this block
					if (options.data.serverFiltering === false) {
						Plugin.localDataUpdate();
					}
					Plugin.dataRender();
				}, Plugin.getOption('search.delay'));
			},

			/**
			 * Set datasource params
			 * @param param
			 * @param value
			 */
			setDataSourceParam: function(param, value) {
				var defaultSort = Plugin.getDefaultSortColumn();
				datatable.API.params = $.extend({}, {
					pagination: {page: 1, perpage: Plugin.getOption('data.pageSize')},
					sort: {sort: defaultSort.sort, field: defaultSort.field},
					query: {},
				}, datatable.API.params, Plugin.stateGet(Plugin.stateId));

				datatable.API.params = Plugin.extendObj(datatable.API.params, param, value);

				Plugin.stateKeep(Plugin.stateId, datatable.API.params);
			},

			/**
			 * Get datasource params
			 * @param param
			 */
			getDataSourceParam: function(param) {
				var defaultSort = Plugin.getDefaultSortColumn();
				datatable.API.params = $.extend({}, {
					pagination: {page: 1, perpage: Plugin.getOption('data.pageSize')},
					sort: {sort: defaultSort.sort, field: defaultSort.field},
					query: {},
				}, datatable.API.params, Plugin.stateGet(Plugin.stateId));

				if (typeof param === 'string') {
					return Plugin.getObject(param, datatable.API.params);
				}

				return datatable.API.params;
			},

			/**
			 * Shortcode to datatable.getDataSourceParam('query');
			 * @returns {*}
			 */
			getDataSourceQuery: function() {
				return Plugin.getDataSourceParam('query') || {};
			},

			/**
			 * Shortcode to datatable.setDataSourceParam('query', query);
			 * @param query
			 */
			setDataSourceQuery: function(query) {
				Plugin.setDataSourceParam('query', query);
			},

			/**
			 * Get current page number
			 * @returns {number}
			 */
			getCurrentPage: function() {
				return $(datatable.table).
					siblings('.m-datatable__pager').
					last().
					find('.m-datatable__pager-nav').
					find('.m-datatable__pager-link.m-datatable__pager-link--active').
					data('page') || 1;
			},

			/**
			 * Get selected dropdown page size
			 * @returns {*|number}
			 */
			getPageSize: function() {
				return $(datatable.table).
					siblings('.m-datatable__pager').
					last().
					find('.m-datatable__pager-size').
					val() || 10;
			},

			/**
			 * Get total rows
			 */
			getTotalRows: function() {
				return datatable.API.params.pagination.total;
			},

			/**
			 * Get full dataset in grid
			 * @returns {*|null|Array}
			 */
			getDataSet: function() {
				return datatable.originalDataSet;
			},

			/**
			 * @deprecated in v5.0.6
			 * Hide column by column's field name
			 * @param fieldName
			 */
			hideColumn: function(fieldName) {
				// add hide option for this column
				$.map(options.columns, function(column) {
					if (fieldName === column.field) {
						column.responsive = {hidden: 'xl'};
					}
					return column;
				});
				// hide current displayed column
				var tds = $.grep($(datatable.table).find('.m-datatable__cell'), function(n, i) {
					return fieldName === $(n).data('field');
				});
				$(tds).hide();
			},

			/**
			 * @deprecated in v5.0.6
			 * Show column by column's field name
			 * @param fieldName
			 */
			showColumn: function(fieldName) {
				// add hide option for this column
				$.map(options.columns, function(column) {
					if (fieldName === column.field) {
						delete column.responsive;
					}
					return column;
				});
				// hide current displayed column
				var tds = $.grep($(datatable.table).find('.m-datatable__cell'), function(n, i) {
					return fieldName === $(n).data('field');
				});
				$(tds).show();
			},

			destroyScroller: function(element) {
				if (typeof element === 'undefined') element = datatable.tableBody;
				$(element).each(function() {
					if ($(this).hasClass('mCustomScrollbar')) {
						try {
							mApp.destroyScroller($(this));
						} catch (e) {
							console.log(e);
						}
					}
				});
			},

			/**
			 * NEW API
			 */

			nodeTr: [],
			nodeTd: [],
			nodeCols: [],
			recentNode: [],

			table: function() {
				return datatable.table;
			},

			/**
			 * Select a single row from the table
			 * @param selector
			 * @returns {jQuery}
			 */
			row: function(selector) {
				Plugin.rows(selector);
				Plugin.nodeTr = Plugin.recentNode = $(Plugin.nodeTr).first();
				return datatable;
			},

			/**
			 * Select multiple rows from the table
			 * @param selector
			 * @returns {jQuery}
			 */
			rows: function(selector) {
				Plugin.nodeTr = Plugin.recentNode = $(datatable.tableBody).find(selector).filter('.m-datatable__row');
				return datatable;
			},

			/**
			 * Select a single column from the table
			 * @param index zero-based index
			 * @returns {jQuery}
			 */
			column: function(index) {
				Plugin.nodeCols = Plugin.recentNode = $(datatable.tableBody).find('.m-datatable__cell:nth-child(' + (index + 1) + ')');
				return datatable;
			},

			/**
			 * Select multiple columns from the table
			 * @param selector
			 * @returns {jQuery}
			 */
			columns: function(selector) {
				var context = datatable.table;
				if (Plugin.nodeTr === Plugin.recentNode) {
					context = Plugin.nodeTr;
				}
				var columns = $(context).find('.m-datatable__cell[data-field="' + selector + '"]');
				if (columns.length > 0) {
					Plugin.nodeCols = Plugin.recentNode = columns;
				} else {
					Plugin.nodeCols = Plugin.recentNode = $(context).find(selector).filter('.m-datatable__cell');
				}
				return datatable;
			},

			cell: function(selector) {
				Plugin.cells(selector);
				Plugin.nodeTd = Plugin.recentNode = $(Plugin.nodeTd).first();
				return datatable;
			},

			cells: function(selector) {
				var cells = $(datatable.tableBody).find('.m-datatable__cell');
				if (typeof selector !== 'undefined') {
					cells = $(cells).filter(selector);
				}
				Plugin.nodeTd = Plugin.recentNode = cells;
				return datatable;
			},

			/**
			 * Delete the selected row from the table
			 * @returns {jQuery}
			 */
			remove: function() {
				if ($(Plugin.nodeTr.length) && Plugin.nodeTr === Plugin.recentNode) {
					$(Plugin.nodeTr).remove();
				}
				return datatable;
			},

			/**
			 * Show or hide the columns or rows
			 */
			visible: function(bool) {
				if ($(Plugin.recentNode.length)) {
					if (bool) {
						if (Plugin.recentNode === Plugin.nodeCols) {
							Plugin.setOption('columns.' + Plugin.recentNode.index() + '.responsive', {});
						}
						$(Plugin.recentNode).show();
					} else {
						if (Plugin.recentNode === Plugin.nodeCols) {
							Plugin.setOption('columns.' + Plugin.recentNode.index() + '.responsive', {hidden: 'xl'});
						}
						$(Plugin.recentNode).hide();
					}
				}
			},

			/**
			 * Get the the DOM element for the selected rows or columns
			 * @returns {Array}
			 */
			nodes: function() {
				return Plugin.recentNode;
			},

			/**
			 * will be implemented soon
			 * @returns {jQuery}
			 */
			dataset: function() {
				return datatable;
			},

		};

		/**
		 * Public API methods can be used directly by datatable
		 */
		$.each(Plugin, function(funcName, func) {
			datatable[funcName] = func;
		});

		// initialize main datatable plugin
		if (typeof options !== 'undefined') {
			if (typeof options === 'string') {
				var method = options;
				datatable = $(this).data('mDatatable');
				if (typeof datatable !== 'undefined') {
					options = datatable.options;
					Plugin[method].apply(this, Array.prototype.slice.call(arguments, 1));
				}
			} else {
				if (!datatable.data('mDatatable') && !$(this).hasClass('m-datatable--loaded')) {
					datatable.dataSet = null;
					datatable.textAlign = {
						left: 'm-datatable__cell--left',
						center: 'm-datatable__cell--center',
						right: 'm-datatable__cell--right',
					};

					// merge default and user defined options
					options = $.extend(true, {}, $.fn.mDatatable.defaults, options);

					datatable.options = options;

					// init plugin process
					Plugin.init.apply(this, [options]);

					$(datatable).data('mDatatable', datatable);
				}
			}
		} else {
			// get existing instance datatable
			datatable = $(this).data('mDatatable');
			if (typeof datatable === 'undefined') {
				$.error('mDatatable not initialized');
			}
			options = datatable.options;
		}

		return datatable;
	};

	// default options
	$.fn.mDatatable.defaults = {
		// datasource definition
		data: {
			type: 'local',
			source: null,
			pageSize: 10, // display records per page
			saveState: {
				// save datatable state(pagination, filtering, sorting, etc) in cookie or browser webstorage
				cookie: false,
				webstorage: true,
			},

			serverPaging: false,
			serverFiltering: false,
			serverSorting: false,
		},

		// layout definition
		layout: {
			theme: 'default', // datatable will support multiple themes and designs
			class: 'm-datatable--brand', // custom wrapper class
			scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
			height: null, // datatable's body's fixed height
			minHeight: 300,
			footer: false, // display/hide footer
			header: true, // display/hide header

			// datatable custom scroll params
			smoothScroll: {
				scrollbarShown: true,
			},

			// datatable spinner
			spinner: {
				overlayColor: '#000000',
				opacity: 0,
				type: 'loader',
				state: 'brand',
				message: true,
			},

			// datatable UI icons
			icons: {
				sort: {asc: 'la la-arrow-up', desc: 'la la-arrow-down'},
				pagination: {
					next: 'la la-angle-right',
					prev: 'la la-angle-left',
					first: 'la la-angle-double-left',
					last: 'la la-angle-double-right',
					more: 'la la-ellipsis-h',
				},
				rowDetail: {expand: 'fa fa-caret-down', collapse: 'fa fa-caret-right'},
			},
		},

		// column sorting
		sortable: true,

		// resize column size with mouse drag coming soon)
		resizable: false,

		// column based filtering (coming soon)
		filterable: false,

		pagination: true,

		// inline and bactch editing (cooming soon)
		editable: false,

		// columns definition
		columns: [],

		search: {
			// enable trigger search by keyup enter
			onEnter: false,
			// input text for search
			input: null,
			// search delay in milliseconds
			delay: 400,
		},

		rows: {
			// deprecated
			callback: function() {},
			// call before row template
			beforeTemplate: function() {},
			// call after row template
			afterTemplate: function() {},
			// auto hide columns, if rows overflow. work on non locked columns
			autoHide: false,
		},

		// toolbar
		toolbar: {
			// place pagination and displayInfo blocks according to the array order
			layout: ['pagination', 'info'],

			// toolbar placement can be at top or bottom or both top and bottom repeated
			placement: ['bottom'],  //'top', 'bottom'

			// toolbar items
			items: {
				// pagination
				pagination: {
					// pagination type(default or scroll)
					type: 'default',

					// number of pages to display by breakpoints
					pages: {
						desktop: {
							layout: 'default',
							pagesNumber: 6,
						},
						tablet: {
							layout: 'default',
							pagesNumber: 3,
						},
						mobile: {
							layout: 'compact',
						},
					},

					// navigation buttons
					navigation: {
						prev: true, // display prev link
						next: true, // display next link
						first: true, // display first link
						last: true // display last link
					},

					// page size select
					pageSizeSelect: [] // display dropdown to select pagination size. -1 is used for "ALl" option
				},

				// records info
				info: true,
			},
		},

		// here we will keep all strings and message used by datatable UI so developer can easiliy translate to any language.
		// By default the stirngs will be in the plugin source and here can override it
		translate: {
			records: {
				processing: 'Please wait...',
				noRecords: 'No records found',
			},
			toolbar: {
				pagination: {
					items: {
						default: {
							first: 'First',
							prev: 'Previous',
							next: 'Next',
							last: 'Last',
							more: 'More pages',
							input: 'Page number',
							select: 'Select page size',
						},
						info: 'Displaying {{start}} - {{end}} of {{total}} records',
					},
				},
			},
		},

		extensions: {},
	};

}(jQuery));
// jquery extension to add animation class into element
jQuery.fn.extend({
    animateClass: function(animationName, callback) {
        var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        jQuery(this).addClass('animated ' + animationName).one(animationEnd, function() {
            jQuery(this).removeClass('animated ' + animationName);
        });

        if (callback) {
            jQuery(this).one(animationEnd, callback);
        }
    },
    animateDelay: function(value) {
        var vendors = ['webkit-', 'moz-', 'ms-', 'o-', ''];
        for (var i = 0; i < vendors.length; i++) {
            jQuery(this).css(vendors[i] + 'animation-delay', value);
        }
    },
    animateDuration: function(value) {
        var vendors = ['webkit-', 'moz-', 'ms-', 'o-', ''];
        for (var i = 0; i < vendors.length; i++) {
            jQuery(this).css(vendors[i] + 'animation-duration', value);
        }
    }
});
(function ($) {
    // Plugin function
    $.fn.mDropdown = function (options) {
        // Plugin scope variable
        var dropdown = {};
        var element = $(this);

        // Plugin class
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (!element.data('dropdown')) {                      
                    // create instance
                    Plugin.init(options);
                    Plugin.build();
                    Plugin.setup();
                    
                    // assign instance to the element                    
                    element.data('dropdown', dropdown);
                } else {
                    // get instance from the element
                    dropdown = element.data('dropdown');
                }               

                return dropdown;
            },

            /**
             * Initialize
             */
            init: function(options) {
                dropdown.events = [];
                dropdown.eventOne = false;
                dropdown.close = element.find('.m-dropdown__close');
                dropdown.toggle = element.find('.m-dropdown__toggle');
                dropdown.arrow = element.find('.m-dropdown__arrow');
                dropdown.wrapper = element.find('.m-dropdown__wrapper');
                dropdown.scrollable = element.find('.m-dropdown__scrollable');
                dropdown.defaultDropPos = element.hasClass('m-dropdown--up') ? 'up' : 'down';
                dropdown.currentDropPos = dropdown.defaultDropPos;

                dropdown.options = $.extend(true, {}, $.fn.mDropdown.defaults, options);
                if (element.data('drop-auto') === true) {
                    dropdown.options.dropAuto = true;
                } else if (element.data('drop-auto') === false) {
                    dropdown.options.dropAuto = false;
                }               

                if (dropdown.scrollable.length > 0) {
                    if (dropdown.scrollable.data('min-height')) {
                        dropdown.options.minHeight = dropdown.scrollable.data('min-height');
                    }

                    if (dropdown.scrollable.data('max-height')) {
                        dropdown.options.maxHeight = dropdown.scrollable.data('max-height');
                    }
                }                
            },

            /**
             * Build DOM and init event handlers
             */
            build: function () {
                if (mUtil.isMobileDevice()) {
                    if (element.data('dropdown-toggle') == 'hover' || element.data('dropdown-toggle') == 'click') { 
                        dropdown.options.toggle = 'click';
                    } else {
                        dropdown.options.toggle = 'click'; 
                        dropdown.toggle.click(Plugin.toggle); 
                    }
                } else {
                    if (element.data('dropdown-toggle') == 'hover') {     
                        dropdown.options.toggle = 'hover';              
                        element.mouseleave(Plugin.hide);
                    } else if(element.data('dropdown-toggle') == 'click') {
                        dropdown.options.toggle = 'click';                  
                    } else {
                        if (dropdown.options.toggle == 'hover') {
                            element.mouseenter(Plugin.show);
                            element.mouseleave(Plugin.hide);
                        } else {
                            dropdown.toggle.click(Plugin.toggle);      
                        }
                    }
                }                

                // handle dropdown close icon
                if (dropdown.close.length) {
                    dropdown.close.on('click', Plugin.hide);
                }

                // disable dropdown close
                Plugin.disableClose();
            }, 

            /**
             * Setup dropdown
             */
            setup: function () {
                if (dropdown.options.placement) {
                    element.addClass('m-dropdown--' + dropdown.options.placement);
                }

                if (dropdown.options.align) {
                    element.addClass('m-dropdown--align-' + dropdown.options.align);
                } 

                if (dropdown.options.width) {
                    dropdown.wrapper.css('width', dropdown.options.width);
                }

                if (element.data('dropdown-persistent')) {
                    dropdown.options.persistent = true;
                }
        
                // handle height
                if (dropdown.options.minHeight) {
                    dropdown.scrollable.css('min-height', dropdown.options.minHeight);                    
                } 

                if (dropdown.options.maxHeight) {
                    dropdown.scrollable.css('max-height', dropdown.options.maxHeight);     
                    dropdown.scrollable.css('overflow-y', 'auto'); 

                    if (mUtil.isDesktopDevice()) {
                        mApp.initScroller(dropdown.scrollable, {});                
                    }   
                }      

                // set zindex
                Plugin.setZindex();
            },

            /**
             * sync 
             */
            sync: function () {
                $(element).data('dropdown', dropdown);
            }, 

            /**
             * Sync dropdown object with jQuery element
             */
            disableClose: function () {
                element.on('click', '.m-dropdown--disable-close, .mCSB_1_scrollbar', function (e) {
                    e.preventDefault();
                    e.stopPropagation();
                });
            },

            /**
             * Toggle dropdown
             */
            toggle: function () {
                if (dropdown.open) {
                    return Plugin.hide();
                } else {
                    return Plugin.show();
                }
            },

            /**
             * Set content
             */
            setContent: function (content) {
                element.find('.m-dropdown__content').html(content);
                
                return dropdown;
            },

            /**
             * Show dropdown
             */
            show: function() {
                if (dropdown.options.toggle == 'hover' && element.data('hover')) {
                    Plugin.clearHovered(); 
                    return dropdown;
                }

                if (dropdown.open) {
                    return dropdown;
                }

                if (dropdown.arrow.length > 0) {
                    Plugin.adjustArrowPos();
                }

                Plugin.eventTrigger('beforeShow'); 

                Plugin.hideOpened();

                element.addClass('m-dropdown--open');

                if (mUtil.isMobileDevice() && dropdown.options.mobileOverlay) {
                    var zIndex = dropdown.wrapper.css('zIndex') - 1;
                    var dropdownoff = $('<div class="m-dropdown__dropoff"></div>');

                    dropdownoff.css('zIndex', zIndex);
                    dropdownoff.data('dropdown', element);
                    element.data('dropoff', dropdownoff);
                    element.after(dropdownoff);
                    dropdownoff.click(function(e) {
                        Plugin.hide();
                        $(this).remove();                    
                        e.preventDefault();
                    });
                } 

                element.focus();
                element.attr('aria-expanded', 'true');
                dropdown.open = true;

                Plugin.handleDropPosition();          

                Plugin.eventTrigger('afterShow');

                return dropdown;
            },

            /**
             * Clear dropdown hover
             */
            clearHovered: function () {
                element.removeData('hover');
                var timeout = element.data('timeout');
                element.removeData('timeout');
                clearTimeout(timeout);
            },

            /**
             * Hide hovered dropdown
             */
            hideHovered: function(force) {
                if (force) {
                    if (Plugin.eventTrigger('beforeHide') === false) {
                        // cancel hide
                        return;
                    }  

                    Plugin.clearHovered();        
                    element.removeClass('m-dropdown--open');
                    dropdown.open = false;
                    Plugin.eventTrigger('afterHide');
                } else {
                    if (Plugin.eventTrigger('beforeHide') === false) {
                        // cancel hide
                        return;
                    }
                    var timeout = setTimeout(function() {
                        if (element.data('hover')) {
                            Plugin.clearHovered();        
                            element.removeClass('m-dropdown--open');
                            dropdown.open = false;
                            Plugin.eventTrigger('afterHide');
                        }
                    }, dropdown.options.hoverTimeout);

                    element.data('hover', true);
                    element.data('timeout', timeout); 
                }     
            },

            /**
             * Hide clicked dropdown
             */
            hideClicked: function() {    
                if (Plugin.eventTrigger('beforeHide') === false) {
                    // cancel hide
                    return;
                }             
                element.removeClass('m-dropdown--open');
                if (element.data('dropoff')) {
                    element.data('dropoff').remove();
                }
                dropdown.open = false;
                Plugin.eventTrigger('afterHide');
            },

            /**
             * Hide dropdown
             */
            hide: function(force) {
                if (dropdown.open === false) {
                    return dropdown;
                }

                if (dropdown.options.toggle == 'hover') {
                    Plugin.hideHovered(force);
                } else {
                    Plugin.hideClicked();
                }

                if (dropdown.defaultDropPos == 'down' && dropdown.currentDropPos == 'up') {
                    element.removeClass('m-dropdown--up');
                    dropdown.arrow.prependTo(dropdown.wrapper);
                    dropdown.currentDropPos = 'down';
                }

                return dropdown;                
            },

            /**
             * Hide opened dropdowns
             */
            hideOpened: function() {
                $('.m-dropdown.m-dropdown--open').each(function() {
                    $(this).mDropdown().hide(true);
                });
            },

            /**
             * Adjust dropdown arrow positions
             */
            adjustArrowPos: function() {
                var width = element.outerWidth();
                var alignment = dropdown.arrow.hasClass('m-dropdown__arrow--right') ? 'right' : 'left';
                var pos = 0;

                if (dropdown.arrow.length > 0) {
                    if (mUtil.isInResponsiveRange('mobile') && element.hasClass('m-dropdown--mobile-full-width')) {
                        pos = element.offset().left + (width / 2) - Math.abs(dropdown.arrow.width() / 2) - parseInt(dropdown.wrapper.css('left'));
                        dropdown.arrow.css('right', 'auto');    
                        dropdown.arrow.css('left', pos);    
                        dropdown.arrow.css('margin-left', 'auto');
                        dropdown.arrow.css('margin-right', 'auto');
                    } else if (dropdown.arrow.hasClass('m-dropdown__arrow--adjust')) {
                        pos = width / 2 - Math.abs(dropdown.arrow.width() / 2);
                        if (element.hasClass('m-dropdown--align-push')) {
                            pos = pos + 20;
                        }
                        if (alignment == 'right') { 
                            dropdown.arrow.css('left', 'auto');  
                            dropdown.arrow.css('right', pos);
                        } else {                            
                            dropdown.arrow.css('right', 'auto');  
                            dropdown.arrow.css('left', pos);
                        }  
                    }                    
                }
            },

            /**
             * Change dropdown drop position
             */
            handleDropPosition: function() {
                return;
                
                if (dropdown.options.dropAuto == true) {
                    if (Plugin.isInVerticalViewport() === false) {
                        if (dropdown.currentDropPos == 'up') {
                            element.removeClass('m-dropdown--up');
                            dropdown.arrow.prependTo(dropdown.wrapper);
                            dropdown.currentDropPos = 'down';
                        } else if (dropdown.currentDropPos == 'down') {
                            element.addClass('m-dropdown--up');
                            dropdown.arrow.appendTo(dropdown.wrapper);
                            dropdown.currentDropPos = 'up'; 
                        }
                    }
                }
            },

            /**
             * Get zindex
             */
            setZindex: function() {
                var oldZindex = dropdown.wrapper.css('z-index');
                var newZindex = mUtil.getHighestZindex(element);
                if (newZindex > oldZindex) {
                    dropdown.wrapper.css('z-index', zindex);
                }
            },

            /**
             * Check persistent
             */
            isPersistent: function () {
                return dropdown.options.persistent;
            },

            /**
             * Check persistent
             */
            isShown: function () {
                return dropdown.open;
            },

            /**
             * Check if dropdown is in viewport
             */
            isInVerticalViewport: function() {
                var el = dropdown.wrapper;
                var offset = el.offset();
                var height = el.outerHeight();
                var width = el.width();
                var scrollable = el.find('[data-scrollable]');

                if (scrollable.length) {
                    if (scrollable.data('max-height')) {
                        height += parseInt(scrollable.data('max-height'));
                    } else if(scrollable.data('height')) {
                        height += parseInt(scrollable.data('height'));
                    }
                }

                return (offset.top + height < $(window).scrollTop() + $(window).height());
            },

            /**
             * Trigger events
             */
            eventTrigger: function(name) {
                for (i = 0; i < dropdown.events.length; i++) {
                    var event = dropdown.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                dropdown.events[i].fired = true;
                                return event.handler.call(this, dropdown);
                            }
                        } else {
                            return  event.handler.call(this, dropdown);
                        }
                    }
                }
            },

            addEvent: function(name, handler, one) {
                dropdown.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();

                return dropdown;
            }
        };

        // Run plugin
        Plugin.run.apply(this, [options]);

        //////////////////////
        // ** Public API ** //
        //////////////////////
       
        /**
         * Show dropdown
         * @returns {mDropdown}
         */
        dropdown.show = function () {
            return Plugin.show();
        };

        /**
         * Hide dropdown
         * @returns {mDropdown}
         */
        dropdown.hide = function () {
            return Plugin.hide();
        };

        /**
         * Toggle dropdown
         * @returns {mDropdown}
         */
        dropdown.toggle = function () {
            return Plugin.toggle();
        };

        /**
         * Toggle dropdown
         * @returns {mDropdown}
         */
        dropdown.isPersistent = function () {
            return Plugin.isPersistent();
        };

        /**
         * Check shown state
         * @returns {mDropdown}
         */
        dropdown.isShown = function () {
            return Plugin.isShown();
        };

        /**
         * Check shown state
         * @returns {mDropdown}
         */
        dropdown.fixDropPosition = function () {
            return Plugin.handleDropPosition();
        };

        /**
         * Set dropdown content
         * @returns {mDropdown}
         */
        dropdown.setContent = function (content) {
            return Plugin.setContent(content);
        };

        /**
         * Set dropdown content
         * @returns {mDropdown}
         */
        dropdown.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Set dropdown content
         * @returns {mDropdown}
         */
        dropdown.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };        

        return dropdown;
    };

    // default options
    $.fn.mDropdown.defaults = {
        toggle: 'click',
        hoverTimeout: 300,
        skin: 'default',
        height: 'auto',
        dropAuto: true,
        maxHeight: false,
        minHeight: false,
        persistent: false,
        mobileOverlay: true
    };

    // global init
    if (mUtil.isMobileDevice()) {
        $(document).on('click', '[data-dropdown-toggle="click"] .m-dropdown__toggle, [data-dropdown-toggle="hover"] .m-dropdown__toggle', function(e) { 
            e.preventDefault(); 
            $(this).parent('.m-dropdown').mDropdown().toggle(); 
        });
    } else {
        $(document).on('click', '[data-dropdown-toggle="click"] .m-dropdown__toggle', function(e) { 
            e.preventDefault();
            $(this).parent('.m-dropdown').mDropdown().toggle();   
        });
        $(document).on('mouseenter', '[data-dropdown-toggle="hover"]', function(e) { 
            $(this).mDropdown().toggle();
        });
    }

    // handle global document click
    $(document).on('click', function(e) {
        $('.m-dropdown.m-dropdown--open').each(function() {
            if (!$(this).data('dropdown')) {
                return;
            }        
            
            var target = $(e.target);
            var dropdown = $(this).mDropdown();
            var toggle = $(this).find('.m-dropdown__toggle');

            if (toggle.length > 0 && target.is(toggle) !== true && toggle.find(target).length === 0 && target.find(toggle).length === 0 && dropdown.isPersistent() == false) {
                dropdown.hide();     
            } else if ($(this).find(target).length === 0) {
                dropdown.hide();       
            }
        });
    });
}(jQuery));
(function ($) {
    // Plugin function
    $.fn.mExample = function (options) {
        // Plugin scope variable
        var example = {};
        var element = $(this);

        // Plugin class
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (!element.data('example')) {                      
                    // create instance
                    Plugin.init(options);
                    Plugin.build();
                    Plugin.setup();
                    
                    // assign instance to the element                    
                    element.data('example', example);
                } else {
                    // get instance from the element
                    example = element.data('example');
                }               

                return example;
            },

            /**
             * Initialize
             */
            init: function(options) {
                example.events = [];
                example.scrollable = element.find('.m-example__scrollable');
                example.options = $.extend(true, {}, $.fn.mExample.defaults, options);
                if (example.scrollable.length > 0) {
                    if (example.scrollable.data('data-min-height')) {
                        example.options.minHeight = example.scrollable.data('data-min-height');
                    }

                    if (example.scrollable.data('data-max-height')) {
                        example.options.maxHeight = example.scrollable.data('data-max-height');
                    }
                }                
            },

            /**
             * Build DOM and init event handlers
             */
            build: function () {
                if (mUtil.isMobileDevice()) {
                    
                } else {
                    
                }                
            }, 

            /**
             * Setup example
             */
            setup: function () {
               
            },

            /**
             * Trigger events
             */
            eventTrigger: function(name) {
                for (i = 0; i < example.events.length; i++) {
                    var event = example.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                example.events[i].fired = true;
                                return event.handler.call(this, example);
                            }
                        } else {
                            return  event.handler.call(this, example);
                        }
                    }
                }
            },

            addEvent: function(name, handler, one) {
                example.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();
            }
        };

        // Run plugin
        Plugin.run.apply(this, [options]);

        //////////////////////
        // ** Public API ** //
        //////////////////////
       

        /**
         * Set example content
         * @returns {mExample}
         */
        example.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Set example content
         * @returns {mExample}
         */
        example.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };        

        return example;
    };

    // default options
    $.fn.mExample.defaults = {
       
    };
}(jQuery));
(function($) {

    // Plugin function
    $.fn.mHeader = function(options) {
        // Plugin scope variable
        var header = this;
        var element = $(this);

        // Plugin class
        var Plugin = {
            /**
             * Run plugin
             * @returns {mHeader}
             */
            run: function(options) { 
                if (element.data('header')) {
                    header = element.data('header');                
                } else {
                    // reset header
                    Plugin.init(options);

                    // reset header
                    Plugin.reset();

                    // build header
                    Plugin.build();

                    element.data('header', header);
                } 

                return header;
            },

            /**
             * Handles subheader click toggle
             * @returns {mHeader}
             */
            init: function(options) {                
                header.options = $.extend(true, {}, $.fn.mHeader.defaults, options);
            },

            /**
             * Reset header
             * @returns {mHeader}
             */
            build: function() {
                Plugin.toggle();                   
            },

            toggle: function() {
                var lastScrollTop = 0;

                if (header.options.minimize.mobile === false && header.options.minimize.desktop === false) {
                    return;
                }          

                $(window).scroll(function() {
                    var offset = 0;

                    if (mUtil.isInResponsiveRange('desktop')) {
                        offset = header.options.offset.desktop;
                        on = header.options.minimize.desktop.on;
                        off = header.options.minimize.desktop.off;
                    } else if (mUtil.isInResponsiveRange('tablet-and-mobile')) {
                        offset = header.options.offset.mobile;
                        on = header.options.minimize.mobile.on;
                        off = header.options.minimize.mobile.off;
                    }

                    var st = $(this).scrollTop();

                    if (header.options.classic) {
                        if (st > offset){ // down scroll mode
                            $("body").addClass(on);
                            $("body").removeClass(off);
                        } else { // back scroll mode
                            $("body").addClass(off);
                            $("body").removeClass(on);
                        }
                    } else {
                        if (st > offset && lastScrollTop < st){ // down scroll mode
                            $("body").addClass(on);
                            $("body").removeClass(off);
                        } else { // back scroll mode
                            $("body").addClass(off);
                            $("body").removeClass(on);
                        }
                        
                        lastScrollTop = st;
                    }
                });
            },

            /**
             * Reset menu
             * @returns {mMenu}
             */
            reset: function() {
            }
        };

        // Run plugin
        Plugin.run.apply(header, [options]);

        //////////////////////
        // ** Public API ** //
        //////////////////////

        /**
         * Disable header for given time
         * @returns {jQuery}
         */
        header.publicMethod = function() {
        	//return Plugin.publicMethod();
        };

        // Return plugin instance
        return header;
    };

    // Plugin default options
    $.fn.mHeader.defaults = {
        classic: false,
        offset: {
            mobile: 150,
            desktop: 200        
        },
        minimize: {
            mobile: false,
            desktop: false
        }
    }; 
}(jQuery));
(function($) {

    // Plugin function
    $.fn.mMenu = function(options) {
        // Plugin scope variable
        var menu = this;
        var element = $(this);

        // Plugin class
        var Plugin = {
            /**
             * Run plugin
             * @returns {mMenu}
             */
            run: function(options, reinit) { 
                if (element.data('menu') && reinit !== true) {
                    menu = element.data('menu');                
                } else {
                    // reset menu
                    Plugin.init(options);

                    // reset menu
                    Plugin.reset();

                    // build menu
                    Plugin.build();

                    element.data('menu', menu);
                } 

                return menu;
            },

            /**
             * Handles submenu click toggle
             * @returns {mMenu}
             */
            init: function(options) { 
                menu.events = [];

                // merge default and user defined options
                menu.options = $.extend(true, {}, $.fn.mMenu.defaults, options);

                // pause menu
                menu.pauseDropdownHoverTime = 0;
            },

            /**
             * Reset menu
             * @returns {mMenu}
             */
            build: function() {
                element.on('click', '.m-menu__toggle', Plugin.handleSubmenuAccordion);
                

                // dropdown mode(hoverable)
                if (Plugin.getSubmenuMode() === 'dropdown' || Plugin.isConditionalSubmenuDropdown()) {   
                	// dropdown submenu - hover toggle
	                element.on({mouseenter: Plugin.handleSubmenuDrodownHoverEnter, mouseleave: Plugin.handleSubmenuDrodownHoverExit}, '[data-menu-submenu-toggle="hover"]');

	                // dropdown submenu - click toggle
	                element.on('click', '[data-menu-submenu-toggle="click"] .m-menu__toggle', Plugin.handleSubmenuDropdownClick);
                }

                element.find('.m-menu__item:not(.m-menu__item--submenu) > .m-menu__link:not(.m-menu__toggle)').click(Plugin.handleLinkClick);             
            },

            /**
             * Reset menu
             * @returns {mMenu}
             */
            reset: function() {
            	// remove accordion handler
            	element.off('click', '.m-menu__toggle', Plugin.handleSubmenuAccordion);

            	// remove dropdown handlers
            	element.off({mouseenter: Plugin.handleSubmenuDrodownHoverEnter, mouseleave: Plugin.handleSubmenuDrodownHoverExit}, '[data-menu-submenu-toggle="hover"]');
            	element.off('click', '[data-menu-submenu-toggle="click"] .m-menu__toggle', Plugin.handleSubmenuDropdownClick);

                // reset mobile menu attributes
                menu.find('.m-menu__submenu, .m-menu__inner').css('display', '');
                menu.find('.m-menu__item--hover').removeClass('m-menu__item--hover');
                menu.find('.m-menu__item--open:not(.m-menu__item--expanded)').removeClass('m-menu__item--open');
            },

            /**
            * Get submenu mode for current breakpoint and menu state
            * @returns {mMenu}
            */
            getSubmenuMode: function() {                
                if (mUtil.isInResponsiveRange('desktop')) {
                    if (mUtil.isset(menu.options.submenu, 'desktop.state.body')) {
                        if ($('body').hasClass(menu.options.submenu.desktop.state.body)) {
                            return menu.options.submenu.desktop.state.mode;
                        } else {
                            return menu.options.submenu.desktop.default;
                        }
                    } else if (mUtil.isset(menu.options.submenu, 'desktop') ){
                        return menu.options.submenu.desktop;
                    }
                } else if (mUtil.isInResponsiveRange('tablet') && mUtil.isset(menu.options.submenu, 'tablet')) {
                    return menu.options.submenu.tablet;
                } else if (mUtil.isInResponsiveRange('mobile') && mUtil.isset(menu.options.submenu, 'mobile')) {
                    return menu.options.submenu.mobile;
                } else {
                    return false;
                }
            },

            /**
            * Get submenu mode for current breakpoint and menu state
            * @returns {mMenu}
            */
            isConditionalSubmenuDropdown: function() {
                if (mUtil.isInResponsiveRange('desktop') && mUtil.isset(menu.options.submenu, 'desktop.state.body')) {
                    return true;
                } else {
                    return false;    
                }                
            },

            /**
             * Handles menu link click
             * @returns {mMenu}
             */
            handleLinkClick: function(e) {    

                if (Plugin.eventTrigger('linkClick', $(this)) === false) {
                    e.preventDefault();
                };

                if (Plugin.getSubmenuMode() === 'dropdown' || Plugin.isConditionalSubmenuDropdown()) { 
                    Plugin.handleSubmenuDropdownClose(e, $(this));
                }
            },

            /**
             * Handles submenu hover toggle
             * @returns {mMenu}
             */
            handleSubmenuDrodownHoverEnter: function(e) {
                if (Plugin.getSubmenuMode() === 'accordion') {
                    return;
                }

                if (menu.resumeDropdownHover() === false) {
                    return;
                }               

                var item = $(this);

                Plugin.showSubmenuDropdown(item);

                if (item.data('hover') == true) {
                    Plugin.hideSubmenuDropdown(item, false);
                }
            },

            /**
             * Handles submenu hover toggle
             * @returns {mMenu}
             */
            handleSubmenuDrodownHoverExit: function(e) {
                if (menu.resumeDropdownHover() === false) {
                    return;
                }

                if (Plugin.getSubmenuMode() === 'accordion') {
                    return;
                }

                var item = $(this);
                var time = menu.options.dropdown.timeout;

                var timeout = setTimeout(function() {
                    if (item.data('hover') == true) {
                        Plugin.hideSubmenuDropdown(item, true);
                    }
                }, time);

                item.data('hover', true);
                item.data('timeout', timeout);
            },

            /**
             * Handles submenu click toggle
             * @returns {mMenu}
             */
            handleSubmenuDropdownClick: function(e) {
                if (Plugin.getSubmenuMode() === 'accordion') {
                    return;
                }

                var item = $(this).closest('.m-menu__item');

                if (item.data('menu-submenu-mode') == 'accordion') {
                    return;   
                }

                if (item.hasClass('m-menu__item--hover') == false) {
                    item.addClass('m-menu__item--open-dropdown');
                    Plugin.showSubmenuDropdown(item);
                } else {
                    item.removeClass('m-menu__item--open-dropdown');
                    Plugin.hideSubmenuDropdown(item, true);
                }

                e.preventDefault();
            },

            /**
             * Handles submenu dropdown close on link click
             * @returns {mMenu}
             */
            handleSubmenuDropdownClose: function(e, el) {
                // exit if its not submenu dropdown mode
                if (Plugin.getSubmenuMode() === 'accordion') {
                    return;
                }

                var shown = element.find('.m-menu__item.m-menu__item--submenu.m-menu__item--hover');

                // check if currently clicked link's parent item ha
                if (shown.length > 0 && el.hasClass('m-menu__toggle') === false && el.find('.m-menu__toggle').length === 0) {
                    // close opened dropdown menus
                    shown.each(function() {
                        Plugin.hideSubmenuDropdown($(this), true);    
                    });                     
                }
            },

            /**
             * helper functions
             * @returns {mMenu}
             */
            handleSubmenuAccordion: function(e, el) {
                var item = el ? $(el) : $(this);

                if (Plugin.getSubmenuMode() === 'dropdown' && item.closest('.m-menu__item').data('menu-submenu-mode') != 'accordion') {
                    e.preventDefault();
                    return;
                }

                var li = item.closest('li');
                var submenu = li.children('.m-menu__submenu, .m-menu__inner');

                if (submenu.parent('.m-menu__item--expanded').length != 0) {
                    //return;
                }

                if (submenu.length > 0) {
                    e.preventDefault();
                    var speed = menu.options.accordion.slideSpeed;
                    var hasClosables = false;
                    
                    if (li.hasClass('m-menu__item--open') === false) {
                        // hide other accordions
                        if (menu.options.accordion.expandAll === false) {
                            var closables = item.closest('.m-menu__nav, .m-menu__subnav').find('> .m-menu__item.m-menu__item--open.m-menu__item--submenu:not(.m-menu__item--expanded)');
                            closables.each(function() {
                                $(this).children('.m-menu__submenu').slideUp(speed, function() {
                                    Plugin.scrollToItem(item);
                                });                                
                                $(this).removeClass('m-menu__item--open');
                            });

                            if (closables.length > 0) {
                                hasClosables = true;
                            }
                        }                         

                        if (hasClosables) {
                            submenu.slideDown(speed, function() {
                                Plugin.scrollToItem(item);
                            }); 
                            li.addClass('m-menu__item--open');
                        } else {
                            submenu.slideDown(speed, function() {
                                Plugin.scrollToItem(item);
                            });
                            li.addClass('m-menu__item--open');
                        }                        
                    } else {  
                        submenu.slideUp(speed, function() {
                             Plugin.scrollToItem(item);
                        });                        
                        li.removeClass('m-menu__item--open');                  
                    }
                }
            },     

            /**
             * scroll to item function
             * @returns {mMenu}
             */
            scrollToItem: function(item) {
                // handle auto scroll for accordion submenus
                if (mUtil.isInResponsiveRange('desktop') && menu.options.accordion.autoScroll && !element.data('menu-scrollable')) {                        
                    mApp.scrollToViewport(item);
                }
            },

            /**
             * helper functions
             * @returns {mMenu}
             */
            hideSubmenuDropdown: function(item, classAlso) {
                // remove submenu activation class
                if (classAlso) {
                    item.removeClass('m-menu__item--hover');
                }
                // clear timeout
                item.removeData('hover');
                if (item.data('menu-dropdown-toggle-class')) {
                    $('body').removeClass(item.data('menu-dropdown-toggle-class'));
                }
                var timeout = item.data('timeout');
                item.removeData('timeout');
                clearTimeout(timeout);
            },

            /**
             * helper functions
             * @returns {mMenu}
             */
            showSubmenuDropdown: function(item) {
                // close active submenus
                element.find('.m-menu__item--submenu.m-menu__item--hover').each(function() {
                    var el = $(this);
                    if (item.is(el) || el.find(item).length > 0 || item.find(el).length > 0) {
                        return;
                    } else {
                        Plugin.hideSubmenuDropdown(el, true); 
                    }
                });

                // adjust submenu position
                Plugin.adjustSubmenuDropdownArrowPos(item);
                
                // add submenu activation class
                item.addClass('m-menu__item--hover');

                if (item.data('menu-dropdown-toggle-class')) {
                    $('body').addClass(item.data('menu-dropdown-toggle-class'));
                } 

                // handle auto scroll for accordion submenus
                if (Plugin.getSubmenuMode() === 'accordion' && menu.options.accordion.autoScroll) {
                    mApp.scrollTo(item.children('.m-menu__item--submenu'));
                }              
            },                

            /**
             * Handles submenu click toggle
             * @returns {mMenu}
             */
            resize: function(e) {
                if (Plugin.getSubmenuMode() !== 'dropdown') {
                    return;
                }

                var resize = element.find('> .m-menu__nav > .m-menu__item--resize');
                var submenu = resize.find('> .m-menu__submenu');
                var breakpoint;
                var currentWidth = mUtil.getViewPort().width;
                var itemsNumber = element.find('> .m-menu__nav > .m-menu__item').length - 1;
                var check;

                if (
                    Plugin.getSubmenuMode() == 'dropdown' && 
                    (
                        (mUtil.isInResponsiveRange('desktop') && mUtil.isset(menu.options, 'resize.desktop') && (check = menu.options.resize.desktop) && currentWidth <= (breakpoint = resize.data('menu-resize-desktop-breakpoint'))) ||
                        (mUtil.isInResponsiveRange('tablet') && mUtil.isset(menu.options, 'resize.tablet') && (check = menu.options.resize.tablet) && currentWidth <= (breakpoint = resize.data('menu-resize-tablet-breakpoint'))) ||
                        (mUtil.isInResponsiveRange('mobile') && mUtil.isset(menu.options, 'resize.mobile') && (check = menu.options.resize.mobile) && currentWidth <= (breakpoint = resize.data('menu-resize-mobile-breakpoint')))
                    )
                    ) {
                 
                    var moved = submenu.find('> .m-menu__subnav > .m-menu__item').length; // currently move
                    var left = element.find('> .m-menu__nav > .m-menu__item:not(.m-menu__item--resize)').length; // currently left
                    var total = moved + left;

                    if (check.apply() === true) {
                        // return
                        if (moved > 0) {
                            submenu.find('> .m-menu__subnav > .m-menu__item').each(function() {
                                var item = $(this);

                                var elementsNumber = submenu.find('> .m-menu__nav > .m-menu__item:not(.m-menu__item--resize)').length;
                                element.find('> .m-menu__nav > .m-menu__item:not(.m-menu__item--resize)').eq(elementsNumber - 1).after(item);

                                if (check.apply() === false) {
                                    item.appendTo(submenu.find('> .m-menu__subnav'));
                                    return false;
                                }         

                                moved--;
                                left++;                        
                            });
                        }
                    } else {
                        // move
                        if (left > 0) {
                            var items = element.find('> .m-menu__nav > .m-menu__item:not(.m-menu__item--resize)');
                            var index = items.length - 1;
                                
                            for(var i = 0; i < items.length; i++) {
                                var item = $(items.get(index)); 
                                index--;

                                if (check.apply() === true) {
                                    break;
                                }

                                item.appendTo(submenu.find('> .m-menu__subnav'));

                                moved++;
                                left--; 
                            } 
                        }
                    }

                    if (moved > 0) {
                        resize.show();  
                    } else {
                        resize.hide();
                    }                   
                } else {    
                    submenu.find('> .m-menu__subnav > .m-menu__item').each(function() {
                        var elementsNumber = submenu.find('> .m-menu__subnav > .m-menu__item').length;
                        element.find('> .m-menu__nav > .m-menu__item').get(elementsNumber).after($(this));
                    });

                    resize.hide();
                }
            },

            /**
             * Handles submenu slide toggle
             * @returns {mMenu}
             */
            createSubmenuDropdownClickDropoff: function(el) {
                var zIndex = el.find('> .m-menu__submenu').css('zIndex') - 1;
                var dropoff = $('<div class="m-menu__dropoff" style="background: transparent; position: fixed; top: 0; bottom: 0; left: 0; right: 0; z-index: ' + zIndex + '"></div>');
                $('body').after(dropoff);
                dropoff.on('click', function(e) {
                    e.stopPropagation();
                    e.preventDefault();
                    $(this).remove();

                    alert(1);
                    Plugin.hideSubmenuDropdown(el, true);                    
                });
            },

            /**
             * Handles submenu click toggle
             * @returns {mMenu}
             */
            adjustSubmenuDropdownArrowPos: function(item) {                
                var arrow = item.find('> .m-menu__submenu > .m-menu__arrow.m-menu__arrow--adjust');
                var submenu = item.find('> .m-menu__submenu');
                var subnav = item.find('> .m-menu__submenu > .m-menu__subnav');
                
                if (arrow.length > 0) {
                    var pos;
                    var link = item.children('.m-menu__link');

                    if (submenu.hasClass('m-menu__submenu--classic') || submenu.hasClass('m-menu__submenu--fixed')) { 
                        if (submenu.hasClass('m-menu__submenu--right')) {
                            pos = item.outerWidth() / 2;
                            if (submenu.hasClass('m-menu__submenu--pull')) {
                                pos = pos + Math.abs(parseInt(submenu.css('margin-right')));    
                            }  
                            pos = submenu.width() - pos;
                        } else if (submenu.hasClass('m-menu__submenu--left')) {
                            pos = item.outerWidth() / 2;
                            if (submenu.hasClass('m-menu__submenu--pull')) {
                                pos = pos + Math.abs(parseInt(submenu.css('margin-left')));    
                            } 
                        }
                    } else  {
                        if (submenu.hasClass('m-menu__submenu--center') || submenu.hasClass('m-menu__submenu--full')) {
                            pos = item.offset().left - ((mUtil.getViewPort().width - submenu.outerWidth()) / 2);
                            pos = pos + (item.outerWidth() / 2);
                        } else if (submenu.hasClass('m-menu__submenu--left')) {
                            // to do
                        } else if (submenu.hasClass('m-menu__submenu--right')) {
                            // to do
                        }
                    } 

                    arrow.css('left', pos);
                }
            },

            /**
             * Handles submenu hover toggle
             * @returns {mMenu}
             */
            pauseDropdownHover: function(time) {
            	var date = new Date();

            	menu.pauseDropdownHoverTime = date.getTime() + time;
            },

            /**
             * Handles submenu hover toggle
             * @returns {mMenu}
             */
            resumeDropdownHover: function() {
            	var date = new Date();

            	return (date.getTime() > menu.pauseDropdownHoverTime ? true : false);
            },

            /**
             * Reset menu's current active item
             * @returns {mMenu}
             */
            resetActiveItem: function(item) {
                element.find('.m-menu__item--active').each(function() {
                    $(this).removeClass('m-menu__item--active');
                    $(this).children('.m-menu__submenu').css('display', '');

                    $(this).parents('.m-menu__item--submenu').each(function() {
                        $(this).removeClass('m-menu__item--open');
                        $(this).children('.m-menu__submenu').css('display', '');
                    });
                });             

                // close open submenus
                if (menu.options.accordion.expandAll === false) {
                    element.find('.m-menu__item--open').each(function() {
                        $(this).removeClass('m-menu__item--open');
                    });
                }
            },

            /**
             * Sets menu's active item
             * @returns {mMenu}
             */
            setActiveItem: function(item) {
                // reset current active item
                Plugin.resetActiveItem();

                var item = $(item);
                item.addClass('m-menu__item--active');
                item.parents('.m-menu__item--submenu').each(function() {
                    $(this).addClass('m-menu__item--open');
                });
            },

            /**
             * Returns page breadcrumbs for the menu's active item
             * @returns {mMenu}
             */
            getBreadcrumbs: function(item) {
                var breadcrumbs = [];
                var item = $(item);
                var link = item.children('.m-menu__link');

                breadcrumbs.push({
                    text: link.find('.m-menu__link-text').html(), 
                    title: link.attr('title'),
                    href: link.attr('href')
                });

                item.parents('.m-menu__item--submenu').each(function() {
                    var submenuLink = $(this).children('.m-menu__link');
                    breadcrumbs.push({
                        text: submenuLink.find('.m-menu__link-text').html(), 
                        title: submenuLink.attr('title'),
                        href: submenuLink.attr('href')
                    });
                });

                breadcrumbs.reverse();

                return breadcrumbs;
            },

            /**
             * Returns page title for the menu's active item
             * @returns {mMenu}
             */
            getPageTitle: function(item) {
                item = $(item);       

                return item.children('.m-menu__link').find('.m-menu__link-text').html();
            },

            /**
             * Sync 
             */
            sync: function () {
                $(element).data('menu', menu);
            }, 

            /**
             * Trigger events
             */
            eventTrigger: function(name, args) {
                for (i = 0; i < menu.events.length; i++) {
                    var event = menu.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                menu.events[i].fired = true;
                                return event.handler.call(this, menu, args);
                            }
                        } else {
                            return  event.handler.call(this, menu, args);
                        }
                    }
                }
            },

            addEvent: function(name, handler, one) {
                menu.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();
            }
        };

        // Run plugin
        Plugin.run.apply(menu, [options]);

        // Handle plugin on window resize
        if (typeof(options)  !== "undefined") {
            $(window).resize(function() {
                Plugin.run.apply(menu, [options, true]);
            });  
        }        

        //////////////////////
        // ** Public API ** //
        //////////////////////

        /**
         * Set active menu item
         */
        menu.setActiveItem = function(item) {
            return Plugin.setActiveItem(item);
        };

        /**
         * Set breadcrumb for menu item
         */
        menu.getBreadcrumbs = function(item) {
            return Plugin.getBreadcrumbs(item);
        };

        /**
         * Set page title for menu item
         */
        menu.getPageTitle = function(item) {
            return Plugin.getPageTitle(item);
        };

        /**
         * Get submenu mode
         */
        menu.getSubmenuMode = function() {
            return Plugin.getSubmenuMode();
        };

        /**
         * Hide dropdown submenu
         * @returns {jQuery}
         */
        menu.hideDropdown = function(item) {
            Plugin.hideSubmenuDropdown(item, true);
        };

        /**
         * Disable menu for given time
         * @returns {jQuery}
         */
        menu.pauseDropdownHover = function(time) {
        	Plugin.pauseDropdownHover(time);
        };

        /**
         * Disable menu for given time
         * @returns {jQuery}
         */
        menu.resumeDropdownHover = function() {
        	return Plugin.resumeDropdownHover();
        };

        /**
         * Register event
         */
        menu.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        // Return plugin instance
        return menu;
    };

    // Plugin default options
    $.fn.mMenu.defaults = {
        // accordion submenu mode
        accordion: {   
            slideSpeed: 200,  // accordion toggle slide speed in milliseconds
            autoScroll: true, // enable auto scrolling(focus) to the clicked menu item
            expandAll: true   // allow having multiple expanded accordions in the menu
        },
        
        // dropdown submenu mode
        dropdown: {
            timeout: 500  // timeout in milliseconds to show and hide the hoverable submenu dropdown
        }
    }; 

    // Plugin global lazy initialization
    $(document).on('click', function(e) {
        $('.m-menu__nav .m-menu__item.m-menu__item--submenu.m-menu__item--hover[data-menu-submenu-toggle="click"]').each(function() {
            var  element = $(this).parent('.m-menu__nav').parent();
            menu = element.mMenu(); 
            
            if (menu.getSubmenuMode() !== 'dropdown') { 
                return;
            }

            if ($(e.target).is(element) == false && element.find($(e.target)).length == 0) {
                var items = element.find('.m-menu__item--submenu.m-menu__item--hover[data-menu-submenu-toggle="click"]');
                items.each(function() {
                    menu.hideDropdown($(this));
                });
            }          
        });
    });
}(jQuery));
(function ($) {
    // Plugin function
    $.fn.mMessenger = function (options) {
        // Plugin scope variable
        var messenger = {};
        var element = $(this);

        // Plugin class
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (!element.data('messenger')) {                      
                    // create instance
                    Plugin.init(options);
                    Plugin.build();
                    Plugin.setup();
                    
                    // assign instance to the element                    
                    element.data('messenger', messenger);
                } else {
                    // get instance from the element
                    messenger = element.data('messenger');
                }               

                return messenger;
            },

            /**
             * Initialize
             */
            init: function(options) {
                messenger.events = [];
                messenger.scrollable = element.find('.m-messenger__scrollable');
                messenger.options = $.extend(true, {}, $.fn.mMessenger.defaults, options);
                if (messenger.scrollable.length > 0) {
                    if (messenger.scrollable.data('data-min-height')) {
                        messenger.options.minHeight = messenger.scrollable.data('data-min-height');
                    }

                    if (messenger.scrollable.data('data-max-height')) {
                        messenger.options.maxHeight = messenger.scrollable.data('data-max-height');
                    }
                }                
            },

            /**
             * Build DOM and init event handlers
             */
            build: function () {
                if (mUtil.isMobileDevice()) {
                    
                } else {
                    
                }                
            }, 

            /**
             * Setup messenger
             */
            setup: function () {
               
            },

            /**
             * Trigger events
             */
            eventTrigger: function(name) {
                for (i = 0; i < messenger.events.length; i++) {
                    var event = messenger.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                messenger.events[i].fired = true;
                                return event.handler.call(this, messenger);
                            }
                        } else {
                            return  event.handler.call(this, messenger);
                        }
                    }
                }
            },

            addEvent: function(name, handler, one) {
                messenger.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();
            }
        };

        // Run plugin
        Plugin.run.apply(this, [options]);

        //////////////////////
        // ** Public API ** //
        //////////////////////
       

        /**
         * Set messenger content
         * @returns {mMessenger}
         */
        messenger.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Set messenger content
         * @returns {mMessenger}
         */
        messenger.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };        

        return messenger;
    };

    // default options
    $.fn.mMessenger.defaults = {
       
    };
}(jQuery));
(function($) {
    // plugin setup
    $.fn.mOffcanvas = function(options) {
        // main object
        var offcanvas = this;
        var element = $(this);

        /********************
         ** PRIVATE METHODS
         ********************/
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (!element.data('offcanvas')) {                      
                    // create instance
                    Plugin.init(options);
                    Plugin.build();
                    
                    // assign instance to the element                    
                    element.data('offcanvas', offcanvas);
                } else {
                    // get instance from the element
                    offcanvas = element.data('offcanvas');
                }               

                return offcanvas;
            },

            /**
             * Handles suboffcanvas click toggle
             */
            init: function(options) {
                offcanvas.events = [];

                // merge default and user defined options
                offcanvas.options = $.extend(true, {}, $.fn.mOffcanvas.defaults, options);

                offcanvas.overlay;
                
                offcanvas.classBase = offcanvas.options.class;
                offcanvas.classShown = offcanvas.classBase + '--on';
                offcanvas.classOverlay = offcanvas.classBase + '-overlay';
                
                offcanvas.state = element.hasClass(offcanvas.classShown) ? 'shown' : 'hidden';
                offcanvas.close = offcanvas.options.close;

                if (offcanvas.options.toggle && offcanvas.options.toggle.target) {
                    offcanvas.toggleTarget = offcanvas.options.toggle.target;
                    offcanvas.toggleState = offcanvas.options.toggle.state;
                } else {
                    offcanvas.toggleTarget = offcanvas.options.toggle; 
                    offcanvas.toggleState = '';
                }
            },

            /**
             * Setup offcanvas
             */
            build: function() {
                // offcanvas toggle
                $(offcanvas.toggleTarget).on('click', Plugin.toggle);

                if (offcanvas.close) {
                    $(offcanvas.close).on('click', Plugin.hide);
                }
            },

            /**
             * sync 
             */
            sync: function () {
                $(element).data('offcanvas', offcanvas);
            }, 

            /**
             * Handles offcanvas click toggle
             */
            toggle: function() {
                if (offcanvas.state == 'shown') {
                    Plugin.hide();
                } else {
                    Plugin.show();
                }
            },

            /**
             * Handles offcanvas click toggle
             */
            show: function() {
                if (offcanvas.state == 'shown') {
                    return;
                }

                Plugin.eventTrigger('beforeShow');

                if (offcanvas.toggleState != '') {
                    $(offcanvas.toggleTarget).addClass(offcanvas.toggleState);
                }
                
                $('body').addClass(offcanvas.classShown);
                element.addClass(offcanvas.classShown);

                offcanvas.state = 'shown';

                if (offcanvas.options.overlay) {
                    var overlay = $('<div class="' + offcanvas.classOverlay + '"></div>');                
                    element.after(overlay);
                    offcanvas.overlay = overlay;
                    offcanvas.overlay.on('click', function(e) {
                        e.stopPropagation();
                        e.preventDefault();
                        Plugin.hide();
                    });
                } 

                Plugin.eventTrigger('afterShow');

                return offcanvas;
            },

            /**
             * Handles offcanvas click toggle
             */
            hide: function() {
                if (offcanvas.state == 'hidden') {
                    return;
                }

                Plugin.eventTrigger('beforeHide');

                if (offcanvas.toggleState != '') {
                    $(offcanvas.toggleTarget).removeClass(offcanvas.toggleState);
                }

                $('body').removeClass(offcanvas.classShown)
                element.removeClass(offcanvas.classShown);

                offcanvas.state = 'hidden';

                if (offcanvas.options.overlay) {
                    offcanvas.overlay.remove();
                } 

                Plugin.eventTrigger('afterHide');

                return offcanvas;
            },

            /**
             * Trigger events
             */
            eventTrigger: function(name) {
                for (i = 0; i < offcanvas.events.length; i++) {
                    var event = offcanvas.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                offcanvas.events[i].fired = true;
                                return event.handler.call(this, offcanvas);
                            }
                        } else {
                            return  event.handler.call(this, offcanvas);
                        }
                    }
                }
            },

            addEvent: function(name, handler, one) {
                offcanvas.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();
            }
        };

        // main variables
        var the = this;
        
        // init plugin
        Plugin.run.apply(this, [options]);

        /********************
         ** PUBLIC API METHODS
         ********************/

        /**
         * Hide 
         */
        offcanvas.hide =  function () {
            return Plugin.hide();
        };

        /**
         * Show 
         */
        offcanvas.show =  function () {
            return Plugin.show();
        };

        /**
         * Get suboffcanvas mode
         */
        offcanvas.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Set offcanvas content
         * @returns {mOffcanvas}
         */
        offcanvas.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };   

        return offcanvas;
    };

    // default options
    $.fn.mOffcanvas.defaults = {
        
    }; 
}(jQuery));
(function ($) {
    // Plugin function
    $.fn.mPortlet = function (options) {
        // Plugin scope variable
        var portlet = {};
        var element = $(this);

        // Plugin class
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (element.data('portlet-object')) {            
                    // get instance from the element
                    portlet = element.data('portlet-object');
                } else {                              
                    // create instance                   
                    Plugin.init(options);
                    Plugin.build();
                    
                    // assign instance to the element                    
                    element.data('portlet-object', portlet);
                }               

                return portlet;
            },

            /**
             * Initialize
             */
            init: function(options) {
                portlet.options = $.extend(true, {}, $.fn.mPortlet.defaults, options);
                portlet.events = [];
                portlet.eventOne = false;       

                if ( element.find('> .m-portlet__body').length !== 0 ) {
                    portlet.body = element.find('> .m-portlet__body');
                } else if ( element.find('> .m-form').length !== 0 ) {
                    portlet.body = element.find('> .m-form');
                }
            },

            /**
             * Build DOM and init event handlers
             */
            build: function () {
                // remove
                var remove = element.find('> .m-portlet__head [data-portlet-tool=remove]');
                if (remove.length === 1) {
                    remove.click(function(e) {
                        e.preventDefault();
                        Plugin.remove();
                    });
                }                 

                // reload
                var reload = element.find('> .m-portlet__head [data-portlet-tool=reload]')
                if (reload.length === 1) {
                    reload.click(function(e) {
                        e.preventDefault();
                        Plugin.reload();
                    });
                }

                // toggle
                var toggle = element.find('> .m-portlet__head [data-portlet-tool=toggle]');
                if (toggle.length === 1) {
                    toggle.click(function(e) {
                        e.preventDefault();
                        Plugin.toggle();
                    });
                }

                // fullscreen
                var fullscreen = element.find('> .m-portlet__head [data-portlet-tool=fullscreen]');
                if (fullscreen.length === 1) {
                    fullscreen.click(function(e) {
                        e.preventDefault();
                        Plugin.fullscreen();
                    });
                }                    

                Plugin.setupTooltips();
            }, 

            /**
             * Remove portlet
             */
            remove: function () {
                if (Plugin.eventTrigger('beforeRemove') === false) {
                    return;
                }

                if ( $('body').hasClass('m-portlet--fullscreen') && element.hasClass('m-portlet--fullscreen') ) {
                    Plugin.fullscreen('off');
                }

                Plugin.removeTooltips();

                element.remove();
                
                Plugin.eventTrigger('afterRemove');
            }, 

            /**
             * Set content
             */
            setContent: function (html) {
                if (html) {
                    portlet.body.html(html);
                }               
            },

            /**
             * Get body
             */
            getBody: function () {
                return portlet.body;
            },

            /**
             * Get self
             */
            getSelf: function () {
                return element;
            },

            /**
             * Setup tooltips
             */
            setupTooltips: function () {
                if (portlet.options.tooltips) {
                    var collapsed = element.hasClass('m-portlet--collapse') || element.hasClass('m-portlet--collapsed');
                    var fullscreenOn = $('body').hasClass('m-portlet--fullscreen') && element.hasClass('m-portlet--fullscreen');

                    var remove = element.find('> .m-portlet__head [data-portlet-tool=remove]');
                    if (remove.length === 1) {
                        remove.attr('title', portlet.options.tools.remove);
                        remove.data('placement', fullscreenOn ? 'bottom' : 'top');
                        remove.data('offset', fullscreenOn ? '0,10px,0,0' : '0,5px');
                        remove.tooltip('dispose');
                        mApp.initTooltip(remove);
                    }

                    var reload = element.find('> .m-portlet__head [data-portlet-tool=reload]');
                    if (reload.length === 1) {
                        reload.attr('title', portlet.options.tools.reload);
                        reload.data('placement', fullscreenOn ? 'bottom' : 'top');
                        reload.data('offset', fullscreenOn ? '0,10px,0,0' : '0,5px');
                        reload.tooltip('dispose');
                        mApp.initTooltip(reload);
                    }

                    var toggle = element.find('> .m-portlet__head [data-portlet-tool=toggle]');
                    if (toggle.length === 1) {
                        if (collapsed) {
                            toggle.attr('title', portlet.options.tools.toggle.expand);
                        } else {
                            toggle.attr('title', portlet.options.tools.toggle.collapse);
                        }
                        toggle.data('placement', fullscreenOn ? 'bottom' : 'top');
                        toggle.data('offset', fullscreenOn ? '0,10px,0,0' : '0,5px');
                        toggle.tooltip('dispose');
                        mApp.initTooltip(toggle);
                    }

                    var fullscreen = element.find('> .m-portlet__head [data-portlet-tool=fullscreen]');
                    if (fullscreen.length === 1) {
                        if (fullscreenOn) {
                            fullscreen.attr('title', portlet.options.tools.fullscreen.off);
                        } else {
                            fullscreen.attr('title', portlet.options.tools.fullscreen.on);
                        }
                        fullscreen.data('placement', fullscreenOn ? 'bottom' : 'top');
                        fullscreen.data('offset', fullscreenOn ? '0,10px,0,0' : '0,5px');
                        fullscreen.tooltip('dispose');
                        mApp.initTooltip(fullscreen);
                    }                
                }                   
            },

            /**
             * Setup tooltips
             */
            removeTooltips: function () {
                if (portlet.options.tooltips) {
                    var remove = element.find('> .m-portlet__head [data-portlet-tool=remove]');
                    if (remove.length === 1) {
                        remove.tooltip('dispose');
                    }

                    var reload = element.find('> .m-portlet__head [data-portlet-tool=reload]');
                    if (reload.length === 1) {
                        reload.tooltip('dispose');
                    }

                    var toggle = element.find('> .m-portlet__head [data-portlet-tool=toggle]');
                    if (toggle.length === 1) {
                        toggle.tooltip('dispose');
                    }

                    var fullscreen = element.find('> .m-portlet__head [data-portlet-tool=fullscreen]');
                    if (fullscreen.length === 1) {
                        fullscreen.tooltip('dispose');
                    }                
                }                   
            },

            /**
             * Reload
             */
            reload: function () {
                Plugin.eventTrigger('reload');                
            },

            /**
             * Toggle
             */
            toggle: function (mode) {
                if (mode === 'collapse' || element.hasClass('m-portlet--collapse') || element.hasClass('m-portlet--collapsed')) {
                    if (Plugin.eventTrigger('beforeExpand') === false) {
                        return;
                    } 

                    portlet.body.slideDown(portlet.options.bodyToggleSpeed, function(){                        
                        Plugin.eventTrigger('afterExpand');                         
                    });

                    element.removeClass('m-portlet--collapse');
                    element.removeClass('m-portlet--collapsed');
                    Plugin.setupTooltips();
                    
                } else {
                    if (Plugin.eventTrigger('beforeCollapse') === false) {
                        return;
                    } 

                    portlet.body.slideUp(portlet.options.bodyToggleSpeed, function() {                        
                        Plugin.eventTrigger('afterCollapse');    
                    });

                    element.addClass('m-portlet--collapse');
                    Plugin.setupTooltips();                    
                }                  
            },

            /**
             * Toggle
             */
            fullscreen: function (mode) {
                var d = {};
                var speed = 300;

                if (mode === 'off' || ($('body').hasClass('m-portlet--fullscreen') && element.hasClass('m-portlet--fullscreen'))) {
                    Plugin.eventTrigger('beforeFullscreenOff');

                    $('body').removeClass('m-portlet--fullscreen');
                    element.removeClass('m-portlet--fullscreen');

                    Plugin.setupTooltips();
                    
                    Plugin.eventTrigger('afterFullscreenOff');
                } else {
                    Plugin.eventTrigger('beforeFullscreenOn');

                    element.addClass('m-portlet--fullscreen');
                    $('body').addClass('m-portlet--fullscreen');

                    Plugin.setupTooltips();
                    
                    Plugin.eventTrigger('afterFullscreenOn');
                }                  
            }, 

            /**
             * sync 
             */
            sync: function () {
                $(element).data('portlet', portlet);
            },

            /**
             * Trigger events
             */
            eventTrigger: function(name) {
                for (i = 0; i < portlet.events.length; i++) {
                    var event = portlet.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                portlet.events[i].fired = true;
                                return event.handler.call(this, portlet);
                            }
                        } else {
                            return  event.handler.call(this, portlet);
                        }
                    }
                }
            },

            /**
             * Add event
             */
            addEvent: function(name, handler, one) {
                portlet.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();

                return portlet;
            }
        };

        // Run plugin
        Plugin.run.apply(this, [options]);

        //////////////////////
        // ** Public API ** //
        //////////////////////
       
        /**
         * Remove portlet
         * @returns {mPortlet}
         */
        portlet.remove = function () {
            return Plugin.remove(html);
        };

        /**
         * Reload portlet
         * @returns {mPortlet}
         */
        portlet.reload = function () {
            return Plugin.reload();
        };

        /**
         * Set portlet content
         * @returns {mPortlet}
         */
        portlet.setContent = function (html) {
            return Plugin.setContent(html);
        };

        /**
         * Collapse portlet
         * @returns {mPortlet}
         */
        portlet.collapse = function () {
            return Plugin.toggle('collapse');
        };

        /**
         * Expand portlet
         * @returns {mPortlet}
         */
        portlet.expand = function () {
            return Plugin.toggle('expand');
        };

        /**
         * Fullscreen portlet
         * @returns {mPortlet}
         */
        portlet.fullscreen = function () {
            return Plugin.fullscreen('on');
        };

        /**
         * Fullscreen portlet
         * @returns {mPortlet}
         */
        portlet.unFullscreen = function () {
            return Plugin.fullscreen('off');
        };

        /**
         * Get portletbody 
         * @returns {jQuery}
         */
        portlet.getBody = function () {
            return Plugin.getBody();
        };

         /**
         * Get portletbody 
         * @returns {jQuery}
         */
        portlet.getSelf = function () {
            return Plugin.getSelf();
        };

        /**
         * Set portlet content
         * @returns {mPortlet}
         */
        portlet.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Set portlet content
         * @returns {mPortlet}
         */
        portlet.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };        

        return portlet;
    };

    // default options
    $.fn.mPortlet.defaults = {
        bodyToggleSpeed: 400,
        tooltips: true,
        tools: {
            toggle: {
                collapse: 'Collapse', 
                expand: 'Expand'
            },
            reload: 'Reload',
            remove: 'Remove',
            fullscreen: {
                on: 'Fullscreen',
                off: 'Exit Fullscreen'
            }        
        }
    };
}(jQuery));
(function($) {
    // Plugin function
    $.fn.mQuicksearch = function(options) {

        // Plugin scope variables
        var qs = this;
        var element = $(this);
        
        // Plugin class        
        var Plugin = {
            /**
             * Run plugin 
             */
            run: function(options) {
                if (!element.data('qs')) {
                    // init plugin
                    Plugin.init(options);
                    // build dom
                    Plugin.build();                   
                    // store the instance in the element's data
                    element.data('qs', qs);
                } else {
                    // retrieve the instance fro the element's data
                    qs = element.data('qs'); 
                }

                return qs;
            },

            /**
             * Init plugin
             */
            init: function(options) {
                // merge default and user defined options
                qs.options = $.extend(true, {}, $.fn.mQuicksearch.defaults, options);

                // form
                qs.form = element.find('form');

                // input element
                qs.input = $(qs.options.input);

                 // close icon
                qs.iconClose = $(qs.options.iconClose);

                if (qs.options.type == 'default') {
                    // search icon
                    qs.iconSearch = $(qs.options.iconSearch);
                        
                    // cancel icon
                    qs.iconCancel = $(qs.options.iconCancel);
                }               

                // dropdown
                qs.dropdown = element.mDropdown({mobileOverlay: false});

                // cancel search timeout
                qs.cancelTimeout;

                // ajax processing state
                qs.processing = false;
            }, 

            /**
             * Build plugin
             */
            build: function() {
                // attach input keyup handler
                qs.input.keyup(Plugin.handleSearch);
                
                if (qs.options.type == 'default') {
                    qs.input.focus(Plugin.showDropdown);
                    
                    qs.iconCancel.click(Plugin.handleCancel);

                    qs.iconSearch.click(function() {
                        if (mUtil.isInResponsiveRange('tablet-and-mobile')) {
                            $('body').addClass('m-header-search--mobile-expanded');
                            qs.input.focus();
                        }
                    });

                    qs.iconClose.click(function() {
                        if (mUtil.isInResponsiveRange('tablet-and-mobile')) {
                            $('body').removeClass('m-header-search--mobile-expanded');
                            Plugin.closeDropdown();
                        }
                    });

                } else if (qs.options.type == 'dropdown') {
                    qs.dropdown.on('afterShow', function() {
                        qs.input.focus();
                    });
                    qs.iconClose.click(Plugin.closeDropdown);
                }               
            },

            /**
             * Search handler
             */ 
            handleSearch: function(e) { 
                var query = qs.input.val();

                if (query.length === 0) {
                    qs.dropdown.hide();
                    Plugin.handleCancelIconVisibility('on');
                    Plugin.closeDropdown();
                    element.removeClass(qs.options.hasResultClass);
                }

                if (query.length < qs.options.minLength || qs.processing == true) {
                    return;
                }

                qs.processing = true;
                qs.form.addClass(qs.options.spinner);
                Plugin.handleCancelIconVisibility('off');
                
                $.ajax({
                    url: qs.options.source,
                    data: {query: query},
                    dataType: 'html',
                    success: function(res) {
                        qs.processing = false;
                        qs.form.removeClass(qs.options.spinner);
                        Plugin.handleCancelIconVisibility('on');
                        qs.dropdown.setContent(res).show();
                        element.addClass(qs.options.hasResultClass);    
                    },
                    error: function(res) {
                        qs.processing = false;
                        qs.form.removeClass(qs.options.spinner);
                        Plugin.handleCancelIconVisibility('on');
                        qs.dropdown.setContent(qs.options.templates.error.apply(qs, res)).show();  
                        element.addClass(qs.options.hasResultClass);   
                    }
                });
            }, 

            /**
             * Handle cancel icon visibility
             */ 
            handleCancelIconVisibility: function(status) {
                if (qs.options.type == 'dropdown') {
                    return;
                }

                if (status == 'on') {
                    if (qs.input.val().length === 0) {                       
                        qs.iconCancel.css('visibility', 'hidden');
                        qs.iconClose.css('visibility', 'hidden');
                    } else {
                        clearTimeout(qs.cancelTimeout);
                        qs.cancelTimeout = setTimeout(function() {
                            qs.iconCancel.css('visibility', 'visible');
                            qs.iconClose.css('visibility', 'visible');
                        }, 500);                        
                    }
                } else {
                    qs.iconCancel.css('visibility', 'hidden');
                    qs.iconClose.css('visibility', 'hidden');
                }
            },

            /**
             * Cancel handler
             */ 
            handleCancel: function(e) {
                qs.input.val('');
                qs.iconCancel.css('visibility', 'hidden');
                element.removeClass(qs.options.hasResultClass);   
                //qs.input.focus();

                Plugin.closeDropdown();
            },

            /**
             * Cancel handler
             */ 
            closeDropdown: function() {
                qs.dropdown.hide();
            },

            /**
             * Show dropdown
             */ 
            showDropdown: function(e) { 
                if (qs.dropdown.isShown() == false && qs.input.val().length > qs.options.minLength && qs.processing == false) {
                    qs.dropdown.show();
                    e.preventDefault();
                    e.stopPropagation();
                }
            }
        };

        // Run plugin
        Plugin.run.apply(qs, [options]);

        //////////////////////
        // ** Public API ** //
        //////////////////////

        /**
         * Public method
         * @returns {mQuicksearch}
         */
        qs.test = function(time) {
        	//Plugin.method(time);
        };

        // Return plugin object
        return qs;
    };

    // Plugin default options
    $.fn.mQuicksearch.defaults = {
    	minLength: 1,
        maxHeight: 300,
    };

}(jQuery));
(function($) {
    // plugin setup
    $.fn.mScrollTop = function(options) {
        // main object
        var scrollTop = this;
        var element = $(this);

        /********************
         ** PRIVATE METHODS
         ********************/
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (!element.data('scrollTop')) {                      
                    // create instance
                    Plugin.init(options);
                    Plugin.build();
                    
                    // assign instance to the element                    
                    element.data('scrollTop', scrollTop);
                } else {
                    // get instance from the element
                    scrollTop = element.data('scrollTop');
                }               

                return scrollTop;
            },

            /**
             * Handles subscrollTop click scrollTop
             */
            init: function(options) {
                scrollTop.element = element;    
                scrollTop.events = [];

                // merge default and user defined options
                scrollTop.options = $.extend(true, {}, $.fn.mScrollTop.defaults, options);
            },

            /**
             * Setup scrollTop
             */
            build: function() {
                // handle window scroll
                if (navigator.userAgent.match(/iPhone|iPad|iPod/i)) {
                    $(window).bind("touchend touchcancel touchleave", function() {
                        Plugin.handle();
                    });
                } else {
                    $(window).scroll(function() {
                        Plugin.handle();
                    });
                }

                // handle button click 
                element.on('click', Plugin.scroll);
            },

            /**
             * sync 
             */
            sync: function () {
                $(element).data('scrollTop', scrollTop);
            }, 

            /**
             * Handles offcanvas click scrollTop
             */
            handle: function() {
                var pos = $(window).scrollTop(); // current vertical position
                if (pos > scrollTop.options.offset) {
                    $("body").addClass('m-scroll-top--shown');
                } else {
                    $("body").removeClass('m-scroll-top--shown');
                }
            },

            /**
             * Handles offcanvas click scrollTop
             */
            scroll: function(e) {
                e.preventDefault();

                $("html, body").animate({
                    scrollTop: 0
                }, scrollTop.options.speed);
            },

            /**
             * Trigger events
             */
            eventTrigger: function(name) {
                for (i = 0; i < scrollTop.events.length; i++) {
                    var event = scrollTop.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                scrollTop.events[i].fired = true;
                                return event.handler.call(this, scrollTop);
                            }
                        } else {
                            return  event.handler.call(this, scrollTop);
                        }
                    }
                }
            },

            addEvent: function(name, handler, one) {
                scrollTop.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();
            }
        };

        // main variables
        var the = this;
        
        // init plugin
        Plugin.run.apply(this, [options]);

        /********************
         ** PUBLIC API METHODS
         ********************/

        /**
         * Get subscrollTop mode
         */
        scrollTop.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Set scrollTop content
         * @returns {mScrollTop}
         */
        scrollTop.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };   

        return scrollTop;
    };

    // default options
    $.fn.mScrollTop.defaults = {
        offset: 300,
        speed: 600
    }; 
}(jQuery));
(function($) {
    // plugin setup
    $.fn.mToggle = function(options) {
        // main object
        var toggle = this;
        var element = $(this);

        /********************
         ** PRIVATE METHODS
         ********************/
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (!element.data('toggle')) {                      
                    // create instance
                    Plugin.init(options);
                    Plugin.build();
                    
                    // assign instance to the element                    
                    element.data('toggle', toggle);
                } else {
                    // get instance from the element
                    toggle = element.data('toggle');
                }               

                return toggle;
            },

            /**
             * Handles subtoggle click toggle
             */
            init: function(options) {
                toggle.element = element;    
                toggle.events = [];

                // merge default and user defined options
                toggle.options = $.extend(true, {}, $.fn.mToggle.defaults, options);

                toggle.target = $(toggle.options.target);
                toggle.targetState = toggle.options.targetState;
                toggle.togglerState = toggle.options.togglerState;

                toggle.state = mUtil.hasClasses(toggle.target, toggle.targetState) ? 'on' : 'off';
            },

            /**
             * Setup toggle
             */
            build: function() {
                element.on('click', Plugin.toggle);
            },

            /**
             * sync 
             */
            sync: function () {
                $(element).data('toggle', toggle);
            }, 

            /**
             * Handles offcanvas click toggle
             */
            toggle: function() {
                if (toggle.state == 'off') {
                    Plugin.toggleOn();
                } else {
                    Plugin.toggleOff();
                }
                Plugin.eventTrigger('toggle');

                return toggle;
            },

            /**
             * Handles toggle click toggle
             */
            toggleOn: function() {
                Plugin.eventTrigger('beforeOn');
                
                toggle.target.addClass(toggle.targetState);

                if (toggle.togglerState) {
                    element.addClass(toggle.togglerState);
                }

                toggle.state = 'on';

                Plugin.eventTrigger('afterOn');

                return toggle;
            },

            /**
             * Handles toggle click toggle
             */
            toggleOff: function() {
                Plugin.eventTrigger('beforeOff');

                toggle.target.removeClass(toggle.targetState);

                if (toggle.togglerState) {
                    element.removeClass(toggle.togglerState);
                }

                toggle.state = 'off';

                Plugin.eventTrigger('afterOff');

                return toggle;
            },

            /**
             * Trigger events
             */
            eventTrigger: function(name) {
                toggle.trigger(name);
                for (i = 0; i < toggle.events.length; i++) {
                    var event = toggle.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                toggle.events[i].fired = true;
                                return event.handler.call(this, toggle);
                            }
                        } else {
                            return  event.handler.call(this, toggle);
                        }
                    }
                }
            },

            addEvent: function(name, handler, one) {
                toggle.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();

                return toggle;
            }
        };

        // main variables
        var the = this;
        
        // init plugin
        Plugin.run.apply(this, [options]);

        /********************
         ** PUBLIC API METHODS
         ********************/

        /**
         * Toggle 
         */
        toggle.toggle =  function () {
            return Plugin.toggle();
        };

        /**
         * Toggle on 
         */
        toggle.toggleOn =  function () {
            return Plugin.toggleOn();
        };

        /**
         * Toggle off 
         */
        toggle.toggleOff =  function () {
            return Plugin.toggleOff();
        };

        /**
         * Attach event
         * @returns {mToggle}
         */
        toggle.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Attach event that will be fired once
         * @returns {mToggle}
         */
        toggle.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };     

        return toggle;
    };

    // default options
    $.fn.mToggle.defaults = {
        togglerState: '',
        targetState: ''
    }; 
}(jQuery));
(function($) {
    // plugin setup
    $.fn.mWizard = function(options) {
        //== Main object
        var wizard = this;
        var element = $(this);

        /********************
         ** PRIVATE METHODS
         ********************/
        var Plugin = {
            /**
             * Run
             */
            run: function (options) {
                if (!element.data('wizard')) {                      
                    //== Create instance
                    Plugin.init(options);
                    Plugin.build();
                    
                    //== Assign instance to the element                    
                    element.data('wizard', wizard);
                } else {
                    // get instance from the element
                    wizard = element.data('wizard');
                }               

                return wizard;
            },

            /**
             * Initialize Form Wizard
             */
            init: function(options) {
                //== Elements
                wizard.steps = wizard.find('.m-wizard__step');
                wizard.progress = wizard.find('.m-wizard__progress .progress-bar'); 
                wizard.btnSubmit = wizard.find('[data-wizard-action="submit"]'); 
                wizard.btnNext = wizard.find('[data-wizard-action="next"]'); 
                wizard.btnPrev = wizard.find('[data-wizard-action="prev"]'); 
                wizard.btnLast = wizard.find('[data-wizard-action="last"]'); 
                wizard.btnFirst = wizard.find('[data-wizard-action="first"]');  

                //== Merge default and user defined options
                wizard.options = $.extend(true, {}, $.fn.mWizard.defaults, options);

                //== Variables
                wizard.events = [];
                wizard.currentStep = 1;
                wizard.totalSteps = wizard.steps.length;  

                //== Init current step
                if (wizard.options.startStep > 1) {
                    Plugin.goTo(wizard.options.startStep);
                }       

                //== Init UI
                Plugin.updateUI();
            },

            /**
             * Build Form Wizard
             */
            build: function() {
                //== Next button event handler
                wizard.btnNext.on('click', function (e) {
                    e.preventDefault();
                    Plugin.goNext();
                });

                //== Prev button event handler
                wizard.btnPrev.on('click', function (e) {
                    e.preventDefault();
                    Plugin.goPrev();
                });

                //== First button event handler
                wizard.btnFirst.on('click', function (e) {
                    e.preventDefault();
                    Plugin.goFirst();
                });

                //== Last button event handler
                wizard.btnLast.on('click', function (e) {
                    e.preventDefault();
                    Plugin.goLast();
                });

                wizard.find('.m-wizard__step a.m-wizard__step-number').on('click', function() {
                    var step = $(this).parents('.m-wizard__step');
                    var num;
                    $(this).parents('.m-wizard__steps').find('.m-wizard__step').each(function(index) {
                        if (step.is( $(this) )) {
                            num = (index + 1);
                            return;
                        }
                    });

                    if (num) {
                        Plugin.goTo(num);
                    }                    
                });
            },

            /**
             * Sync object instance
             */
            sync: function () {
                $(element).data('wizard', wizard);
            }, 

            /**
             * Handles wizard click toggle
             */
            goTo: function(number) {
                //== Skip if this step is already shown
                if (number === wizard.currentStep) {
                    return;
                }

                //== Validate step number
                if (number) {
                    number = parseInt(number); 
                } else {
                    number = Plugin.getNextStep();
                }

                //== Before next and prev events
                var callback;

                if (number > wizard.currentStep) {
                    callback = Plugin.eventTrigger('beforeNext');
                } else {
                    callback = Plugin.eventTrigger('beforePrev');
                }

                //== Continue if no exit
                if (callback !== false) {
                    //== Set current step
                    wizard.currentStep = number;

                    //== Update UI
                    Plugin.updateUI();             

                    //== Trigger change event
                    Plugin.eventTrigger('change')       
                }
                
                //== After next and prev events
                if (number > wizard.startStep) {
                    Plugin.eventTrigger('afterNext');
                } else {
                    Plugin.eventTrigger('afterPrev');
                }

                return wizard;
            },

            updateUI: function(argument) {
                //== Update progress bar
                Plugin.updateProgress();

                //== Show current target content
                Plugin.handleTarget();

                //== Set classes
                Plugin.setStepClass();

                //== Apply nav step classes
                wizard.find('.m-wizard__step').removeClass('m-wizard__step--current').removeClass('m-wizard__step--done');
                for (var i = 1; i < wizard.currentStep; i++) {
                    wizard.find('.m-wizard__step').eq(i - 1).addClass('m-wizard__step--done');
                }
                wizard.find('.m-wizard__step').eq(wizard.currentStep - 1).addClass('m-wizard__step--current');
            },

            /**
             * Check last step
             */
            isLastStep: function() {
                return wizard.currentStep === wizard.totalSteps;
            },

            /**
             * Check first step
             */
            isFirstStep: function() {
                return wizard.currentStep === 1;
            },

            /**
             * Check between step
             */
            isBetweenStep: function() {
                return Plugin.isLastStep() === false && Plugin.isFirstStep() === false;
            },

            /**
             * Set step class
             */
            setStepClass: function() {
                if (Plugin.isLastStep()) {
                    element.addClass('m-wizard--step-last');
                } else {
                    element.removeClass('m-wizard--step-last');
                }

                if (Plugin.isFirstStep()) {
                    element.addClass('m-wizard--step-first');
                } else {
                    element.removeClass('m-wizard--step-first');
                }

                if (Plugin.isBetweenStep()) {
                    element.addClass('m-wizard--step-between');
                } else {
                    element.removeClass('m-wizard--step-between');
                }
            },

            /**
             * Go to the next step
             */
            goNext: function() {
                return Plugin.goTo( Plugin.getNextStep() );
            },

            /**
             * Go to the prev step
             */
            goPrev: function() {
                return Plugin.goTo( Plugin.getPrevStep() );
            },

            /**
             * Go to the last step
             */
            goLast: function() {
                return Plugin.goTo( wizard.totalSteps );
            },

            /**
             * Go to the first step
             */
            goFirst: function() {
                return Plugin.goTo( 1 );
            },

            /**
             * Set progress
             */
            updateProgress: function() {
                //== Calculate progress position

                if (!wizard.progress) {
                    return;
                } 

                //== Update progress
                if (element.hasClass('m-wizard--1')) {
                    var width = 100 * ((wizard.currentStep) / (wizard.totalSteps));
                    var offset = element.find('.m-wizard__step-number').width();
                    wizard.progress.css('width', 'calc(' + width + '% + ' + (offset / 2)  + 'px)');
                } else if (element.hasClass('m-wizard--2')) {
                    if (wizard.currentStep === 1) {
                        return;
                    }

                    var step = element.find('.m-wizard__step').eq(0);
                    var progress = (wizard.currentStep - 1) * (100 * (1 / (wizard.totalSteps - 1)));

                    if (mUtil.isInResponsiveRange('minimal-desktop-and-below')) {  
                        wizard.progress.css('height', progress + '%');
                    } else {
                        wizard.progress.css('width', progress + '%');
                    }
                } else {
                    var width = 100 * ((wizard.currentStep) / (wizard.totalSteps));
                    wizard.progress.css('width', width + '%'); 
                }             
            },

            /**
             * Show/hide target content
             */
            handleTarget: function() {
                var step = wizard.steps.eq(wizard.currentStep - 1);
                var target = element.find( step.data('wizard-target') );

                element.find('.m-wizard__form-step--current').removeClass('m-wizard__form-step--current');
                target.addClass('m-wizard__form-step--current');
            },

            /**
             * Get next step
             */
            getNextStep: function() {
                if (wizard.totalSteps >= (wizard.currentStep + 1)) {
                    return wizard.currentStep + 1;
                } else {
                    return wizard.totalSteps;
                } 
            },

            /**
             * Get prev step
             */
            getPrevStep: function() {
                if ((wizard.currentStep - 1) >= 1) {
                    return wizard.currentStep - 1;
                } else {
                    return 1;
                } 
            },

            /**
             * Trigger event
             */
            eventTrigger: function(name) {
                for (i = 0; i < wizard.events.length; i++) {
                    var event = wizard.events[i];
                    if (event.name == name) {
                        if (event.one == true) {
                            if (event.fired == false) {
                                wizard.events[i].fired = true;
                                return event.handler.call(this, wizard);
                            }
                        } else {
                            return  event.handler.call(this, wizard);
                        }
                    }
                }
            },

            /**
             * Register event
             */
            addEvent: function(name, handler, one) {
                wizard.events.push({
                    name: name,
                    handler: handler,
                    one: one,
                    fired: false
                });

                Plugin.sync();
            }
        };

        //== Main variables
        var the = this;
        
        //== Init plugin
        Plugin.run.apply(this, [options]);

        /********************
         ** PUBLIC API METHODS
         ********************/

        /**
         * Go to the next step 
         */
        wizard.goNext =  function () {
            return Plugin.goNext();
        };

        /**
         * Go to the prev step 
         */
        wizard.goPrev =  function () {
            return Plugin.goPrev();
        };

        /**
         * Go to the last step 
         */
        wizard.goLast =  function () {
            return Plugin.goLast();
        };

        /**
         * Go to the first step 
         */
        wizard.goFirst =  function () {
            return Plugin.goFirst();
        };

         /**
         * Go to a step
         */
        wizard.goTo =  function ( number ) {
            return Plugin.goTo( number );
        };

        /**
         * Get current step number 
         */
        wizard.getStep =  function () {
            return wizard.currentStep;
        };

        /**
         * Check last step 
         */
        wizard.isLastStep =  function () {
            return Plugin.isLastStep();
        };

        /**
         * Check first step 
         */
        wizard.isFirstStep =  function () {
            return Plugin.isFirstStep();
        };

        /**
         * Attach event
         * @returns {mwizard}
         */
        wizard.on =  function (name, handler) {
            return Plugin.addEvent(name, handler);
        };

        /**
         * Attach event that will be fired once
         * @returns {mwizard}
         */
        wizard.one =  function (name, handler) {
            return Plugin.addEvent(name, handler, true);
        };   

        return wizard;
    };

    //== Default options
    $.fn.mWizard.defaults = {
        startStep: 1
    }; 
}(jQuery));

  $.fn.markdown.defaults.iconlibrary = 'fa';
//$.fn.bootstrapSwitch.defaults.size = 'large';
//$.fn.bootstrapSwitch.defaults.onColor = 'success';
$.fn.timepicker.defaults = $.extend(true, {}, $.fn.timepicker.defaults, {
    icons: {
        up: 'la la-angle-up',
        down: 'la la-angle-down'  
    }
});
jQuery.validator.setDefaults({
    errorElement: 'div', //default input error message container
    errorClass: 'form-control-feedback', // default input error message class
    focusInvalid: false, // do not focus the last invalid input
    ignore: "",  // validate all fields including form hidden input

    errorPlacement: function(error, element) { // render error placement for each input type
        var group = $(element).closest('.m-form__group-sub').length > 0 ? $(element).closest('.m-form__group-sub') : $(element).closest('.m-form__group');
        var help = group.find('.m-form__help');

        if (group.find('.form-control-feedback').length !== 0) {
            return;
        }

        if (help.length > 0) {
            help.before(error);
        } else {
            if ($(element).closest('.input-group').length > 0) {
                $(element).closest('.input-group').after(error);
            } else {
                if ($(element).is(':checkbox')) {
                    $(element).closest('.m-checkbox').find('>span').after(error);
                } else {
                    $(element).after(error);
                }                
            }            
        }
    },

    highlight: function(element) { // hightlight error inputs
        var group = $(element).closest('.m-form__group-sub').length > 0  ? $(element).closest('.m-form__group-sub') : $(element).closest('.m-form__group');

        console.log('add' + group.attr('class'));

        group.addClass('has-danger'); // set error class to the control groupx
    },

    unhighlight: function(element) { // revert the change done by hightlight
        var group = $(element).closest('.m-form__group-sub').length > 0  ? $(element).closest('.m-form__group-sub') : $(element).closest('.m-form__group');

        group.removeClass('has-danger'); // set error class to the control group
    },

    success: function(label, element) {
        var group = $(label).closest('.m-form__group-sub').length > 0  ? $(label).closest('.m-form__group-sub') : $(label).closest('.m-form__group');

        //group.addClass('has-success').removeClass('has-danger'); // set success class and hide error class
        group.removeClass('has-danger'); // hide error class
        group.find('.form-control-feedback').remove();
    }
});
Chart.elements.Rectangle.prototype.draw = function() {    
    var ctx = this._chart.ctx;
    var vm = this._view;
    var left, right, top, bottom, signX, signY, borderSkipped, radius;
    var borderWidth = vm.borderWidth;

    // Set Radius Here
    // If radius is large enough to cause drawing errors a max radius is imposed
    var cornerRadius = this._chart.options.barRadius ? this._chart.options.barRadius : 0;

    if (!vm.horizontal) {
        // bar
        left = vm.x - vm.width / 2;
        right = vm.x + vm.width / 2;

        if (vm.y > 2 * cornerRadius) {
        	top = vm.y - cornerRadius;        
        } else {
        	top = vm.y;        
        }

        bottom = vm.base;
        signX = 1;
        signY = bottom > top? 1: -1;
        borderSkipped = vm.borderSkipped || 'bottom';
        //console.log(vm.base + '-' + vm.y);
    } else {
        // horizontal bar
        left = vm.base;
        right = vm.x;
        top = vm.y - vm.height / 2;
        bottom = vm.y + vm.height / 2;
        signX = right > left? 1: -1;
        signY = 1;
        borderSkipped = vm.borderSkipped || 'left';
    }

    // Canvas doesn't allow us to stroke inside the width so we can
    // adjust the sizes to fit if we're setting a stroke on the line
    if (borderWidth) {
        // borderWidth shold be less than bar width and bar height.
        var barSize = Math.min(Math.abs(left - right), Math.abs(top - bottom));
        borderWidth = borderWidth > barSize? barSize: borderWidth;
        var halfStroke = borderWidth / 2;
        // Adjust borderWidth when bar top position is near vm.base(zero).
        var borderLeft = left + (borderSkipped !== 'left'? halfStroke * signX: 0);
        var borderRight = right + (borderSkipped !== 'right'? -halfStroke * signX: 0);
        var borderTop = top + (borderSkipped !== 'top'? halfStroke * signY: 0);
        var borderBottom = bottom + (borderSkipped !== 'bottom'? -halfStroke * signY: 0);
        // not become a vertical line?
        if (borderLeft !== borderRight) {
            top = borderTop;
            bottom = borderBottom;
        }
        // not become a horizontal line?
        if (borderTop !== borderBottom) {
            left = borderLeft;
            right = borderRight;
        }
    }

    ctx.beginPath();
    ctx.fillStyle = vm.backgroundColor;
    ctx.strokeStyle = vm.borderColor;
    ctx.lineWidth = borderWidth;

    // Corner points, from bottom-left to bottom-right clockwise
    // | 1 2 |
    // | 0 3 |
    var corners = [
        [left, bottom],
        [left, top],
        [right, top],
        [right, bottom]
    ];

    // Find first (starting) corner with fallback to 'bottom'
    var borders = ['bottom', 'left', 'top', 'right'];
    var startCorner = borders.indexOf(borderSkipped, 0);
    if (startCorner === -1) {
        startCorner = 0;
    }

    function cornerAt(index) {
        return corners[(startCorner + index) % 4];
    }

    // Draw rectangle from 'startCorner'
    var corner = cornerAt(0);
    ctx.moveTo(corner[0], corner[1]);

    for (var i = 1; i < 4; i++) {
        corner = cornerAt(i);
        nextCornerId = i+1;
        if(nextCornerId == 4){
            nextCornerId = 0
        }

        nextCorner = cornerAt(nextCornerId);

        width = corners[2][0] - corners[1][0];
        height = corners[0][1] - corners[1][1];
        x = corners[1][0];
        y = corners[1][1];
        
        var radius = cornerRadius;
        
        // Fix radius being too large
        if(radius > height/2){
            radius = height/2;
        }if(radius > width/2){
            radius = width/2;
        }

        ctx.moveTo(x + radius, y);
        ctx.lineTo(x + width - radius, y);
        ctx.quadraticCurveTo(x + width, y, x + width, y + radius);
        ctx.lineTo(x + width, y + height - radius);
        ctx.quadraticCurveTo(x + width, y + height, x + width - radius, y + height);
        ctx.lineTo(x + radius, y + height);
        ctx.quadraticCurveTo(x, y + height, x, y + height - radius);
        ctx.lineTo(x, y + radius);
        ctx.quadraticCurveTo(x, y, x + radius, y);
    }

    ctx.fill();
    if (borderWidth) {
        ctx.stroke();
    }
}; 
(function($) {

	$.fn.mDatatable = $.fn.mDatatable || {};

	/**
	 * @param datatable Main datatable plugin instance
	 * @param options Extension options
	 * @returns {*}
	 */
	$.fn.mDatatable.checkbox = function(datatable, options) {

		var Extension = {
			selectedAllRows: false,
			selectedRows: [],
			unselectedRows: [],

			init: function() {
				if (Extension.selectorEnabled()) {
					// requestIds is not null
					if (options.vars.requestIds) {
						// request ids in response
						datatable.setDataSourceParam(options.vars.requestIds, true);
					}

					// select all on extension init
					Extension.selectedAllRows = datatable.getDataSourceParam(options.vars.selectedAllRows);

					$(datatable).on('m-datatable--on-layout-updated', function(e, args) {
						if (args.table != $(datatable.wrap).attr('id')) return;
						datatable.ready(function() {
							Extension.initVars();
							Extension.initEvent();
							Extension.initSelect();
						});
					});
				}
			},

			/**
			 * Init checkbox clicks event
			 */
			initEvent: function() {
				// select all checkbox click
				$(datatable.tableHead).find('.m-checkbox--all > [type="checkbox"]').click(function(e) {
					// clear selected and unselected rows
					Extension.selectedRows = Extension.unselectedRows = [];
					datatable.stateRemove('checkbox');

					// select all rows
					if ($(this).is(':checked')) {
						Extension.selectedAllRows = true;
					} else {
						Extension.selectedAllRows = false;
					}

					// local select all current page rows
					if (!options.vars.requestIds) {
						if ($(this).is(':checked')) {
							Extension.selectedRows = $.makeArray($(datatable.tableBody).find('.m-checkbox--single > [type="checkbox"]').
								map(function(i, chk) {
									return $(chk).val();
								}));
						}
						var storage = {};
						storage['selectedRows'] = $.unique(Extension.selectedRows);
						datatable.stateKeep('checkbox', storage);
					}

					// keep selectedAllRows in datasource params
					datatable.setDataSourceParam(options.vars.selectedAllRows, Extension.selectedAllRows);

					$(datatable).trigger('m-datatable--on-click-checkbox', [$(this)]);
				});

				// single row checkbox click
				$(datatable.tableBody).find('.m-checkbox--single > [type="checkbox"]').click(function(e) {
					var id = $(this).val();
					if ($(this).is(':checked')) {
						Extension.selectedRows.push(id);
						// remove from unselected rows
						Extension.unselectedRows = Extension.remove(Extension.unselectedRows, id);
					} else {
						Extension.unselectedRows.push(id);
						// remove from selected rows
						Extension.selectedRows = Extension.remove(Extension.selectedRows, id);
					}

					// local checkbox header check
					if (!options.vars.requestIds && Extension.selectedRows.length < 1) {
						// remove select all checkbox, if there is no checked checkbox left
						$(datatable.tableHead).find('.m-checkbox--all > [type="checkbox"]').prop('checked', false);
					}

					var storage = {};
					storage['selectedRows'] = $.unique(Extension.selectedRows);
					storage['unselectedRows'] = $.unique(Extension.unselectedRows);
					datatable.stateKeep('checkbox', storage);

					$(datatable).trigger('m-datatable--on-click-checkbox', [$(this)]);
				});
			},

			initSelect: function() {
				// selected all rows from server
				if (Extension.selectedAllRows && options.vars.requestIds) {
					if (!datatable.hasClass('m-datatable--error')) {
						// set header select all checkbox checked
						$(datatable.tableHead).find('.m-checkbox--all > [type="checkbox"]').prop('checked', true);
					}

					// set all checkbox in table body
					datatable.setActiveAll(true);

					// remove unselected rows
					Extension.unselectedRows.forEach(function(id) {
						datatable.setInactive(id);
					});

				} else {
					// single check for server and local
					Extension.selectedRows.forEach(function(id) {
						datatable.setActive(id);
					});

					// local checkbox; check if all checkboxes of currect page are checked
					if (!datatable.hasClass('m-datatable--error') && $(datatable.tableBody).find('.m-checkbox--single > [type="checkbox"]').not(':checked').length < 1) {
						// set header select all checkbox checked
						$(datatable.tableHead).find('.m-checkbox--all > [type="checkbox"]').prop('checked', true);
					}
				}
			},

			/**
			 * Check if selector is enabled from options
			 */
			selectorEnabled: function() {
				return $.grep(datatable.options.columns, function(n, i) {
					return n.selector || false;
				})[0];
			},

			initVars: function() {
				// get single select/unselect from localstorage
				var storage = datatable.stateGet('checkbox');
				if (typeof storage !== 'undefined') {
					Extension.selectedRows = storage['selectedRows'] || [];
					Extension.unselectedRows = storage['unselectedRows'] || [];
				}
			},

			getSelectedId: function(path) {
				Extension.initVars();

				// server selected all rows
				if (Extension.selectedAllRows && options.vars.requestIds) {
					if (typeof path === 'undefined') path = options.vars.rowIds;

					// if selected all rows, return id from response meta
					var selectedAllRows = datatable.getObject(path, datatable.lastResponse) || [];

					if (selectedAllRows.length > 0) {
						// remove single unselected rows from selectedAllRows ids from server response emta
						Extension.unselectedRows.forEach(function(id) {
							selectedAllRows = Extension.remove(selectedAllRows, parseInt(id));
						});
					}
					return selectedAllRows;
				}

				// else return single checked selected rows
				return Extension.selectedRows;
			},

			remove: function(array, element) {
				return array.filter(function(e) {
					return e !== element;
				});
			},
		};

		// make the extension accessible from datatable init
		datatable.checkbox = function() {
			return Extension;
		};

		if (typeof options === 'object') {
			options = $.extend(true, {}, $.fn.mDatatable.checkbox.default, options);
			Extension.init.apply(this, [options]);
		}

		return datatable;
	};

	$.fn.mDatatable.checkbox.default = {
		vars: {
			// select all rows flag to be sent to the server
			selectedAllRows: 'selectedAllRows',
			// request id parameter's name
			requestIds: 'requestIds',
			// response path to all rows id
			rowIds: 'meta.rowIds',
		},
	};

}(jQuery));
//== Set defaults

$.notifyDefaults({
	template: '' +
	'<div data-notify="container" class="alert alert-{0} m-alert" role="alert">' +
	'<button type="button" aria-hidden="true" class="close" data-notify="dismiss"></button>' +
	'<span data-notify="icon"></span>' +
	'<span data-notify="title">{1}</span>' +
	'<span data-notify="message">{2}</span>' +
	'<div class="progress" data-notify="progressbar">' +
	'<div class="progress-bar progress-bar-animated bg-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
	'</div>' +
	'<a href="{3}" target="{4}" data-notify="url"></a>' +
	'</div>'
});
//== Set defaults
swal.setDefaults({
	width: 400,
	padding: '2.5rem',
	buttonsStyling: false,
	confirmButtonClass: 'btn btn-success m-btn m-btn--custom',
	confirmButtonColor: null,
	cancelButtonClass: 'btn btn-secondary m-btn m-btn--custom',
	cancelButtonColor: null
});
var mLayout = function() {
    var horMenu;
    var asideMenu;
    var asideMenuOffcanvas;
    var horMenuOffcanvas;

    var initStickyHeader = function() {
        var header = $('.m-header');
        var options = {
            offset: {},
            minimize:{}       
        };

        if (header.data('minimize-mobile') == 'hide') {
            options.minimize.mobile = {};
            options.minimize.mobile.on = 'm-header--hide';
            options.minimize.mobile.off = 'm-header--show';
        } else {
            options.minimize.mobile = false;
        }

        if (header.data('minimize') == 'hide') {
            options.minimize.desktop = {};
            options.minimize.desktop.on = 'm-header--hide';
            options.minimize.desktop.off = 'm-header--show';
        } else {
            options.minimize.desktop = false;
        }

        if (header.data('minimize-offset')) {
            options.offset.desktop = header.data('minimize-offset');
        }

        if (header.data('minimize-mobile-offset')) {
            options.offset.mobile = header.data('minimize-mobile-offset');
        }        

        header.mHeader(options);
    }

    // handle horizontal menu
    var initHorMenu = function() { 
        // init aside left offcanvas
        horMenuOffcanvas = $('#m_header_menu').mOffcanvas({
            class: 'm-aside-header-menu-mobile',
            overlay: true,
            close: '#m_aside_header_menu_mobile_close_btn',
            toggle: {
                target: '#m_aside_header_menu_mobile_toggle',
                state: 'm-brand__toggler--active'
            }            
        });
        
        horMenu = $('#m_header_menu').mMenu({
            // submenu modes
            submenu: {
                desktop: 'dropdown',
                tablet: 'accordion',
                mobile: 'accordion'
            },
            // resize menu on window resize
            resize: {
                desktop: function() {
                    var headerNavWidth = $('#m_header_nav').width();
                    var headerMenuWidth = $('#m_header_menu_container').width();
                    var headerTopbarWidth = $('#m_header_topbar').width();
                    var spareWidth = 20;

                    if ((headerMenuWidth + headerTopbarWidth + spareWidth) > headerNavWidth ) {
                        return false;
                    } else {
                        return true;
                    }
                }
            }    
        });
    }

    // handle vertical menu
    var initLeftAsideMenu = function() {
        var menu = $('#m_ver_menu');

        // init aside menu
        var menuOptions = {  
            // submenu setup
            submenu: {
                desktop: {
                    // by default the menu mode set to accordion in desktop mode
                    default: (menu.data('menu-dropdown') == true ? 'dropdown' : 'accordion'),
                    // whenever body has this class switch the menu mode to dropdown
                    state: {
                        body: 'm-aside-left--minimize',  
                        mode: 'dropdown'
                    }
                },
                tablet: 'accordion', // menu set to accordion in tablet mode
                mobile: 'accordion'  // menu set to accordion in mobile mode
            },

            //accordion setup
            accordion: {
                autoScroll: true,
                expandAll: false
            }
        };

        asideMenu = menu.mMenu(menuOptions);

        // handle fixed aside menu
        if (menu.data('menu-scrollable')) {
            function initScrollableMenu(obj) {    
                if (mUtil.isInResponsiveRange('tablet-and-mobile')) {
                    // destroy if the instance was previously created
                    mApp.destroyScroller(obj);
                    return;
                }

                var height = mUtil.getViewPort().height - $('.m-header').outerHeight()
                    - ($('.m-aside-left .m-aside__header').length != 0 ? $('.m-aside-left .m-aside__header').outerHeight() : 0)
                    - ($('.m-aside-left .m-aside__footer').length != 0 ? $('.m-aside-left .m-aside__footer').outerHeight() : 0);
                    //- $('.m-footer').outerHeight(); 

                // create/re-create a new instance
                mApp.initScroller(obj, {height: height});
            }

            initScrollableMenu(asideMenu);
            
            mUtil.addResizeHandler(function() {            
                initScrollableMenu(asideMenu);
            });   
        }      
    }

    // handle vertical menu
    var initLeftAside = function() {
        // init aside left offcanvas
        var asideOffcanvasClass = ($('#m_aside_left').hasClass('m-aside-left--offcanvas-default') ? 'm-aside-left--offcanvas-default' : 'm-aside-left');

        asideMenuOffcanvas = $('#m_aside_left').mOffcanvas({
            class: asideOffcanvasClass,
            overlay: true,
            close: '#m_aside_left_close_btn',
            toggle: {
                target: '#m_aside_left_offcanvas_toggle',
                state: 'm-brand__toggler--active'                
            }            
        });        
    }

    // handle sidebar toggle
    var initLeftAsideToggle = function() {
        var asideLeftToggle = $('#m_aside_left_minimize_toggle').mToggle({
            target: 'body',
            targetState: 'm-brand--minimize m-aside-left--minimize',
            togglerState: 'm-brand__toggler--active'
        }).on('toggle', function() {
            horMenu.pauseDropdownHover(800);
            asideMenu.pauseDropdownHover(800);
        });

        //== Example: minimize the left aside on page load
        //== asideLeftToggle.toggleOn();

        $('#m_aside_left_hide_toggle').mToggle({
            target: 'body',
            targetState: 'm-aside-left--hide',
            togglerState: 'm-brand__toggler--active'
        }).on('toggle', function() {
            horMenu.pauseDropdownHover(800);
            asideMenu.pauseDropdownHover(800);
        })
    }

    var initTopbar = function() {
        $('#m_aside_header_topbar_mobile_toggle').click(function() {
            $('body').toggleClass('m-topbar--on');
        });                                  

        // Animated Notification Icon 
        setInterval(function() {
            $('#m_topbar_notification_icon .m-nav__link-icon').addClass('m-animate-shake');
            $('#m_topbar_notification_icon .m-nav__link-badge').addClass('m-animate-blink');
        }, 3000);

        setInterval(function() {
            $('#m_topbar_notification_icon .m-nav__link-icon').removeClass('m-animate-shake');
            $('#m_topbar_notification_icon .m-nav__link-badge').removeClass('m-animate-blink');
        }, 6000);
    }

    // handle quick search
    var initQuicksearch = function() {
        var qs = $('#m_quicksearch');

        qs.mQuicksearch({
            type: qs.data('search-type'), // quick search type
            source: 'http://keenthemes.com/metronic/preview/inc/api/quick_search.php',            
            spinner: 'm-loader m-loader--skin-light m-loader--right',

            input: '#m_quicksearch_input',
            iconClose: '#m_quicksearch_close',
            iconCancel: '#m_quicksearch_cancel',
            iconSearch: '#m_quicksearch_search',

            hasResultClass: 'm-list-search--has-result',
            minLength: 1,            
            templates: {
                error: function(qs) {
                    return '<div class="m-search-results m-search-results--skin-light"><span class="m-search-result__message">Something went wrong</div></div>';
                }                            
            }
        });      
    }

    var initScrollTop = function() {
        $('[data-toggle="m-scroll-top"]').mScrollTop({
            offset: 300,
            speed: 600
        });
    }

    return {
        init: function() {  
            this.initHeader();
            this.initAside();
        },

        initHeader: function() {
            initStickyHeader();
            initHorMenu();
            initTopbar();
            initQuicksearch();
            initScrollTop();
        },

        initAside: function() {
            initLeftAside();
            initLeftAsideMenu();            
            initLeftAsideToggle();

            this.onLeftSidebarToggle(function(e) {
              var datatables = $('.m-datatable');
              $(datatables).each(function() {
                $(this).mDatatable('redraw');
              });
            });
        },

        getAsideMenu: function() {
            return asideMenu;
        },

        onLeftSidebarToggle: function(func) {
            $('#m_aside_left_minimize_toggle').mToggle().on('toggle', func);
        },

        closeMobileAsideMenuOffcanvas: function() {
            if (mUtil.isMobileDevice()) {
                asideMenuOffcanvas.hide();
            }
        },

        closeMobileHorMenuOffcanvas: function() {
            if (mUtil.isMobileDevice()) {
                horMenuOffcanvas.hide();
            }
        }
    };
}();

$(document).ready(function() {
    if (mUtil.isAngularVersion() === false) {
        mLayout.init();
    }
});


var mQuickSidebar = function() {
    var topbarAside = $('#m_quick_sidebar');
    var topbarAsideTabs = $('#m_quick_sidebar_tabs');    
    var topbarAsideClose = $('#m_quick_sidebar_close');
    var topbarAsideToggle = $('#m_quick_sidebar_toggle');
    var topbarAsideContent = topbarAside.find('.m-quick-sidebar__content');

    var initMessages = function() {
        var init = function() {
            var messenger = $('#m_quick_sidebar_tabs_messenger');  
            var messengerMessages = messenger.find('.m-messenger__messages');

            var height = topbarAside.outerHeight(true) - 
                topbarAsideTabs.outerHeight(true) - 
                messenger.find('.m-messenger__form').outerHeight(true) - 120;
            
            // init messages scrollable content
            messengerMessages.css('height', height);
            mApp.initScroller(messengerMessages, {});
        }

        init();        
        
        // reinit on window resize
        mUtil.addResizeHandler(init);
    }

    var initSettings = function() { 
        // init dropdown tabbable content
        var init = function() {
            var settings = $('#m_quick_sidebar_tabs_settings');
            var height = mUtil.getViewPort().height - topbarAsideTabs.outerHeight(true) - 60;

            // init settings scrollable content
            settings.css('height', height);
            mApp.initScroller(settings, {});
        }

        init();

        // reinit on window resize
        mUtil.addResizeHandler(init);
    }

    var initLogs = function() {
        // init dropdown tabbable content
        var init = function() {
            var logs = $('#m_quick_sidebar_tabs_logs');
            var height = mUtil.getViewPort().height - topbarAsideTabs.outerHeight(true) - 60;

            // init settings scrollable content
            logs.css('height', height);
            mApp.initScroller(logs, {});
        }

        init();

        // reinit on window resize
        mUtil.addResizeHandler(init);
    }

    var initOffcanvasTabs = function() {
        initMessages();
        initSettings();
        initLogs();
    }

    var initOffcanvas = function() {
        topbarAside.mOffcanvas({
            class: 'm-quick-sidebar',
            overlay: true,  
            close: topbarAsideClose,
            toggle: topbarAsideToggle
        });   

        // run once on first time dropdown shown
        topbarAside.mOffcanvas().one('afterShow', function() {
            mApp.block(topbarAside);

            setTimeout(function() {
                mApp.unblock(topbarAside);
                
                topbarAsideContent.removeClass('m--hide');

                initOffcanvasTabs();
            }, 1000);                         
        });
    }

    return {     
        init: function() {  
            initOffcanvas(); 
        }
    };
}();

$(document).ready(function() {
    mQuickSidebar.init();
});




!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):a(window.jQuery)}(function(a){"function"!=typeof Array.prototype.reduce&&(Array.prototype.reduce=function(a,b){var c,d,e=this.length>>>0,f=!1;for(1<arguments.length&&(d=b,f=!0),c=0;e>c;++c)this.hasOwnProperty(c)&&(f?d=a(d,this[c],c,this):(d=this[c],f=!0));if(!f)throw new TypeError("Reduce of empty array with no initial value");return d}),"function"!=typeof Array.prototype.filter&&(Array.prototype.filter=function(a){if(void 0===this||null===this)throw new TypeError;var b=Object(this),c=b.length>>>0;if("function"!=typeof a)throw new TypeError;for(var d=[],e=arguments.length>=2?arguments[1]:void 0,f=0;c>f;f++)if(f in b){var g=b[f];a.call(e,g,f,b)&&d.push(g)}return d});var b,c="function"==typeof define&&define.amd,d=function(b){var c="Comic Sans MS"===b?"Courier New":"Comic Sans MS",d=a("<div>").css({position:"absolute",left:"-9999px",top:"-9999px",fontSize:"200px"}).text("mmmmmmmmmwwwwwww").appendTo(document.body),e=d.css("fontFamily",c).width(),f=d.css("fontFamily",b+","+c).width();return d.remove(),e!==f},e={isMac:navigator.appVersion.indexOf("Mac")>-1,isMSIE:navigator.userAgent.indexOf("MSIE")>-1||navigator.userAgent.indexOf("Trident")>-1,isFF:navigator.userAgent.indexOf("Firefox")>-1,jqueryVersion:parseFloat(a.fn.jquery),isSupportAmd:c,hasCodeMirror:c?require.specified("CodeMirror"):!!window.CodeMirror,isFontInstalled:d,isW3CRangeSupport:!!document.createRange},f=function(){var b=function(a){return function(b){return a===b}},c=function(a,b){return a===b},d=function(a){return function(b,c){return b[a]===c[a]}},e=function(){return!0},f=function(){return!1},g=function(a){return function(){return!a.apply(a,arguments)}},h=function(a,b){return function(c){return a(c)&&b(c)}},i=function(a){return a},j=0,k=function(a){var b=++j+"";return a?a+b:b},l=function(b){var c=a(document);return{top:b.top+c.scrollTop(),left:b.left+c.scrollLeft(),width:b.right-b.left,height:b.bottom-b.top}},m=function(a){var b={};for(var c in a)a.hasOwnProperty(c)&&(b[a[c]]=c);return b};return{eq:b,eq2:c,peq2:d,ok:e,fail:f,self:i,not:g,and:h,uniqueId:k,rect2bnd:l,invertObject:m}}(),g=function(){var b=function(a){return a[0]},c=function(a){return a[a.length-1]},d=function(a){return a.slice(0,a.length-1)},e=function(a){return a.slice(1)},g=function(a,b){for(var c=0,d=a.length;d>c;c++){var e=a[c];if(b(e))return e}},h=function(a,b){for(var c=0,d=a.length;d>c;c++)if(!b(a[c]))return!1;return!0},i=function(b,c){return-1!==a.inArray(c,b)},j=function(a,b){return b=b||f.self,a.reduce(function(a,c){return a+b(c)},0)},k=function(a){for(var b=[],c=-1,d=a.length;++c<d;)b[c]=a[c];return b},l=function(a,d){if(!a.length)return[];var f=e(a);return f.reduce(function(a,b){var e=c(a);return d(c(e),b)?e[e.length]=b:a[a.length]=[b],a},[[b(a)]])},m=function(a){for(var b=[],c=0,d=a.length;d>c;c++)a[c]&&b.push(a[c]);return b},n=function(a){for(var b=[],c=0,d=a.length;d>c;c++)i(b,a[c])||b.push(a[c]);return b};return{head:b,last:c,initial:d,tail:e,find:g,contains:i,all:h,sum:j,from:k,clusterBy:l,compact:m,unique:n}}(),h=String.fromCharCode(160),i="﻿",j=function(){var b=function(b){return b&&a(b).hasClass("note-editable")},c=function(b){return b&&a(b).hasClass("note-control-sizing")},d=function(b){var c;if(b.hasClass("note-air-editor")){var d=g.last(b.attr("id").split("-"));return c=function(b){return function(){return a(b+d)}},{editor:function(){return b},editable:function(){return b},popover:c("#note-popover-"),handle:c("#note-handle-"),dialog:c("#note-dialog-")}}return c=function(a){return function(){return b.find(a)}},{editor:function(){return b},dropzone:c(".note-dropzone"),toolbar:c(".note-toolbar"),editable:c(".note-editable"),codable:c(".note-codable"),statusbar:c(".note-statusbar"),popover:c(".note-popover"),handle:c(".note-handle"),dialog:c(".note-dialog")}},k=function(a){return a=a.toUpperCase(),function(b){return b&&b.nodeName.toUpperCase()===a}},l=function(a){return a&&3===a.nodeType},m=function(a){return a&&/^BR|^IMG|^HR/.test(a.nodeName.toUpperCase())},n=function(a){return b(a)?!1:a&&/^DIV|^P|^LI|^H[1-7]/.test(a.nodeName.toUpperCase())},o=k("LI"),p=function(a){return n(a)&&!o(a)},q=function(a){return!u(a)&&!r(a)&&!n(a)},r=function(a){return a&&/^UL|^OL/.test(a.nodeName.toUpperCase())},s=function(a){return a&&/^TD|^TH/.test(a.nodeName.toUpperCase())},t=k("BLOCKQUOTE"),u=function(a){return s(a)||t(a)||b(a)},v=k("A"),w=function(a){return q(a)&&!!D(a,n)},x=function(a){return q(a)&&!D(a,n)},y=k("BODY"),z=e.isMSIE?"&nbsp;":"<br>",A=function(a){return l(a)?a.nodeValue.length:a.childNodes.length},B=function(a){var b=A(a);return 0===b?!0:j.isText(a)||1!==b||a.innerHTML!==z?!1:!0},C=function(a){m(a)||A(a)||(a.innerHTML=z)},D=function(a,c){for(;a;){if(c(a))return a;if(b(a))break;a=a.parentNode}return null},E=function(a,c){c=c||f.fail;var d=[];return D(a,function(a){return b(a)||d.push(a),c(a)}),d},F=function(a,b){var c=E(a);return g.last(c.filter(b))},G=function(b,c){for(var d=E(b),e=c;e;e=e.parentNode)if(a.inArray(e,d)>-1)return e;return null},H=function(a,b){b=b||f.fail;for(var c=[];a&&!b(a);)c.push(a),a=a.previousSibling;return c},I=function(a,b){b=b||f.fail;for(var c=[];a&&!b(a);)c.push(a),a=a.nextSibling;return c},J=function(a,b){var c=[];return b=b||f.ok,function d(e){a!==e&&b(e)&&c.push(e);for(var f=0,g=e.childNodes.length;g>f;f++)d(e.childNodes[f])}(a),c},K=function(b,c){var d=b.parentNode,e=a("<"+c+">")[0];return d.insertBefore(e,b),e.appendChild(b),e},L=function(a,b){var c=b.nextSibling,d=b.parentNode;return c?d.insertBefore(a,c):d.appendChild(a),a},M=function(b,c){return a.each(c,function(a,c){b.appendChild(c)}),b},N=function(a){return 0===a.offset},O=function(a){return a.offset===A(a.node)},P=function(a){return N(a)||O(a)},Q=function(a,b){for(;a&&a!==b;){if(0!==S(a))return!1;a=a.parentNode}return!0},R=function(a,b){for(;a&&a!==b;){if(S(a)!==A(a.parentNode)-1)return!1;a=a.parentNode}return!0},S=function(a){for(var b=0;a=a.previousSibling;)b+=1;return b},T=function(a){return!!(a&&a.childNodes&&a.childNodes.length)},U=function(a,c){var d,e;if(0===a.offset){if(b(a.node))return null;d=a.node.parentNode,e=S(a.node)}else T(a.node)?(d=a.node.childNodes[a.offset-1],e=A(d)):(d=a.node,e=c?0:a.offset-1);return{node:d,offset:e}},V=function(a,c){var d,e;if(A(a.node)===a.offset){if(b(a.node))return null;d=a.node.parentNode,e=S(a.node)+1}else T(a.node)?(d=a.node.childNodes[a.offset],e=0):(d=a.node,e=c?A(a.node):a.offset+1);return{node:d,offset:e}},W=function(a,b){return a.node===b.node&&a.offset===b.offset},X=function(a){if(l(a.node)||!T(a.node)||B(a.node))return!0;var b=a.node.childNodes[a.offset-1],c=a.node.childNodes[a.offset];return b&&!m(b)||c&&!m(c)?!1:!0},Y=function(a,b){for(;a;){if(b(a))return a;a=U(a)}return null},Z=function(a,b){for(;a;){if(b(a))return a;a=V(a)}return null},$=function(a,b,c,d){for(var e=a;e&&(c(e),!W(e,b));){var f=d&&a.node!==e.node&&b.node!==e.node;e=V(e,f)}},_=function(b,c){var d=E(c,f.eq(b));return a.map(d,S).reverse()},ab=function(a,b){for(var c=a,d=0,e=b.length;e>d;d++)c=c.childNodes.length<=b[d]?c.childNodes[c.childNodes.length-1]:c.childNodes[b[d]];return c},bb=function(a,b){if(l(a.node))return N(a)?a.node:O(a)?a.node.nextSibling:a.node.splitText(a.offset);var c=a.node.childNodes[a.offset],d=L(a.node.cloneNode(!1),a.node);return M(d,I(c)),b||(C(a.node),C(d)),d},cb=function(a,b,c){var d=E(b.node,f.eq(a));return d.length?1===d.length?bb(b,c):d.reduce(function(a,d){var e=L(d.cloneNode(!1),d);return a===b.node&&(a=bb(b,c)),M(e,I(a)),c||(C(d),C(e)),e}):null},db=function(a){return document.createElement(a)},eb=function(a){return document.createTextNode(a)},fb=function(a,b){if(a&&a.parentNode){if(a.removeNode)return a.removeNode(b);var c=a.parentNode;if(!b){var d,e,f=[];for(d=0,e=a.childNodes.length;e>d;d++)f.push(a.childNodes[d]);for(d=0,e=f.length;e>d;d++)c.insertBefore(f[d],a)}c.removeChild(a)}},gb=function(a,c){for(;a&&!b(a)&&c(a);){var d=a.parentNode;fb(a),a=d}},hb=function(a,b){if(a.nodeName.toUpperCase()===b.toUpperCase())return a;var c=db(b);return a.style.cssText&&(c.style.cssText=a.style.cssText),M(c,g.from(a.childNodes)),L(c,a),fb(a),c},ib=k("TEXTAREA"),jb=function(b,c){var d=ib(b[0])?b.val():b.html();if(c){var e=/<(\/?)(\b(?!!)[^>\s]*)(.*?)(\s*\/?>)/g;d=d.replace(e,function(a,b,c){c=c.toUpperCase();var d=/^DIV|^TD|^TH|^P|^LI|^H[1-7]/.test(c)&&!!b,e=/^BLOCKQUOTE|^TABLE|^TBODY|^TR|^HR|^UL|^OL/.test(c);return a+(d||e?"\n":"")}),d=a.trim(d)}return d},kb=function(a){var b=a.val();return b.replace(/[\n\r]/g,"")};return{NBSP_CHAR:h,ZERO_WIDTH_NBSP_CHAR:i,blank:z,emptyPara:"<p>"+z+"</p>",isEditable:b,isControlSizing:c,buildLayoutInfo:d,isText:l,isPara:n,isPurePara:p,isInline:q,isBodyInline:x,isBody:y,isParaInline:w,isList:r,isTable:k("TABLE"),isCell:s,isBlockquote:t,isBodyContainer:u,isAnchor:v,isDiv:k("DIV"),isLi:o,isSpan:k("SPAN"),isB:k("B"),isU:k("U"),isS:k("S"),isI:k("I"),isImg:k("IMG"),isTextarea:ib,isEmpty:B,isEmptyAnchor:f.and(v,B),nodeLength:A,isLeftEdgePoint:N,isRightEdgePoint:O,isEdgePoint:P,isLeftEdgeOf:Q,isRightEdgeOf:R,prevPoint:U,nextPoint:V,isSamePoint:W,isVisiblePoint:X,prevPointUntil:Y,nextPointUntil:Z,walkPoint:$,ancestor:D,listAncestor:E,lastAncestor:F,listNext:I,listPrev:H,listDescendant:J,commonAncestor:G,wrap:K,insertAfter:L,appendChildNodes:M,position:S,hasChildren:T,makeOffsetPath:_,fromOffsetPath:ab,splitTree:cb,create:db,createText:eb,remove:fb,removeWhile:gb,replace:hb,html:jb,value:kb}}(),k={version:"0.5.10",options:{width:null,height:null,minHeight:null,maxHeight:null,focus:!1,tabsize:4,styleWithSpan:!0,disableLinkTarget:!1,disableDragAndDrop:!1,disableResizeEditor:!1,codemirror:{mode:"text/html",htmlMode:!0,lineNumbers:!0},lang:"en-US",direction:null,toolbar:[["style",["style"]],["font",["bold","italic","underline","superscript","subscript","strikethrough","clear"]],["fontname",["fontname"]],["color",["color"]],["para",["ul","ol","paragraph"]],["height",["height"]],["table",["table"]],["insert",["link","picture","video","hr"]],["view",["fullscreen","codeview"]],["help",["help"]]],airMode:!1,airPopover:[["color",["color"]],["font",["bold","underline","clear"]],["para",["ul","paragraph"]],["table",["table"]],["insert",["link","picture"]]],styleTags:["p","blockquote","pre","h1","h2","h3","h4","h5","h6"],defaultFontName:"Helvetica Neue",fontNames:["Arial","Arial Black","Comic Sans MS","Courier New","Helvetica Neue","Impact","Lucida Grande","Tahoma","Times New Roman","Verdana"],colors:[["#000000","#424242","#636363","#9C9C94","#CEC6CE","#EFEFEF","#F7F7F7","#FFFFFF"],["#FF0000","#FF9C00","#FFFF00","#00FF00","#00FFFF","#0000FF","#9C00FF","#FF00FF"],["#F7C6CE","#FFE7CE","#FFEFC6","#D6EFD6","#CEDEE7","#CEE7F7","#D6D6E7","#E7D6DE"],["#E79C9C","#FFC69C","#FFE79C","#B5D6A5","#A5C6CE","#9CC6EF","#B5A5D6","#D6A5BD"],["#E76363","#F7AD6B","#FFD663","#94BD7B","#73A5AD","#6BADDE","#8C7BC6","#C67BA5"],["#CE0000","#E79439","#EFC631","#6BA54A","#4A7B8C","#3984C6","#634AA5","#A54A7B"],["#9C0000","#B56308","#BD9400","#397B21","#104A5A","#085294","#311873","#731842"],["#630000","#7B3900","#846300","#295218","#083139","#003163","#21104A","#4A1031"]],fontSizes:["8","9","10","11","12","14","18","24","36"],lineHeights:["1.0","1.2","1.4","1.5","1.6","1.8","2.0","3.0"],insertTableMaxSize:{col:10,row:10},oninit:null,onfocus:null,onblur:null,onenter:null,onkeyup:null,onkeydown:null,onImageUpload:null,onImageUploadError:null,onToolbarClick:null,onCreateLink:function(a){return-1!==a.indexOf("@")&&-1===a.indexOf(":")?a="mailto:"+a:-1===a.indexOf("://")&&(a="http://"+a),a},keyMap:{pc:{ENTER:"insertParagraph","CTRL+Z":"undo","CTRL+Y":"redo",TAB:"tab","SHIFT+TAB":"untab","CTRL+B":"bold","CTRL+I":"italic","CTRL+U":"underline","CTRL+SHIFT+S":"strikethrough","CTRL+BACKSLASH":"removeFormat","CTRL+SHIFT+L":"justifyLeft","CTRL+SHIFT+E":"justifyCenter","CTRL+SHIFT+R":"justifyRight","CTRL+SHIFT+J":"justifyFull","CTRL+SHIFT+NUM7":"insertUnorderedList","CTRL+SHIFT+NUM8":"insertOrderedList","CTRL+LEFTBRACKET":"outdent","CTRL+RIGHTBRACKET":"indent","CTRL+NUM0":"formatPara","CTRL+NUM1":"formatH1","CTRL+NUM2":"formatH2","CTRL+NUM3":"formatH3","CTRL+NUM4":"formatH4","CTRL+NUM5":"formatH5","CTRL+NUM6":"formatH6","CTRL+ENTER":"insertHorizontalRule","CTRL+K":"showLinkDialog"},mac:{ENTER:"insertParagraph","CMD+Z":"undo","CMD+SHIFT+Z":"redo",TAB:"tab","SHIFT+TAB":"untab","CMD+B":"bold","CMD+I":"italic","CMD+U":"underline","CMD+SHIFT+S":"strikethrough","CMD+BACKSLASH":"removeFormat","CMD+SHIFT+L":"justifyLeft","CMD+SHIFT+E":"justifyCenter","CMD+SHIFT+R":"justifyRight","CMD+SHIFT+J":"justifyFull","CMD+SHIFT+NUM7":"insertUnorderedList","CMD+SHIFT+NUM8":"insertOrderedList","CMD+LEFTBRACKET":"outdent","CMD+RIGHTBRACKET":"indent","CMD+NUM0":"formatPara","CMD+NUM1":"formatH1","CMD+NUM2":"formatH2","CMD+NUM3":"formatH3","CMD+NUM4":"formatH4","CMD+NUM5":"formatH5","CMD+NUM6":"formatH6","CMD+ENTER":"insertHorizontalRule","CMD+K":"showLinkDialog"}}},lang:{"en-US":{font:{bold:"Bold",italic:"Italic",underline:"Underline",strikethrough:"Strikethrough",subscript:"Subscript",superscript:"Superscript",clear:"Remove Font Style",height:"Line Height",name:"Font Family",size:"Font Size"},image:{image:"Picture",insert:"Insert Image",resizeFull:"Resize Full",resizeHalf:"Resize Half",resizeQuarter:"Resize Quarter",floatLeft:"Float Left",floatRight:"Float Right",floatNone:"Float None",shapeRounded:"Shape: Rounded",shapeCircle:"Shape: Circle",shapeThumbnail:"Shape: Thumbnail",shapeNone:"Shape: None",dragImageHere:"Drag an image here",selectFromFiles:"Select from files",url:"Image URL",remove:"Remove Image"},link:{link:"Link",insert:"Insert Link",unlink:"Unlink",edit:"Edit",textToDisplay:"Text to display",url:"To what URL should this link go?",openInNewWindow:"Open in new window"},video:{video:"Video",videoLink:"Video Link",insert:"Insert Video",url:"Video URL?",providers:"(YouTube, Vimeo, Vine, Instagram, DailyMotion or Youku)"},table:{table:"Table"},hr:{insert:"Insert Horizontal Rule"},style:{style:"Style",normal:"Normal",blockquote:"Quote",pre:"Code",h1:"Header 1",h2:"Header 2",h3:"Header 3",h4:"Header 4",h5:"Header 5",h6:"Header 6"},lists:{unordered:"Unordered list",ordered:"Ordered list"},options:{help:"Help",fullscreen:"Full Screen",codeview:"Code View"},paragraph:{paragraph:"Paragraph",outdent:"Outdent",indent:"Indent",left:"Align left",center:"Align center",right:"Align right",justify:"Justify full"},color:{recent:"Recent Color",more:"More Color",background:"Background Color",foreground:"Foreground Color",transparent:"Transparent",setTransparent:"Set transparent",reset:"Reset",resetToDefault:"Reset to default"},shortcut:{shortcuts:"Keyboard shortcuts",close:"Close",textFormatting:"Text formatting",action:"Action",paragraphFormatting:"Paragraph formatting",documentStyle:"Document Style"},history:{undo:"Undo",redo:"Redo"}}}},l=function(){var b=function(b){return a.Deferred(function(c){a.extend(new FileReader,{onload:function(a){var b=a.target.result;c.resolve(b)},onerror:function(){c.reject(this)}}).readAsDataURL(b)}).promise()},c=function(b,c){return a.Deferred(function(d){a("<img>").one("load",function(){d.resolve(a(this))}).one("error abort",function(){d.reject(a(this))}).css({display:"none"}).appendTo(document.body).attr("src",b).attr("data-filename",c)}).promise()};return{readFileAsDataURL:b,createImage:c}}(),m={isEdit:function(a){return g.contains([8,9,13,32],a)},nameFromCode:{8:"BACKSPACE",9:"TAB",13:"ENTER",32:"SPACE",48:"NUM0",49:"NUM1",50:"NUM2",51:"NUM3",52:"NUM4",53:"NUM5",54:"NUM6",55:"NUM7",56:"NUM8",66:"B",69:"E",73:"I",74:"J",75:"K",76:"L",82:"R",83:"S",85:"U",89:"Y",90:"Z",191:"SLASH",219:"LEFTBRACKET",220:"BACKSLASH",221:"RIGHTBRACKET"}},n=function(){var b=function(b,c){if(e.jqueryVersion<1.9){var d={};return a.each(c,function(a,c){d[c]=b.css(c)}),d}return b.css.call(b,c)};this.stylePara=function(b,c){a.each(b.nodes(j.isPara,{includeAncestor:!0}),function(b,d){a(d).css(c)})},this.current=function(c,d){var e=a(j.isText(c.sc)?c.sc.parentNode:c.sc),f=["font-family","font-size","text-align","list-style-type","line-height"],g=b(e,f)||{};if(g["font-size"]=parseInt(g["font-size"],10),g["font-bold"]=document.queryCommandState("bold")?"bold":"normal",g["font-italic"]=document.queryCommandState("italic")?"italic":"normal",g["font-underline"]=document.queryCommandState("underline")?"underline":"normal",g["font-strikethrough"]=document.queryCommandState("strikeThrough")?"strikethrough":"normal",g["font-superscript"]=document.queryCommandState("superscript")?"superscript":"normal",g["font-subscript"]=document.queryCommandState("subscript")?"subscript":"normal",c.isOnList()){var h=["circle","disc","disc-leading-zero","square"],i=a.inArray(g["list-style-type"],h)>-1;g["list-style"]=i?"unordered":"ordered"}else g["list-style"]="none";var k=j.ancestor(c.sc,j.isPara);if(k&&k.style["line-height"])g["line-height"]=k.style.lineHeight;else{var l=parseInt(g["line-height"],10)/parseInt(g["font-size"],10);g["line-height"]=l.toFixed(1)}return g.image=j.isImg(d)&&d,g.anchor=c.isOnAnchor()&&j.ancestor(c.sc,j.isAnchor),g.ancestors=j.listAncestor(c.sc,j.isEditable),g.range=c,g}},o=function(){var b=function(a,b){var c,d,e=a.parentElement(),f=document.body.createTextRange(),h=g.from(e.childNodes);for(c=0;c<h.length;c++)if(!j.isText(h[c])){if(f.moveToElementText(h[c]),f.compareEndPoints("StartToStart",a)>=0)break;d=h[c]}if(0!==c&&j.isText(h[c-1])){var i=document.body.createTextRange(),k=null;i.moveToElementText(d||e),i.collapse(!d),k=d?d.nextSibling:e.firstChild;var l=a.duplicate();l.setEndPoint("StartToStart",i);for(var m=l.text.replace(/[\r\n]/g,"").length;m>k.nodeValue.length&&k.nextSibling;)m-=k.nodeValue.length,k=k.nextSibling;{k.nodeValue}b&&k.nextSibling&&j.isText(k.nextSibling)&&m===k.nodeValue.length&&(m-=k.nodeValue.length,k=k.nextSibling),e=k,c=m}return{cont:e,offset:c}},c=function(a){var b=function(a,c){var d,e;if(j.isText(a)){var h=j.listPrev(a,f.not(j.isText)),i=g.last(h).previousSibling;d=i||a.parentNode,c+=g.sum(g.tail(h),j.nodeLength),e=!i}else{if(d=a.childNodes[c]||a,j.isText(d))return b(d,0);c=0,e=!1}return{node:d,collapseToStart:e,offset:c}},c=document.body.createTextRange(),d=b(a.node,a.offset);return c.moveToElementText(d.node),c.collapse(d.collapseToStart),c.moveStart("character",d.offset),c},d=function(b,h,i,k){this.sc=b,this.so=h,this.ec=i,this.eo=k;var l=function(){if(e.isW3CRangeSupport){var a=document.createRange();return a.setStart(b,h),a.setEnd(i,k),a}var d=c({node:b,offset:h});return d.setEndPoint("EndToEnd",c({node:i,offset:k})),d};this.getPoints=function(){return{sc:b,so:h,ec:i,eo:k}},this.getStartPoint=function(){return{node:b,offset:h}},this.getEndPoint=function(){return{node:i,offset:k}},this.select=function(){var a=l();if(e.isW3CRangeSupport){var b=document.getSelection();b.rangeCount>0&&b.removeAllRanges(),b.addRange(a)}else a.select()},this.normalize=function(){var a=function(a){return j.isVisiblePoint(a)||(j.isLeftEdgePoint(a)?a=j.nextPointUntil(a,j.isVisiblePoint):j.isRightEdgePoint(a)&&(a=j.prevPointUntil(a,j.isVisiblePoint))),a},b=a(this.getStartPoint()),c=a(this.getStartPoint());return new d(b.node,b.offset,c.node,c.offset)},this.nodes=function(a,b){a=a||f.ok;var c=b&&b.includeAncestor,d=b&&b.fullyContains,e=this.getStartPoint(),h=this.getEndPoint(),i=[],k=[];return j.walkPoint(e,h,function(b){if(!j.isEditable(b.node)){var e;d?(j.isLeftEdgePoint(b)&&k.push(b.node),j.isRightEdgePoint(b)&&g.contains(k,b.node)&&(e=b.node)):e=c?j.ancestor(b.node,a):b.node,e&&a(e)&&i.push(e)}},!0),g.unique(i)},this.commonAncestor=function(){return j.commonAncestor(b,i)},this.expand=function(a){var c=j.ancestor(b,a),e=j.ancestor(i,a);if(!c&&!e)return new d(b,h,i,k);var f=this.getPoints();return c&&(f.sc=c,f.so=0),e&&(f.ec=e,f.eo=j.nodeLength(e)),new d(f.sc,f.so,f.ec,f.eo)},this.collapse=function(a){return a?new d(b,h,b,h):new d(i,k,i,k)},this.splitText=function(){var a=b===i,c=this.getPoints();return j.isText(i)&&!j.isEdgePoint(this.getEndPoint())&&i.splitText(k),j.isText(b)&&!j.isEdgePoint(this.getStartPoint())&&(c.sc=b.splitText(h),c.so=0,a&&(c.ec=c.sc,c.eo=k-h)),new d(c.sc,c.so,c.ec,c.eo)},this.deleteContents=function(){if(this.isCollapsed())return this;var b=this.splitText(),c=b.nodes(null,{fullyContains:!0}),e=j.prevPointUntil(b.getStartPoint(),function(a){return!g.contains(c,a.node)}),f=[];return a.each(c,function(a,b){var c=b.parentNode;e.node!==c&&1===j.nodeLength(c)&&f.push(c),j.remove(b,!1)}),a.each(f,function(a,b){j.remove(b,!1)}),new d(e.node,e.offset,e.node,e.offset)};var m=function(a){return function(){var c=j.ancestor(b,a);return!!c&&c===j.ancestor(i,a)}};this.isOnEditable=m(j.isEditable),this.isOnList=m(j.isList),this.isOnAnchor=m(j.isAnchor),this.isOnCell=m(j.isCell),this.isLeftEdgeOf=function(a){if(!j.isLeftEdgePoint(this.getStartPoint()))return!1;var b=j.ancestor(this.sc,a);return b&&j.isLeftEdgeOf(this.sc,b)},this.isCollapsed=function(){return b===i&&h===k},this.wrapBodyInlineWithPara=function(){if(j.isBodyContainer(b)&&j.isEmpty(b))return b.innerHTML=j.emptyPara,new d(b.firstChild,0);if(!j.isInline(b)||j.isParaInline(b))return this;var a=j.listAncestor(b,f.not(j.isInline)),c=g.last(a);j.isInline(c)||(c=a[a.length-2]||b.childNodes[h]);var e=j.listPrev(c,j.isParaInline).reverse();if(e=e.concat(j.listNext(c.nextSibling,j.isParaInline)),e.length){var i=j.wrap(g.head(e),"p");j.appendChildNodes(i,g.tail(e))}return this},this.insertNode=function(a,b){var c,d,e,f=this.wrapBodyInlineWithPara(),h=f.getStartPoint();if(b)d=j.isPara(h.node)?h.node:h.node.parentNode,e=j.isPara(h.node)?h.node.childNodes[h.offset]:j.splitTree(h.node,h);else{var i=j.listAncestor(h.node,j.isBodyContainer),k=g.last(i)||h.node;j.isBodyContainer(k)?(c=i[i.length-2],d=k):(c=k,d=c.parentNode),e=c&&j.splitTree(c,h)}return e?e.parentNode.insertBefore(a,e):d.appendChild(a),a},this.toString=function(){var a=l();return e.isW3CRangeSupport?a.toString():a.text},this.bookmark=function(a){return{s:{path:j.makeOffsetPath(a,b),offset:h},e:{path:j.makeOffsetPath(a,i),offset:k}}},this.getClientRects=function(){var a=l();return a.getClientRects()}};return{create:function(a,c,f,g){if(arguments.length)2===arguments.length&&(f=a,g=c);else if(e.isW3CRangeSupport){var h=document.getSelection();if(0===h.rangeCount)return null;if(j.isBody(h.anchorNode))return null;var i=h.getRangeAt(0);a=i.startContainer,c=i.startOffset,f=i.endContainer,g=i.endOffset}else{var k=document.selection.createRange(),l=k.duplicate();l.collapse(!1);var m=k;m.collapse(!0);var n=b(m,!0),o=b(l,!1);j.isText(n.node)&&j.isLeftEdgePoint(n)&&j.isTextNode(o.node)&&j.isRightEdgePoint(o)&&o.node.nextSibling===n.node&&(n=o),a=n.cont,c=n.offset,f=o.cont,g=o.offset}return new d(a,c,f,g)},createFromNode:function(a){return this.create(a,0,a,1)},createFromBookmark:function(a,b){var c=j.fromOffsetPath(a,b.s.path),e=b.s.offset,f=j.fromOffsetPath(a,b.e.path),g=b.e.offset;return new d(c,e,f,g)}}}(),p=function(){this.insertTab=function(a,b,c){var d=j.createText(new Array(c+1).join(j.NBSP_CHAR));b=b.deleteContents(),b.insertNode(d,!0),b=o.create(d,c),b.select()},this.insertParagraph=function(){var b=o.create();b=b.deleteContents(),b=b.wrapBodyInlineWithPara();var c,d=j.ancestor(b.sc,j.isPara);if(d){c=j.splitTree(d,b.getStartPoint());var e=j.listDescendant(d,j.isEmptyAnchor);e=e.concat(j.listDescendant(c,j.isEmptyAnchor)),a.each(e,function(a,b){j.remove(b)})}else{var f=b.sc.childNodes[b.so];c=a(j.emptyPara)[0],f?b.sc.insertBefore(c,f):b.sc.appendChild(c)}o.create(c,0).normalize().select()}},q=function(){this.tab=function(a,b){var c=j.ancestor(a.commonAncestor(),j.isCell),d=j.ancestor(c,j.isTable),e=j.listDescendant(d,j.isCell),f=g[b?"prev":"next"](e,c);f&&o.create(f,0).select()},this.createTable=function(b,c){for(var d,e=[],f=0;b>f;f++)e.push("<td>"+j.blank+"</td>");d=e.join("");for(var g,h=[],i=0;c>i;i++)h.push("<tr>"+d+"</tr>");return g=h.join(""),a('<table class="table table-bordered">'+g+"</table>")[0]}},r=function(){this.insertOrderedList=function(){this.toggleList("OL")},this.insertUnorderedList=function(){this.toggleList("UL")},this.indent=function(){var b=this,c=o.create().wrapBodyInlineWithPara(),d=c.nodes(j.isPara,{includeAncestor:!0}),e=g.clusterBy(d,f.peq2("parentNode"));a.each(e,function(c,d){var e=g.head(d);j.isLi(e)?b.wrapList(d,e.parentNode.nodeName):a.each(d,function(b,c){a(c).css("marginLeft",function(a,b){return(parseInt(b,10)||0)+25})})}),c.select()},this.outdent=function(){var b=this,c=o.create().wrapBodyInlineWithPara(),d=c.nodes(j.isPara,{includeAncestor:!0}),e=g.clusterBy(d,f.peq2("parentNode"));a.each(e,function(c,d){var e=g.head(d);j.isLi(e)?b.releaseList([d]):a.each(d,function(b,c){a(c).css("marginLeft",function(a,b){return b=parseInt(b,10)||0,b>25?b-25:""})})}),c.select()},this.toggleList=function(b){var c=this,d=o.create().wrapBodyInlineWithPara(),e=d.nodes(j.isPara,{includeAncestor:!0}),h=g.clusterBy(e,f.peq2("parentNode"));if(g.find(e,j.isPurePara))a.each(h,function(a,d){c.wrapList(d,b)});else{var i=d.nodes(j.isList,{includeAncestor:!0}).filter(function(c){return!a.nodeName(c,b)});i.length?a.each(i,function(a,c){j.replace(c,b)}):this.releaseList(h,!0)}d.select()},this.wrapList=function(b,c){var d=g.head(b),e=g.last(b),f=j.isList(d.previousSibling)&&d.previousSibling,h=j.isList(e.nextSibling)&&e.nextSibling,i=f||j.insertAfter(j.create(c||"UL"),e);b=a.map(b,function(a){return j.isPurePara(a)?j.replace(a,"LI"):a}),j.appendChildNodes(i,b),h&&(j.appendChildNodes(i,g.from(h.childNodes)),j.remove(h))},this.releaseList=function(b,c){var d=[];return a.each(b,function(b,e){var f=g.head(e),h=g.last(e),i=c?j.lastAncestor(f,j.isList):f.parentNode,k=i.childNodes.length>1?j.splitTree(i,{node:h.parentNode,offset:j.position(h)+1},!0):null,l=j.splitTree(i,{node:f.parentNode,offset:j.position(f)},!0);e=c?j.listDescendant(l,j.isLi):g.from(l.childNodes).filter(j.isLi),(c||!j.isList(i.parentNode))&&(e=a.map(e,function(a){return j.replace(a,"P")})),a.each(g.from(e).reverse(),function(a,b){j.insertAfter(b,i)});var m=g.compact([i,l,k]);a.each(m,function(b,c){var d=[c].concat(j.listDescendant(c,j.isList));a.each(d.reverse(),function(a,b){j.nodeLength(b)||j.remove(b,!0)})}),d=d.concat(e)}),d}},s=function(){var b=new n,c=new q,d=new p,f=new r;this.saveRange=function(a,b){a.focus(),a.data("range",o.create()),b&&o.create().collapse().select()},this.restoreRange=function(a){var b=a.data("range");b&&(b.select(),a.focus())},this.currentStyle=function(a){var c=o.create();return c?c.isOnEditable()&&b.current(c,a):!1};var h=this.triggerOnChange=function(a){var b=a.data("callbacks").onChange;b&&b(a.html(),a)};this.undo=function(a){a.data("NoteHistory").undo(),h(a)},this.redo=function(a){a.data("NoteHistory").redo(),h(a)};for(var i=this.afterCommand=function(a){a.data("NoteHistory").recordUndo(),h(a)},k=["bold","italic","underline","strikethrough","superscript","subscript","justifyLeft","justifyCenter","justifyRight","justifyFull","formatBlock","removeFormat","backColor","foreColor","insertHorizontalRule","fontName"],m=0,s=k.length;s>m;m++)this[k[m]]=function(a){return function(b,c){document.execCommand(a,!1,c),i(b)}}(k[m]);this.tab=function(a,b){var e=o.create();e.isCollapsed()&&e.isOnCell()?c.tab(e):(d.insertTab(a,e,b.tabsize),i(a))},this.untab=function(){var a=o.create();a.isCollapsed()&&a.isOnCell()&&c.tab(a,!0)},this.insertParagraph=function(a){d.insertParagraph(a),i(a)},this.insertOrderedList=function(a){f.insertOrderedList(a),i(a)},this.insertUnorderedList=function(a){f.insertUnorderedList(a),i(a)},this.indent=function(a){f.indent(a),i(a)},this.outdent=function(a){f.outdent(a),i(a)},this.insertImage=function(a,b,c){l.createImage(b,c).then(function(b){b.css({display:"",width:Math.min(a.width(),b.width())}),o.create().insertNode(b[0]),i(a)}).fail(function(){var b=a.data("callbacks");b.onImageUploadError&&b.onImageUploadError()})},this.insertVideo=function(b,c){var d,e=/^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/,f=c.match(e),g=/\/\/instagram.com\/p\/(.[a-zA-Z0-9]*)/,h=c.match(g),j=/\/\/vine.co\/v\/(.[a-zA-Z0-9]*)/,k=c.match(j),l=/\/\/(player.)?vimeo.com\/([a-z]*\/)*([0-9]{6,11})[?]?.*/,m=c.match(l),n=/.+dailymotion.com\/(video|hub)\/([^_]+)[^#]*(#video=([^_&]+))?/,p=c.match(n),q=/\/\/v\.youku\.com\/v_show\/id_(\w+)\.html/,r=c.match(q);if(f&&11===f[2].length){var s=f[2];d=a("<iframe>").attr("src","//www.youtube.com/embed/"+s).attr("width","640").attr("height","360")}else h&&h[0].length?d=a("<iframe>").attr("src",h[0]+"/embed/").attr("width","612").attr("height","710").attr("scrolling","no").attr("allowtransparency","true"):k&&k[0].length?d=a("<iframe>").attr("src",k[0]+"/embed/simple").attr("width","600").attr("height","600").attr("class","vine-embed"):m&&m[3].length?d=a("<iframe webkitallowfullscreen mozallowfullscreen allowfullscreen>").attr("src","//player.vimeo.com/video/"+m[3]).attr("width","640").attr("height","360"):p&&p[2].length?d=a("<iframe>").attr("src","//www.dailymotion.com/embed/video/"+p[2]).attr("width","640").attr("height","360"):r&&r[1].length&&(d=a("<iframe webkitallowfullscreen mozallowfullscreen allowfullscreen>").attr("height","498").attr("width","510").attr("src","//player.youku.com/embed/"+r[1]));d&&(d.attr("frameborder",0),o.create().insertNode(d[0]),i(b))},this.formatBlock=function(a,b){b=e.isMSIE?"<"+b+">":b,document.execCommand("FormatBlock",!1,b),i(a)},this.formatPara=function(a){this.formatBlock(a,"P"),i(a)};for(var m=1;6>=m;m++)this["formatH"+m]=function(a){return function(b){this.formatBlock(b,"H"+a)}}(m);this.fontSize=function(a,b){document.execCommand("fontSize",!1,3),e.isFF?a.find("font[size=3]").removeAttr("size").css("font-size",b+"px"):a.find("span").filter(function(){return"medium"===this.style.fontSize}).css("font-size",b+"px"),i(a)},this.lineHeight=function(a,c){b.stylePara(o.create(),{lineHeight:c}),i(a)},this.unlink=function(a){var b=o.create();if(b.isOnAnchor()){var c=j.ancestor(b.sc,j.isAnchor);b=o.createFromNode(c),b.select(),document.execCommand("unlink"),i(a)}},this.createLink=function(b,c,d){var e=c.url,f=c.text,g=c.newWindow,h=c.range;d.onCreateLink&&(e=d.onCreateLink(e)),h=h.deleteContents();var j=h.insertNode(a("<A>"+f+"</A>")[0],!0);a(j).attr({href:e,target:g?"_blank":""}),o.createFromNode(j).select(),i(b)},this.getLinkInfo=function(b){b.focus();var c=o.create().expand(j.isAnchor),d=a(g.head(c.nodes(j.isAnchor)));return{range:c,text:c.toString(),isNewWindow:d.length?"_blank"===d.attr("target"):!0,url:d.length?d.attr("href"):""}},this.getVideoInfo=function(a){a.focus();var b=o.create();if(b.isOnAnchor()){var c=j.ancestor(b.sc,j.isAnchor);b=o.createFromNode(c)}return{text:b.toString()}},this.color=function(a,b){var c=JSON.parse(b),d=c.foreColor,e=c.backColor;d&&document.execCommand("foreColor",!1,d),e&&document.execCommand("backColor",!1,e),i(a)},this.insertTable=function(a,b){var d=b.split("x"),e=o.create();e=e.deleteContents(),e.insertNode(c.createTable(d[0],d[1])),i(a)},this.floatMe=function(a,b,c){c.css("float",b),i(a)},this.imageShape=function(a,b,c){c.removeClass("img-rounded img-circle img-thumbnail"),b&&c.addClass(b)},this.resize=function(a,b,c){c.css({width:100*b+"%",height:""}),i(a)},this.resizeTo=function(a,b,c){var d;if(c){var e=a.y/a.x,f=b.data("ratio");d={width:f>e?a.x:a.y/f,height:f>e?a.x*f:a.y}}else d={width:a.x,height:a.y};b.css(d)},this.removeMedia=function(a,b,c){c.detach(),i(a)}},t=function(a){var b=[],c=-1,d=a[0],e=function(){var b=o.create(),c={s:{path:[0],offset:0},e:{path:[0],offset:0}};return{contents:a.html(),bookmark:b?b.bookmark(d):c}},f=function(b){null!==b.contents&&a.html(b.contents),null!==b.bookmark&&o.createFromBookmark(d,b.bookmark).select()};this.undo=function(){c>0&&(c--,f(b[c]))},this.redo=function(){b.length-1>c&&(c++,f(b[c]))},this.recordUndo=function(){c++,b.length>c&&(b=b.slice(0,c)),b.push(e())},this.recordUndo()},u=function(){this.update=function(b,c){var d=function(b,c){b.find(".dropdown-menu li a").each(function(){var b=a(this).data("value")+""==c+"";this.className=b?"checked":""})},e=function(a,c){var d=b.find(a);d.toggleClass("active",c())},f=b.find(".note-fontname");
if(f.length){var h=c["font-family"];h&&(h=g.head(h.split(",")),h=h.replace(/\'/g,""),f.find(".note-current-fontname").text(h),d(f,h))}var i=b.find(".note-fontsize");i.find(".note-current-fontsize").text(c["font-size"]),d(i,parseFloat(c["font-size"]));var j=b.find(".note-height");d(j,parseFloat(c["line-height"])),e('button[data-event="bold"]',function(){return"bold"===c["font-bold"]}),e('button[data-event="italic"]',function(){return"italic"===c["font-italic"]}),e('button[data-event="underline"]',function(){return"underline"===c["font-underline"]}),e('button[data-event="strikethrough"]',function(){return"strikethrough"===c["font-strikethrough"]}),e('button[data-event="superscript"]',function(){return"superscript"===c["font-superscript"]}),e('button[data-event="subscript"]',function(){return"subscript"===c["font-subscript"]}),e('button[data-event="justifyLeft"]',function(){return"left"===c["text-align"]||"start"===c["text-align"]}),e('button[data-event="justifyCenter"]',function(){return"center"===c["text-align"]}),e('button[data-event="justifyRight"]',function(){return"right"===c["text-align"]}),e('button[data-event="justifyFull"]',function(){return"justify"===c["text-align"]}),e('button[data-event="insertUnorderedList"]',function(){return"unordered"===c["list-style"]}),e('button[data-event="insertOrderedList"]',function(){return"ordered"===c["list-style"]})},this.updateRecentColor=function(b,c,d){var e=a(b).closest(".note-color"),f=e.find(".note-recent-color"),g=JSON.parse(f.attr("data-value"));g[c]=d,f.attr("data-value",JSON.stringify(g));var h="backColor"===c?"background-color":"color";f.find("i").css(h,d)}},v=function(){var a=new u;this.update=function(b,c){a.update(b,c)},this.updateRecentColor=function(b,c,d){a.updateRecentColor(b,c,d)},this.activate=function(a){a.find("button").not('button[data-event="codeview"]').removeClass("disabled")},this.deactivate=function(a){a.find("button").not('button[data-event="codeview"]').addClass("disabled")},this.updateFullscreen=function(a,b){var c=a.find('button[data-event="fullscreen"]');c.toggleClass("active",b)},this.updateCodeview=function(a,b){var c=a.find('button[data-event="codeview"]');c.toggleClass("active",b)}},w=function(){var b=new u,c=function(b,c){var d=a(b),e=c?d.offset():d.position(),f=d.outerHeight(!0);return{left:e.left,top:e.top+f}},d=function(a,b){a.css({display:"block",left:b.left,top:b.top})},e=20;this.update=function(h,i,j){b.update(h,i);var k=h.find(".note-link-popover");if(i.anchor){var l=k.find("a"),m=a(i.anchor).attr("href");l.attr("href",m).html(m),d(k,c(i.anchor,j))}else k.hide();var n=h.find(".note-image-popover");i.image?d(n,c(i.image,j)):n.hide();var o=h.find(".note-air-popover");if(j&&!i.range.isCollapsed()){var p=f.rect2bnd(g.last(i.range.getClientRects()));d(o,{left:Math.max(p.left+p.width/2-e,0),top:p.top+p.height})}else o.hide()},this.updateRecentColor=function(a,b,c){a.updateRecentColor(a,b,c)},this.hide=function(a){a.children().hide()}},x=function(){this.update=function(b,c,d){var e=b.find(".note-control-selection");if(c.image){var f=a(c.image),g=d?f.offset():f.position(),h={w:f.outerWidth(!0),h:f.outerHeight(!0)};e.css({display:"block",left:g.left,top:g.top,width:h.w,height:h.h}).data("target",c.image);var i=h.w+"x"+h.h;e.find(".note-control-selection-info").text(i)}else e.hide()},this.hide=function(a){a.children().hide()}},y=function(){var b=function(a,b){a.toggleClass("disabled",!b),a.attr("disabled",!b)};this.showImageDialog=function(c,d){return a.Deferred(function(a){var c=d.find(".note-image-dialog"),e=d.find(".note-image-input"),f=d.find(".note-image-url"),g=d.find(".note-image-btn");c.one("shown.bs.modal",function(){e.replaceWith(e.clone().on("change",function(){a.resolve(this.files),c.modal("hide")}).val("")),g.click(function(b){b.preventDefault(),a.resolve(f.val()),c.modal("hide")}),f.on("keyup paste",function(a){var c;c="paste"===a.type?a.originalEvent.clipboardData.getData("text"):f.val(),b(g,c)}).val("").trigger("focus")}).one("hidden.bs.modal",function(){e.off("change"),f.off("keyup paste"),g.off("click"),"pending"===a.state()&&a.reject()}).modal("show")})},this.showVideoDialog=function(c,d,e){return a.Deferred(function(a){var c=d.find(".note-video-dialog"),f=c.find(".note-video-url"),g=c.find(".note-video-btn");c.one("shown.bs.modal",function(){f.val(e.text).keyup(function(){b(g,f.val())}).trigger("keyup").trigger("focus"),g.click(function(b){b.preventDefault(),a.resolve(f.val()),c.modal("hide")})}).one("hidden.bs.modal",function(){f.off("keyup"),g.off("click"),"pending"===a.state()&&a.reject()}).modal("show")})},this.showLinkDialog=function(c,d,e){return a.Deferred(function(a){var c=d.find(".note-link-dialog"),f=c.find(".note-link-text"),g=c.find(".note-link-url"),h=c.find(".note-link-btn"),i=c.find("input[type=checkbox]");c.one("shown.bs.modal",function(){f.val(e.text),f.keyup(function(){e.text=f.val()}),e.url||(e.url=e.text,b(h,e.text)),g.keyup(function(){b(h,g.val()),e.text||f.val(g.val())}).val(e.url).trigger("focus").trigger("select"),i.prop("checked",e.newWindow),h.one("click",function(b){b.preventDefault(),a.resolve({range:e.range,url:g.val(),text:f.val(),newWindow:i.is(":checked")}),c.modal("hide")})}).one("hidden.bs.modal",function(){f.off("keyup"),g.off("keyup"),h.off("click"),"pending"===a.state()&&a.reject()}).modal("show")}).promise()},this.showHelpDialog=function(b,c){return a.Deferred(function(a){var b=c.find(".note-help-dialog");b.one("hidden.bs.modal",function(){a.resolve()}).modal("show")}).promise()}};e.hasCodeMirror&&(e.isSupportAmd?require(["CodeMirror"],function(a){b=a}):b=window.CodeMirror);var z=function(){var c=a(window),d=a(document),f=a("html, body"),h=new s,i=new v,k=new w,n=new x,o=new y,p=function(b){var c=a(b).closest(".note-editor, .note-air-editor, .note-air-layout");if(!c.length)return null;var d;return d=c.is(".note-editor, .note-air-editor")?c:a("#note-editor-"+g.last(c.attr("id").split("-"))),j.buildLayoutInfo(d)},q=function(b,c){var d=b.data("callbacks");d.onImageUpload?d.onImageUpload(c,h,b):a.each(c,function(a,c){var e=c.name;l.readFileAsDataURL(c).then(function(a){h.insertImage(b,a,e)}).fail(function(){d.onImageUploadError&&d.onImageUploadError()})})},r={showLinkDialog:function(a){var b=a.editor(),c=a.dialog(),d=a.editable(),e=h.getLinkInfo(d),f=b.data("options");h.saveRange(d),o.showLinkDialog(d,c,e).then(function(b){h.restoreRange(d),h.createLink(d,b,f),k.hide(a.popover())}).fail(function(){h.restoreRange(d)})},showImageDialog:function(a){var b=a.dialog(),c=a.editable();h.saveRange(c),o.showImageDialog(c,b).then(function(a){h.restoreRange(c),"string"==typeof a?h.insertImage(c,a):q(c,a)}).fail(function(){h.restoreRange(c)})},showVideoDialog:function(a){var b=a.dialog(),c=a.editable(),d=h.getVideoInfo(c);h.saveRange(c),o.showVideoDialog(c,b,d).then(function(a){h.restoreRange(c),h.insertVideo(c,a)}).fail(function(){h.restoreRange(c)})},showHelpDialog:function(a){var b=a.dialog(),c=a.editable();h.saveRange(c,!0),o.showHelpDialog(c,b).then(function(){h.restoreRange(c)})},fullscreen:function(a){var b=a.editor(),d=a.toolbar(),e=a.editable(),g=a.codable(),h=b.data("options"),j=function(a){b.css("width",a.w),e.css("height",a.h),g.css("height",a.h),g.data("cmeditor")&&g.data("cmeditor").setsize(null,a.h)};b.toggleClass("fullscreen");var k=b.hasClass("fullscreen");k?(e.data("orgheight",e.css("height")),c.on("resize",function(){j({w:c.width(),h:c.height()-d.outerHeight()})}).trigger("resize"),f.css("overflow","hidden")):(c.off("resize"),j({w:h.width||"",h:e.data("orgheight")}),f.css("overflow","visible")),i.updateFullscreen(d,k)},codeview:function(a){var c,d,f=a.editor(),g=a.toolbar(),h=a.editable(),l=a.codable(),m=a.popover(),n=f.data("options");f.toggleClass("codeview");var o=f.hasClass("codeview");o?(l.val(j.html(h,!0)),l.height(h.height()),i.deactivate(g),k.hide(m),l.focus(),e.hasCodeMirror&&(c=b.fromTextArea(l[0],n.codemirror),n.codemirror.tern&&(d=new b.TernServer(n.codemirror.tern),c.ternServer=d,c.on("cursorActivity",function(a){d.updateArgHints(a)})),c.setSize(null,h.outerHeight()),l.data("cmEditor",c))):(e.hasCodeMirror&&(c=l.data("cmEditor"),l.val(c.getValue()),c.toTextArea()),h.html(j.value(l)||j.emptyPara),h.height(n.height?l.height():"auto"),i.activate(g),h.focus()),i.updateCodeview(a.toolbar(),o)}},u=function(a){j.isImg(a.target)&&a.preventDefault()},z=function(a){setTimeout(function(){var b=p(a.currentTarget||a.target),c=h.currentStyle(a.target);if(c){var d=b.editor().data("options").airMode;d||i.update(b.toolbar(),c),k.update(b.popover(),c,d),n.update(b.handle(),c,d)}},0)},A=function(a){var b=p(a.currentTarget||a.target);k.hide(b.popover()),n.hide(b.handle())},B=function(a){var b=a.originalEvent.clipboardData;if(b&&b.items&&b.items.length){var c=p(a.currentTarget||a.target),d=c.editable(),e=g.head(b.items),f="file"===e.kind&&-1!==e.type.indexOf("image/");f&&q(d,[e.getAsFile()]),h.afterCommand(d)}},C=function(b){if(j.isControlSizing(b.target)){b.preventDefault(),b.stopPropagation();var c=p(b.target),e=c.handle(),f=c.popover(),g=c.editable(),i=c.editor(),l=e.find(".note-control-selection").data("target"),m=a(l),o=m.offset(),q=d.scrollTop(),r=i.data("options").airMode;d.on("mousemove",function(a){h.resizeTo({x:a.clientX-o.left,y:a.clientY-(o.top-q)},m,!a.shiftKey),n.update(e,{image:l},r),k.update(f,{image:l},r)}).one("mouseup",function(){d.off("mousemove")}),m.data("ratio")||m.data("ratio",m.height()/m.width()),h.afterCommand(g)}},D=function(b){var c=a(b.target).closest("[data-event]");c.length&&b.preventDefault()},E=function(b){var c=a(b.target).closest("[data-event]");if(c.length){var d=c.attr("data-event"),e=c.attr("data-value"),f=c.attr("data-hide"),j=p(b.target);b.preventDefault();var l;if(-1!==a.inArray(d,["resize","floatMe","removeMedia","imageShape"])){var m=j.handle().find(".note-control-selection");l=a(m.data("target"))}if(f&&c.parents(".popover").hide(),h[d]){var n=j.editable();n.trigger("focus"),h[d](n,e,l)}else r[d]&&r[d].call(this,j);if(-1!==a.inArray(d,["backColor","foreColor"])){var o=j.editor().data("options",o),q=o.airMode?k:i;q.updateRecentColor(g.head(c),d,e)}z(b)}},F=24,G=function(a){a.preventDefault(),a.stopPropagation();var b=p(a.target).editable(),c=b.offset().top-d.scrollTop(),e=p(a.currentTarget||a.target),f=e.editor().data("options");d.on("mousemove",function(a){var d=a.clientY-(c+F);d=f.minHeight>0?Math.max(d,f.minHeight):d,d=f.maxHeight>0?Math.min(d,f.maxHeight):d,b.height(d)}).one("mouseup",function(){d.off("mousemove")})},H=18,I=function(b,c){var d,e=a(b.target.parentNode),f=e.next(),g=e.find(".note-dimension-picker-mousecatcher"),h=e.find(".note-dimension-picker-highlighted"),i=e.find(".note-dimension-picker-unhighlighted");if(void 0===b.offsetX){var j=a(b.target).offset();d={x:b.pageX-j.left,y:b.pageY-j.top}}else d={x:b.offsetX,y:b.offsetY};var k={c:Math.ceil(d.x/H)||1,r:Math.ceil(d.y/H)||1};h.css({width:k.c+"em",height:k.r+"em"}),g.attr("data-value",k.c+"x"+k.r),3<k.c&&k.c<c.insertTableMaxSize.col&&i.css({width:k.c+1+"em"}),3<k.r&&k.r<c.insertTableMaxSize.row&&i.css({height:k.r+1+"em"}),f.html(k.c+" x "+k.r)},J=function(a,b){b?d.on("drop",function(a){a.preventDefault()}):K(a)},K=function(b){var c=a(),e=b.dropzone,f=b.dropzone.find(".note-dropzone-message");d.on("dragenter",function(a){var d=b.editor.hasClass("codeview");d||c.length||(b.editor.addClass("dragover"),e.width(b.editor.width()),e.height(b.editor.height()),f.text("Drag Image Here")),c=c.add(a.target)}).on("dragleave",function(a){c=c.not(a.target),c.length||b.editor.removeClass("dragover")}).on("drop",function(){c=a(),b.editor.removeClass("dragover")}),e.on("dragenter",function(){e.addClass("hover"),f.text("Drop Image")}).on("dragleave",function(){e.removeClass("hover"),f.text("Drag Image Here")}),e.on("drop",function(a){a.preventDefault();var b=a.originalEvent.dataTransfer;if(b&&b.files){var c=p(a.currentTarget||a.target);c.editable().focus(),q(c.editable(),b.files)}}).on("dragover",!1)};this.bindKeyMap=function(a,b){var c=a.editor,d=a.editable;a=p(d),d.on("keydown",function(e){var f=[];e.metaKey&&f.push("CMD"),e.ctrlKey&&!e.altKey&&f.push("CTRL"),e.shiftKey&&f.push("SHIFT");var g=m.nameFromCode[e.keyCode];g&&f.push(g);var i=b[f.join("+")];i?(e.preventDefault(),h[i]?h[i](d,c.data("options")):r[i]&&r[i].call(this,a)):m.isEdit(e.keyCode)&&h.afterCommand(d)})},this.attach=function(a,b){this.bindKeyMap(a,b.keyMap[e.isMac?"mac":"pc"]),a.editable.on("mousedown",u),a.editable.on("keyup mouseup",z),a.editable.on("scroll",A),a.editable.on("paste",B),a.handle.on("mousedown",C),a.popover.on("click",E),a.popover.on("mousedown",D),b.airMode||(J(a,b.disableDragAndDrop),a.toolbar.on("click",E),a.toolbar.on("mousedown",D),b.disableResizeEditor||a.statusbar.on("mousedown",G));var c=b.airMode?a.popover:a.toolbar,d=c.find(".note-dimension-picker-mousecatcher");d.css({width:b.insertTableMaxSize.col+"em",height:b.insertTableMaxSize.row+"em"}).on("mousemove",function(a){I(a,b)}),a.editor.data("options",b),b.styleWithSpan&&!e.isMSIE&&setTimeout(function(){document.execCommand("styleWithCSS",0,!0)},0);var f=new t(a.editable);if(a.editable.data("NoteHistory",f),b.onenter&&a.editable.keypress(function(a){a.keyCode===m.ENTER&&b.onenter(a)}),b.onfocus&&a.editable.focus(b.onfocus),b.onblur&&a.editable.blur(b.onblur),b.onkeyup&&a.editable.keyup(b.onkeyup),b.onkeydown&&a.editable.keydown(b.onkeydown),b.onpaste&&a.editable.on("paste",b.onpaste),b.onToolbarClick&&a.toolbar.click(b.onToolbarClick),b.onChange){var g=function(){h.triggerOnChange(a.editable)};if(e.isMSIE){var i="DOMCharacterDataModified DOMSubtreeModified DOMNodeInserted";a.editable.on(i,g)}else a.editable.on("input",g)}a.editable.data("callbacks",{onChange:b.onChange,onAutoSave:b.onAutoSave,onImageUpload:b.onImageUpload,onImageUploadError:b.onImageUploadError,onFileUpload:b.onFileUpload,onFileUploadError:b.onFileUpload})},this.dettach=function(a,b){a.editable.off(),a.popover.off(),a.handle.off(),a.dialog.off(),b.airMode||(a.dropzone.off(),a.toolbar.off(),a.statusbar.off())}},A=function(){var b=function(a,b){var c=b.event,d=b.value,e=b.title,f=b.className,g=b.dropdown,h=b.hide;return'<button type="button" class="btn btn-default btn-sm btn-small'+(f?" "+f:"")+(g?" dropdown-toggle":"")+'"'+(g?' data-toggle="dropdown"':"")+(e?' title="'+e+'"':"")+(c?' data-event="'+c+'"':"")+(d?" data-value='"+d+"'":"")+(h?" data-hide='"+h+"'":"")+' tabindex="-1">'+a+(g?' <span class="caret"></span>':"")+"</button>"+(g||"")},c=function(a,c){var d='<i class="'+a+'"></i>';return b(d,c)},d=function(a,b){return'<div class="'+a+' popover bottom in" style="display: none;"><div class="arrow"></div><div class="popover-content">'+b+"</div></div>"},g=function(a,b,c,d){return'<div class="'+a+' modal" aria-hidden="false"><div class="modal-dialog"><div class="modal-content">'+(b?'<div class="modal-header"><button type="button" class="close" aria-hidden="true" tabindex="-1">&times;</button><h4 class="modal-title">'+b+"</h4></div>":"")+'<form class="note-modal-form"><div class="modal-body"><div class="row-fluid">'+c+"</div></div>"+(d?'<div class="modal-footer">'+d+"</div>":"")+"</form></div></div></div>"},h={picture:function(a){return c("fa fa-picture-o icon-picture",{event:"showImageDialog",title:a.image.image,hide:!0})},link:function(a){return c("fa fa-link icon-link",{event:"showLinkDialog",title:a.link.link,hide:!0})},video:function(a){return c("fa fa-youtube-play icon-play",{event:"showVideoDialog",title:a.video.video,hide:!0})},table:function(a){var b='<ul class="note-table dropdown-menu"><div class="note-dimension-picker"><div class="note-dimension-picker-mousecatcher" data-event="insertTable" data-value="1x1"></div><div class="note-dimension-picker-highlighted"></div><div class="note-dimension-picker-unhighlighted"></div></div><div class="note-dimension-display"> 1 x 1 </div></ul>';return c("fa fa-table icon-table",{title:a.table.table,dropdown:b})},style:function(a,b){var d=b.styleTags.reduce(function(b,c){var d=a.style["p"===c?"normal":c];return b+'<li><a data-event="formatBlock" href="#" data-value="'+c+'">'+("p"===c||"pre"===c?d:"<"+c+">"+d+"</"+c+">")+"</a></li>"},"");return c("fa fa-magic icon-magic",{title:a.style.style,dropdown:'<ul class="dropdown-menu">'+d+"</ul>"})},fontname:function(a,c){var d=c.fontNames.reduce(function(a,b){return e.isFontInstalled(b)?a+'<li><a data-event="fontName" href="#" data-value="'+b+'"><i class="fa fa-check icon-ok"></i> '+b+"</a></li>":a},""),f='<span class="note-current-fontname">'+c.defaultFontName+"</span>";return b(f,{title:a.font.name,dropdown:'<ul class="dropdown-menu">'+d+"</ul>"})},fontsize:function(a,c){var d=c.fontSizes.reduce(function(a,b){return a+'<li><a data-event="fontSize" href="#" data-value="'+b+'"><i class="fa fa-check icon-ok"></i> '+b+"</a></li>"},""),e='<span class="note-current-fontsize">11</span>';return b(e,{title:a.font.size,dropdown:'<ul class="dropdown-menu">'+d+"</ul>"})},color:function(a){var c='<i class="fa fa-font icon-font" style="color:black;background-color:yellow;"></i>',d=b(c,{className:"note-recent-color",title:a.color.recent,event:"color",value:'{"backColor":"yellow"}'}),e='<ul class="dropdown-menu"><li><div class="btn-group"><div class="note-palette-title">'+a.color.background+'</div><div class="note-color-reset" data-event="backColor" data-value="inherit" title="'+a.color.transparent+'">'+a.color.setTransparent+'</div><div class="note-color-palette" data-target-event="backColor"></div></div><div class="btn-group"><div class="note-palette-title">'+a.color.foreground+'</div><div class="note-color-reset" data-event="foreColor" data-value="inherit" title="'+a.color.reset+'">'+a.color.resetToDefault+'</div><div class="note-color-palette" data-target-event="foreColor"></div></div></li></ul>',f=b("",{title:a.color.more,dropdown:e});return d+f},bold:function(a){return c("fa fa-bold icon-bold",{event:"bold",title:a.font.bold})},italic:function(a){return c("fa fa-italic icon-italic",{event:"italic",title:a.font.italic})},underline:function(a){return c("fa fa-underline icon-underline",{event:"underline",title:a.font.underline})},strikethrough:function(a){return c("fa fa-strikethrough icon-strikethrough",{event:"strikethrough",title:a.font.strikethrough})},superscript:function(a){return c("fa fa-superscript icon-superscript",{event:"superscript",title:a.font.superscript})},subscript:function(a){return c("fa fa-subscript icon-subscript",{event:"subscript",title:a.font.subscript})},clear:function(a){return c("fa fa-eraser icon-eraser",{event:"removeFormat",title:a.font.clear})},ul:function(a){return c("fa fa-list-ul icon-list-ul",{event:"insertUnorderedList",title:a.lists.unordered})},ol:function(a){return c("fa fa-list-ol icon-list-ol",{event:"insertOrderedList",title:a.lists.ordered})},paragraph:function(a){var b=c("fa fa-align-left icon-align-left",{title:a.paragraph.left,event:"justifyLeft"}),d=c("fa fa-align-center icon-align-center",{title:a.paragraph.center,event:"justifyCenter"}),e=c("fa fa-align-right icon-align-right",{title:a.paragraph.right,event:"justifyRight"}),f=c("fa fa-align-justify icon-align-justify",{title:a.paragraph.justify,event:"justifyFull"}),g=c("fa fa-outdent icon-indent-left",{title:a.paragraph.outdent,event:"outdent"}),h=c("fa fa-indent icon-indent-right",{title:a.paragraph.indent,event:"indent"}),i='<div class="dropdown-menu"><div class="note-align btn-group">'+b+d+e+f+'</div><div class="note-list btn-group">'+h+g+"</div></div>";return c("fa fa-align-left icon-align-left",{title:a.paragraph.paragraph,dropdown:i})},height:function(a,b){var d=b.lineHeights.reduce(function(a,b){return a+'<li><a data-event="lineHeight" href="#" data-value="'+parseFloat(b)+'"><i class="fa fa-check icon-ok"></i> '+b+"</a></li>"},"");return c("fa fa-text-height icon-text-height",{title:a.font.height,dropdown:'<ul class="dropdown-menu">'+d+"</ul>"})},help:function(a){return c("fa fa-question icon-question",{event:"showHelpDialog",title:a.options.help,hide:!0})},fullscreen:function(a){return c("fa fa-arrows-alt icon-fullscreen",{event:"fullscreen",title:a.options.fullscreen})},codeview:function(a){return c("fa fa-code icon-code",{event:"codeview",title:a.options.codeview})},undo:function(a){return c("fa fa-undo icon-undo",{event:"undo",title:a.history.undo})},redo:function(a){return c("fa fa-repeat icon-repeat",{event:"redo",title:a.history.redo})},hr:function(a){return c("fa fa-minus icon-hr",{event:"insertHorizontalRule",title:a.hr.insert})}},i=function(a,e){var f=function(){var b=c("fa fa-edit icon-edit",{title:a.link.edit,event:"showLinkDialog",hide:!0}),e=c("fa fa-unlink icon-unlink",{title:a.link.unlink,event:"unlink"}),f='<a href="http://www.google.com" target="_blank">www.google.com</a>&nbsp;&nbsp;<div class="note-insert btn-group">'+b+e+"</div>";return d("note-link-popover",f)},g=function(){var e=b('<span class="note-fontsize-10">100%</span>',{title:a.image.resizeFull,event:"resize",value:"1"}),f=b('<span class="note-fontsize-10">50%</span>',{title:a.image.resizeHalf,event:"resize",value:"0.5"}),g=b('<span class="note-fontsize-10">25%</span>',{title:a.image.resizeQuarter,event:"resize",value:"0.25"}),h=c("fa fa-align-left icon-align-left",{title:a.image.floatLeft,event:"floatMe",value:"left"}),i=c("fa fa-align-right icon-align-right",{title:a.image.floatRight,event:"floatMe",value:"right"}),j=c("fa fa-align-justify icon-align-justify",{title:a.image.floatNone,event:"floatMe",value:"none"}),k=c("fa fa-square icon-unchecked",{title:a.image.shapeRounded,event:"imageShape",value:"img-rounded"}),l=c("fa fa-circle-o icon-circle-blank",{title:a.image.shapeCircle,event:"imageShape",value:"img-circle"}),m=c("fa fa-picture-o icon-picture",{title:a.image.shapeThumbnail,event:"imageShape",value:"img-thumbnail"}),n=c("fa fa-times icon-times",{title:a.image.shapeNone,event:"imageShape",value:""}),o=c("fa fa-trash-o icon-trash",{title:a.image.remove,event:"removeMedia",value:"none"}),p='<div class="btn-group">'+e+f+g+'</div><div class="btn-group">'+h+i+j+'</div><div class="btn-group">'+k+l+m+n+'</div><div class="btn-group">'+o+"</div>";return d("note-image-popover",p)},i=function(){for(var b="",c=0,f=e.airPopover.length;f>c;c++){var g=e.airPopover[c];b+='<div class="note-'+g[0]+' btn-group">';for(var i=0,j=g[1].length;j>i;i++)b+=h[g[1][i]](a,e);b+="</div>"}return d("note-air-popover",b)};return'<div class="note-popover">'+f()+g()+(e.airMode?i():"")+"</div>"},k=function(){return'<div class="note-handle"><div class="note-control-selection"><div class="note-control-selection-bg"></div><div class="note-control-holder note-control-nw"></div><div class="note-control-holder note-control-ne"></div><div class="note-control-holder note-control-sw"></div><div class="note-control-sizing note-control-se"></div><div class="note-control-selection-info"></div></div></div>'},l=function(a,b){return'<table class="note-shortcut"><thead><tr><th></th><th>'+a+"</th></tr></thead><tbody>"+b+"</tbody></table>"},m=function(a){var b="<tr><td>⌘ + B</td><td>"+a.font.bold+"</td></tr><tr><td>⌘ + I</td><td>"+a.font.italic+"</td></tr><tr><td>⌘ + U</td><td>"+a.font.underline+"</td></tr><tr><td>⌘ + ⇧ + S</td><td>"+a.font.strikethrough+"</td></tr><tr><td>⌘ + \\</td><td>"+a.font.clear+"</td></tr>";return l(a.shortcut.textFormatting,b)},n=function(a){var b="<tr><td>⌘ + Z</td><td>"+a.history.undo+"</td></tr><tr><td>⌘ + ⇧ + Z</td><td>"+a.history.redo+"</td></tr><tr><td>⌘ + ]</td><td>"+a.paragraph.indent+"</td></tr><tr><td>⌘ + [</td><td>"+a.paragraph.outdent+"</td></tr><tr><td>⌘ + ENTER</td><td>"+a.hr.insert+"</td></tr>";return l(a.shortcut.action,b)},o=function(a){var b="<tr><td>⌘ + ⇧ + L</td><td>"+a.paragraph.left+"</td></tr><tr><td>⌘ + ⇧ + E</td><td>"+a.paragraph.center+"</td></tr><tr><td>⌘ + ⇧ + R</td><td>"+a.paragraph.right+"</td></tr><tr><td>⌘ + ⇧ + J</td><td>"+a.paragraph.justify+"</td></tr><tr><td>⌘ + ⇧ + NUM7</td><td>"+a.lists.ordered+"</td></tr><tr><td>⌘ + ⇧ + NUM8</td><td>"+a.lists.unordered+"</td></tr>";return l(a.shortcut.paragraphFormatting,b)},p=function(a){var b="<tr><td>⌘ + NUM0</td><td>"+a.style.normal+"</td></tr><tr><td>⌘ + NUM1</td><td>"+a.style.h1+"</td></tr><tr><td>⌘ + NUM2</td><td>"+a.style.h2+"</td></tr><tr><td>⌘ + NUM3</td><td>"+a.style.h3+"</td></tr><tr><td>⌘ + NUM4</td><td>"+a.style.h4+"</td></tr><tr><td>⌘ + NUM5</td><td>"+a.style.h5+"</td></tr><tr><td>⌘ + NUM6</td><td>"+a.style.h6+"</td></tr>";return l(a.shortcut.documentStyle,b)},q=function(a,b){var c=b.extraKeys,d="";for(var e in c)c.hasOwnProperty(e)&&(d+="<tr><td>"+e+"</td><td>"+c[e]+"</td></tr>");return l(a.shortcut.extraKeys,d)},r=function(a,b){var c='<table class="note-shortcut-layout"><tbody><tr><td>'+n(a,b)+"</td><td>"+m(a,b)+"</td></tr><tr><td>"+p(a,b)+"</td><td>"+o(a,b)+"</td></tr>";return b.extraKeys&&(c+='<tr><td colspan="2">'+q(a,b)+"</td></tr>"),c+="</tbody></table>"},s=function(a){return a.replace(/⌘/g,"Ctrl").replace(/⇧/g,"Shift")},t=function(a,b){var c=function(){var b='<div class="note-group-select-from-files"><h5>'+a.image.selectFromFiles+'</h5><input class="note-image-input" type="file" name="files" accept="image/*" /></div><h5>'+a.image.url+'</h5><input class="note-image-url form-control span12" type="text" />',c='<button href="#" class="btn btn-primary note-image-btn disabled" disabled>'+a.image.insert+"</button>";return g("note-image-dialog",a.image.insert,b,c)},d=function(){var c='<div class="form-group"><label>'+a.link.textToDisplay+'</label><input class="note-link-text form-control span12" type="text" /></div><div class="form-group"><label>'+a.link.url+'</label><input class="note-link-url form-control span12" type="text" /></div>'+(b.disableLinkTarget?"":'<div class="checkbox"><label><input type="checkbox" checked> '+a.link.openInNewWindow+"</label></div>"),d='<button href="#" class="btn btn-primary note-link-btn disabled" disabled>'+a.link.insert+"</button>";return g("note-link-dialog",a.link.insert,c,d)},f=function(){var b='<div class="form-group"><label>'+a.video.url+'</label>&nbsp;<small class="text-muted">'+a.video.providers+'</small><input class="note-video-url form-control span12" type="text" /></div>',c='<button href="#" class="btn btn-primary note-video-btn disabled" disabled>'+a.video.insert+"</button>";return g("note-video-dialog",a.video.insert,b,c)},h=function(){var c='<a class="modal-close pull-right" aria-hidden="true" tabindex="-1">'+a.shortcut.close+'</a><div class="title">'+a.shortcut.shortcuts+"</div>"+(e.isMac?r(a,b):s(r(a,b)))+'<p class="text-center"><a href="//hackerwins.github.io/summernote/" target="_blank">Summernote 0.5.10</a> · <a href="//github.com/HackerWins/summernote" target="_blank">Project</a> · <a href="//github.com/HackerWins/summernote/issues" target="_blank">Issues</a></p>';return g("note-help-dialog","",c,"")};return'<div class="note-dialog">'+c()+d()+f()+h()+"</div>"},u=function(){return'<div class="note-resizebar"><div class="note-icon-bar"></div><div class="note-icon-bar"></div><div class="note-icon-bar"></div></div>'},v=function(a){return e.isMac&&(a=a.replace("CMD","⌘").replace("SHIFT","⇧")),a.replace("BACKSLASH","\\").replace("SLASH","/").replace("LEFTBRACKET","[").replace("RIGHTBRACKET","]")},w=function(b,c,d){var e=f.invertObject(c),g=b.find("button");g.each(function(b,c){var d=a(c),f=e[d.data("event")];f&&d.attr("title",function(a,b){return b+" ("+v(f)+")"})}).tooltip({container:"body",trigger:"hover",placement:d||"top"}).on("click",function(){a(this).tooltip("hide")})},x=function(b,c){var d=c.colors;b.find(".note-color-palette").each(function(){for(var b=a(this),c=b.attr("data-target-event"),e=[],f=0,g=d.length;g>f;f++){for(var h=d[f],i=[],j=0,k=h.length;k>j;j++){var l=h[j];i.push(['<button type="button" class="note-color-btn" style="background-color:',l,';" data-event="',c,'" data-value="',l,'" title="',l,'" data-toggle="button" tabindex="-1"></button>'].join(""))}e.push('<div class="note-color-row">'+i.join("")+"</div>")}b.html(e.join(""))})};this.createLayoutByAirMode=function(b,c){var d=c.keyMap[e.isMac?"mac":"pc"],g=a.extend(a.summernote.lang["en-US"],a.summernote.lang[c.lang]),h=f.uniqueId();b.addClass("note-air-editor note-editable"),b.attr({id:"note-editor-"+h,contentEditable:!0});var j=document.body,l=a(i(g,c));l.addClass("note-air-layout"),l.attr("id","note-popover-"+h),l.appendTo(j),w(l,d),x(l,c);var m=a(k());m.addClass("note-air-layout"),m.attr("id","note-handle-"+h),m.appendTo(j);var n=a(t(g,c));n.addClass("note-air-layout"),n.attr("id","note-dialog-"+h),n.find("button.close, a.modal-close").click(function(){a(this).closest(".modal").modal("hide")}),n.appendTo(j)},this.createLayoutByFrame=function(b,c){var d=a('<div class="note-editor"></div>');c.width&&d.width(c.width),c.height>0&&a('<div class="note-statusbar">'+(c.disableResizeEditor?"":u())+"</div>").prependTo(d);var f=!b.is(":disabled"),g=a('<div class="note-editable" contentEditable="'+f+'"></div>').prependTo(d);c.height&&g.height(c.height),c.direction&&g.attr("dir",c.direction),g.html(j.html(b)||j.emptyPara),a('<textarea class="note-codable"></textarea>').prependTo(d);for(var l=a.extend(a.summernote.lang["en-US"],a.summernote.lang[c.lang]),m="",n=0,o=c.toolbar.length;o>n;n++){var p=c.toolbar[n][0],q=c.toolbar[n][1];m+='<div class="note-'+p+' btn-group">';for(var r=0,s=q.length;s>r;r++)a.isFunction(h[q[r]])&&(m+=h[q[r]](l,c));m+="</div>"}m='<div class="note-toolbar btn-toolbar">'+m+"</div>";var v=a(m).prependTo(d),y=c.keyMap[e.isMac?"mac":"pc"];x(v,c),w(v,y,"bottom");var z=a(i(l,c)).prependTo(d);x(z,c),w(z,y),a(k()).prependTo(d);var A=a(t(l,c)).prependTo(d);A.find("button.close, a.modal-close").click(function(){a(this).closest(".modal").modal("hide")}),a('<div class="note-dropzone"><div class="note-dropzone-message"></div></div>').prependTo(d),d.insertAfter(b),b.hide()},this.noteEditorFromHolder=function(b){return b.hasClass("note-air-editor")?b:b.next().hasClass("note-editor")?b.next():a()},this.createLayout=function(a,b){this.noteEditorFromHolder(a).length||(b.airMode?this.createLayoutByAirMode(a,b):this.createLayoutByFrame(a,b))},this.layoutInfoFromHolder=function(a){var b=this.noteEditorFromHolder(a);if(b.length){var c=j.buildLayoutInfo(b);for(var d in c)c.hasOwnProperty(d)&&(c[d]=c[d].call());return c}},this.removeLayout=function(a,b,c){c.airMode?(a.removeClass("note-air-editor note-editable").removeAttr("id contentEditable"),b.popover.remove(),b.handle.remove(),b.dialog.remove()):(a.html(b.editable.html()),b.editor.remove(),a.show())}};a.summernote=a.summernote||{},a.extend(a.summernote,k);var B=new A,C=new z;a.fn.extend({summernote:function(b){if(b=a.extend({},a.summernote.options,b),this.each(function(c,d){var e=a(d);B.createLayout(e,b);var f=B.layoutInfoFromHolder(e);C.attach(f,b),j.isTextarea(e[0])&&e.closest("form").submit(function(){e.val(e.code())})}),this.first().length&&b.focus){var c=B.layoutInfoFromHolder(this.first());c.editable.focus()}return this.length&&b.oninit&&b.oninit(),this},code:function(b){if(void 0===b){var c=this.first();if(!c.length)return;var d=B.layoutInfoFromHolder(c);if(d&&d.editable){var f=d.editor.hasClass("codeview");return f&&e.hasCodeMirror&&d.codable.data("cmEditor").save(),f?d.codable.val():d.editable.html()}return j.isTextarea(c[0])?c.val():c.html()}return this.each(function(c,d){var e=B.layoutInfoFromHolder(a(d));e&&e.editable&&e.editable.html(b)}),this},destroy:function(){return this.each(function(b,c){var d=a(c),e=B.layoutInfoFromHolder(d);if(e&&e.editable){var f=e.editor.data("options");C.dettach(e,f),B.removeLayout(d,e,f)}}),this}})});

$(document).ready(function() {
  $('#summernote').summernote();
});




//== Class definition ============================================= Start Js cho Select 2.
var Select2 = function() {
    //== Private functions
    var demos = function() {
        // basic
        $('#m_select2_1, #m_select2_1_validate').select2({
            placeholder: "Select a state"
        });

        // nested
        $('#m_select2_2, #m_select2_2_validate').select2({
            placeholder: "Select a state"
        });

        // multi select
        $('#m_select2_3, #m_select2_3_validate').select2({
            placeholder: "Select a state",
        });

        // basic
        $('#m_select2_4').select2({
            placeholder: "Select a state",
            allowClear: true
        });

        // loading data from array
        var data = [{
            id: 0,
            text: 'Enhancement'
        }, {
            id: 1,
            text: 'Bug'
        }, {
            id: 2,
            text: 'Duplicate'
        }, {
            id: 3,
            text: 'Invalid'
        }, {
            id: 4,
            text: 'Wontfix'
        }];

        $('#m_select2_5').select2({
            placeholder: "Select a value",
            data: data
        });

        // loading remote data

        function formatRepo(repo) {
            if (repo.loading) return repo.text;
            var markup = "<div class='select2-result-repository clearfix'>" +
                "<div class='select2-result-repository__meta'>" +
                "<div class='select2-result-repository__title'>" + repo.full_name + "</div>";
            if (repo.description) {
                markup += "<div class='select2-result-repository__description'>" + repo.description + "</div>";
            }
            markup += "<div class='select2-result-repository__statistics'>" +
                "<div class='select2-result-repository__forks'><i class='fa fa-flash'></i> " + repo.forks_count + " Forks</div>" +
                "<div class='select2-result-repository__stargazers'><i class='fa fa-star'></i> " + repo.stargazers_count + " Stars</div>" +
                "<div class='select2-result-repository__watchers'><i class='fa fa-eye'></i> " + repo.watchers_count + " Watchers</div>" +
                "</div>" +
                "</div></div>";
            return markup;
        }

        function formatRepoSelection(repo) {
            return repo.full_name || repo.text;
        }

        $("#m_select2_6").select2({
            placeholder: "Search for git repositories",
            allowClear: true,
            ajax: {
                url: "https://api.github.com/search/repositories",
                dataType: 'json',
                delay: 250,
                data: function(params) {
                    return {
                        q: params.term, // search term
                        page: params.page
                    };
                },
                processResults: function(data, params) {
                    // parse the results into the format expected by Select2
                    // since we are using custom formatting functions we do not need to
                    // alter the remote JSON data, except to indicate that infinite
                    // scrolling can be used
                    params.page = params.page || 1;

                    return {
                        results: data.items,
                        pagination: {
                            more: (params.page * 30) < data.total_count
                        }
                    };
                },
                cache: true
            },
            escapeMarkup: function(markup) {
                return markup;
            }, // let our custom formatter work
            minimumInputLength: 1,
            templateResult: formatRepo, // omitted for brevity, see the source of this page
            templateSelection: formatRepoSelection // omitted for brevity, see the source of this page
        });

        // custom styles

        // tagging support
        $('#m_select2_12_1, #m_select2_12_2, #m_select2_12_3, #m_select2_12_4').select2({
            placeholder: "Select an option",
        });

        // disabled mode
        $('#m_select2_7').select2({
            placeholder: "Select an option"
        });

        // disabled results
        $('#m_select2_8').select2({
            placeholder: "Select an option"
        });

        // limiting the number of selections
        $('#m_select2_9').select2({
            placeholder: "Select an option",
            maximumSelectionLength: 2
        });

        // hiding the search box
        $('#m_select2_10').select2({
            placeholder: "Select an option",
            minimumResultsForSearch: Infinity
        });

        // tagging support
        $('#m_select2_11').select2({
            placeholder: "Add a tag",
            tags: true
        });

        // disabled results
        $('.m-select2-general').select2({
            placeholder: "Select an option"
        });
    }

    var modalDemos = function() {
        $('#m_select2_modal').on('shown.bs.modal', function () {
            // basic
            $('#m_select2_1_modal').select2({
                placeholder: "Select a state"
            });

            // nested
            $('#m_select2_2_modal').select2({
                placeholder: "Select a state"
            });

            // multi select
            $('#m_select2_3_modal').select2({
                placeholder: "Select a state",
            });

            // basic
            $('#m_select2_4_modal').select2({
                placeholder: "Select a state",
                allowClear: true
            }); 
        });
    }

    //== Public functions
    return {
        init: function() {
            demos();
            modalDemos();
        }
    };
}();

//== Initialization
jQuery(document).ready(function() {
    Select2.init();
});
//== Class definition ============================================= End Js cho Select 2.



//== Class definition ============================================= Start JS cho table Danh sách người dùng.

var DatatableDataLocalDemo = function () {
	//== Private functions

	// demo initializer
	var demo = function () {

		var dataJSONArray = JSON.parse('[{"RecordID":1,"OrderID":"54473-251","ShipCountry":"GT","ShipCity":"San Pedro Ayampuc","ShipName":"Sanford-Halvorson","ShipAddress":"897 Magdeline Park","CompanyEmail":"sgormally0@dot.gov","CompanyAgent":"Shandra Gormally","CompanyName":"Eichmann, Upton and Homenick","Currency":"GTQ","Notes":"sit amet cursus id turpis integer aliquet massa id lobortis convallis","Department":"Computers","Website":"house.gov","Latitude":"14.78667","Longitude":"-90.45111","ShipDate":"5/21/2016","TimeZone":"America/Guatemala","Status":1,"Type":2},{"RecordID":2,"OrderID":"41250-308","ShipCountry":"ID","ShipCity":"Langensari","ShipName":"Denesik-Langosh","ShipAddress":"9 Brickson Park Junction","CompanyEmail":"eivanonko1@over-blog.com","CompanyAgent":"Estele Ivanonko","CompanyName":"Lowe, Batz and Purdy","Currency":"IDR","Notes":"lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet","Department":"Baby","Website":"arizona.edu","Latitude":"-6.4222","Longitude":"105.9425","ShipDate":"4/19/2016","TimeZone":"Asia/Jakarta","Status":1,"Type":3},{"RecordID":3,"OrderID":"0615-7571","ShipCountry":"HR","ShipCity":"Slatina","ShipName":"Kunze, Schneider and Cronin","ShipAddress":"35712 Sundown Parkway","CompanyEmail":"sbettley2@gmpg.org","CompanyAgent":"Stephine Bettley","CompanyName":"Bernier, Weimann and Wuckert","Currency":"HRK","Notes":"cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus","Department":"Toys","Website":"rakuten.co.jp","Latitude":"45.70333","Longitude":"17.70278","ShipDate":"4/7/2016","TimeZone":"Europe/Zagreb","Status":6,"Type":3},{"RecordID":4,"OrderID":"49349-551","ShipCountry":"RU","ShipCity":"Novo-Peredelkino","ShipName":"Jacobi-Ankunding","ShipAddress":"481 Sage Park","CompanyEmail":"dmartijn3@printfriendly.com","CompanyAgent":"Damara Martijn","CompanyName":"Tromp-Hegmann","Currency":"RUB","Notes":"cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam","Department":"Baby","Website":"t-online.de","Latitude":"55.64528","Longitude":"37.33583","ShipDate":"2/15/2016","TimeZone":"Europe/Moscow","Status":4,"Type":2},{"RecordID":5,"OrderID":"59779-750","ShipCountry":"ID","ShipCity":"Bombu","ShipName":"Johns-Kunze","ShipAddress":"59 Marcy Hill","CompanyEmail":"hpelzer4@friendfeed.com","CompanyAgent":"Helsa Pelzer","CompanyName":"Walker LLC","Currency":"IDR","Notes":"non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit","Department":"Toys","Website":"xrea.com","Latitude":"-8.6909","Longitude":"120.5162","ShipDate":"1/30/2017","TimeZone":"Asia/Makassar","Status":4,"Type":3},{"RecordID":6,"OrderID":"63777-145","ShipCountry":"CN","ShipCity":"Kaiyuan","ShipName":"Kris, Keeling and Weimann","ShipAddress":"122 Evergreen Street","CompanyEmail":"sheugel5@mysql.com","CompanyAgent":"Sigismundo Heugel","CompanyName":"D\'Amore-Johnston","Currency":"CNY","Notes":"tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in","Department":"Tools","Website":"gravatar.com","Latitude":"42.53306","Longitude":"124.04028","ShipDate":"10/22/2016","TimeZone":"Asia/Harbin","Status":3,"Type":3},{"RecordID":7,"OrderID":"57520-0136","ShipCountry":"GR","ShipCity":"Tríkala","ShipName":"Effertz Inc","ShipAddress":"328 8th Avenue","CompanyEmail":"cewell6@reverbnation.com","CompanyAgent":"Clarinda Ewell","CompanyName":"Jakubowski and Sons","Currency":"EUR","Notes":"magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien","Department":"Music","Website":"msu.edu","Latitude":"40.59814","Longitude":"22.55733","ShipDate":"9/3/2016","TimeZone":"Europe/Athens","Status":4,"Type":1},{"RecordID":8,"OrderID":"0093-5200","ShipCountry":"SE","ShipCity":"Köping","ShipName":"West-Ullrich","ShipAddress":"48 Sommers Junction","CompanyEmail":"adevenny7@webnode.com","CompanyAgent":"Ariel Devenny","CompanyName":"Goldner, Bartoletti and Towne","Currency":"SEK","Notes":"mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus","Department":"Jewelery","Website":"flavors.me","Latitude":"59.514","Longitude":"15.9926","ShipDate":"2/10/2016","TimeZone":"Europe/Stockholm","Status":2,"Type":3},{"RecordID":9,"OrderID":"14783-319","ShipCountry":"ID","ShipCity":"Ujung","ShipName":"Stiedemann-Kemmer","ShipAddress":"10625 Dixon Road","CompanyEmail":"bplewright8@mashable.com","CompanyAgent":"Buck Plewright","CompanyName":"Boyer and Sons","Currency":"IDR","Notes":"habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum","Department":"Music","Website":"odnoklassniki.ru","Latitude":"-8.2137","Longitude":"114.3818","ShipDate":"11/11/2016","TimeZone":"Asia/Makassar","Status":2,"Type":3},{"RecordID":10,"OrderID":"59011-454","ShipCountry":"CO","ShipCity":"Salento","ShipName":"Daniel-Feest","ShipAddress":"48004 Mariners Cove Circle","CompanyEmail":"gliddon9@wordpress.org","CompanyAgent":"Gilberta Liddon","CompanyName":"Nienow-Dickens","Currency":"COP","Notes":"dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit","Department":"Electronics","Website":"deliciousdays.com","Latitude":"4.6375","Longitude":"-75.57028","ShipDate":"12/15/2016","TimeZone":"America/Bogota","Status":6,"Type":2},{"RecordID":11,"OrderID":"0268-1530","ShipCountry":"ID","ShipCity":"Sarkanjut","ShipName":"Mraz-Parisian","ShipAddress":"9630 Scoville Road","CompanyEmail":"oheusticea@buzzfeed.com","CompanyAgent":"Odetta Heustice","CompanyName":"Gorczany-Mohr","Currency":"IDR","Notes":"interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus","Department":"Electronics","Website":"pagesperso-orange.fr","Latitude":"-7.10896","Longitude":"107.94173","ShipDate":"7/28/2016","TimeZone":"Asia/Jakarta","Status":5,"Type":3},{"RecordID":12,"OrderID":"53057-012","ShipCountry":"CN","ShipCity":"Baiguo","ShipName":"Reinger, Roberts and Medhurst","ShipAddress":"29238 Waywood Road","CompanyEmail":"blillistoneb@ftc.gov","CompanyAgent":"Brittne Lillistone","CompanyName":"Schimmel, Bauch and Ortiz","Currency":"CNY","Notes":"ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat","Department":"Toys","Website":"typepad.com","Latitude":"29.8841","Longitude":"110.45615","ShipDate":"9/23/2016","TimeZone":"Asia/Chongqing","Status":5,"Type":3},{"RecordID":13,"OrderID":"58232-9814","ShipCountry":"PL","ShipCity":"Wołczyn","ShipName":"Stanton-Davis","ShipAddress":"63 Dwight Junction","CompanyEmail":"oharlinc@whitehouse.gov","CompanyAgent":"Oralia Harlin","CompanyName":"Hagenes, Dicki and Rowe","Currency":"PLN","Notes":"felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed","Department":"Jewelery","Website":"usnews.com","Latitude":"51.01845","Longitude":"18.04994","ShipDate":"1/15/2017","TimeZone":"Europe/Warsaw","Status":2,"Type":2},{"RecordID":14,"OrderID":"41163-369","ShipCountry":"CA","ShipCity":"Lanigan","ShipName":"Abbott, Lockman and Roberts","ShipAddress":"02 Florence Trail","CompanyEmail":"ffultond@omniture.com","CompanyAgent":"Flinn Fulton","CompanyName":"Jaskolski, O\'Kon and Crona","Currency":"CAD","Notes":"congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed","Department":"Clothing","Website":"biblegateway.com","Latitude":"51.85006","Longitude":"-105.03443","ShipDate":"9/17/2016","TimeZone":"America/Regina","Status":2,"Type":3},{"RecordID":15,"OrderID":"63824-302","ShipCountry":"GR","ShipCity":"Patitírion","ShipName":"Klein-Tillman","ShipAddress":"0 Londonderry Crossing","CompanyEmail":"jitzkovskye@un.org","CompanyAgent":"Jessey Itzkovsky","CompanyName":"Blanda Inc","Currency":"EUR","Notes":"eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium","Department":"Grocery","Website":"opensource.org","Latitude":"39.14657","Longitude":"23.86494","ShipDate":"2/13/2016","TimeZone":"Europe/Athens","Status":5,"Type":2},{"RecordID":16,"OrderID":"55670-109","ShipCountry":"RU","ShipCity":"Ozëry","ShipName":"Buckridge, Klein and Williamson","ShipAddress":"00 Fremont Point","CompanyEmail":"ddiggf@epa.gov","CompanyAgent":"Deidre Digg","CompanyName":"Miller, Morissette and Klocko","Currency":"RUB","Notes":"montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque","Department":"Grocery","Website":"google.ca","Latitude":"54.85998","Longitude":"38.55062","ShipDate":"5/23/2016","TimeZone":"Europe/Moscow","Status":6,"Type":1},{"RecordID":17,"OrderID":"29500-9090","ShipCountry":"CN","ShipCity":"Dingshu","ShipName":"Yundt Inc","ShipAddress":"538 Saint Paul Plaza","CompanyEmail":"haldcorneg@salon.com","CompanyAgent":"Hilliary Aldcorne","CompanyName":"MacGyver-Goyette","Currency":"CNY","Notes":"vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec","Department":"Games","Website":"spotify.com","Latitude":"31.2573","Longitude":"119.84881","ShipDate":"11/25/2016","TimeZone":"Asia/Shanghai","Status":1,"Type":2},{"RecordID":18,"OrderID":"49349-872","ShipCountry":"UA","ShipCity":"Manevychi","ShipName":"Kris, Bahringer and Kerluke","ShipAddress":"2873 Pearson Trail","CompanyEmail":"kramalheteh@163.com","CompanyAgent":"Kare Ramalhete","CompanyName":"Doyle, Lowe and Greenholt","Currency":"UAH","Notes":"magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida","Department":"Games","Website":"utexas.edu","Latitude":"51.29405","Longitude":"25.53436","ShipDate":"9/19/2016","TimeZone":"Europe/Uzhgorod","Status":6,"Type":3},{"RecordID":19,"OrderID":"41163-368","ShipCountry":"JP","ShipCity":"Fukushima-shi","ShipName":"Kemmer-Padberg","ShipAddress":"9748 Graedel Point","CompanyEmail":"dcadigani@pagesperso-orange.fr","CompanyAgent":"Devan Cadigan","CompanyName":"Botsford, Larkin and Brekke","Currency":"JPY","Notes":"at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam","Department":"Beauty","Website":"feedburner.com","Latitude":"37.75","Longitude":"140.46778","ShipDate":"12/6/2016","TimeZone":"Asia/Tokyo","Status":2,"Type":1},{"RecordID":20,"OrderID":"49999-844","ShipCountry":"AM","ShipCity":"Malishka","ShipName":"Aufderhar Group","ShipAddress":"25198 Lotheville Alley","CompanyEmail":"opettusj@ehow.com","CompanyAgent":"Ole Pettus","CompanyName":"Schultz and Sons","Currency":"AMD","Notes":"phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id","Department":"Games","Website":"usda.gov","Latitude":"39.73758","Longitude":"45.39004","ShipDate":"6/24/2016","TimeZone":"Asia/Baku","Status":2,"Type":3},{"RecordID":21,"OrderID":"37000-106","ShipCountry":"CN","ShipCity":"Jincheng","ShipName":"Paucek, Towne and Lind","ShipAddress":"573 Hovde Way","CompanyEmail":"hhickeringillk@discuz.net","CompanyAgent":"Harwell Hickeringill","CompanyName":"Kreiger Inc","Currency":"CNY","Notes":"elementum nullam varius nulla facilisi cras non velit nec nisi","Department":"Garden","Website":"google.it","Latitude":"25.50147","Longitude":"102.40058","ShipDate":"1/5/2017","TimeZone":"Asia/Chongqing","Status":6,"Type":3},{"RecordID":22,"OrderID":"42023-169","ShipCountry":"JM","ShipCity":"New Kingston","ShipName":"Halvorson-Greenfelder","ShipAddress":"055 Maryland Point","CompanyEmail":"cwaszczykl@stumbleupon.com","CompanyAgent":"Claire Waszczyk","CompanyName":"Halvorson and Sons","Currency":"JMD","Notes":"duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh","Department":"Music","Website":"ustream.tv","Latitude":"18.00747","Longitude":"-76.78319","ShipDate":"9/14/2016","TimeZone":"America/Jamaica","Status":5,"Type":3},{"RecordID":23,"OrderID":"57520-0581","ShipCountry":"BR","ShipCity":"Formosa do Rio Preto","ShipName":"Heaney LLC","ShipAddress":"1 Fordem Junction","CompanyEmail":"hcominettim@phoca.cz","CompanyAgent":"Hettie Cominetti","CompanyName":"Nikolaus LLC","Currency":"BRL","Notes":"integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in","Department":"Home","Website":"irs.gov","Latitude":"-11.04833","Longitude":"-45.19306","ShipDate":"6/4/2016","TimeZone":"America/Bahia","Status":1,"Type":1},{"RecordID":24,"OrderID":"57520-0625","ShipCountry":"CN","ShipCity":"Tushi","ShipName":"Hayes, Considine and Kohler","ShipAddress":"502 Kennedy Junction","CompanyEmail":"despinon@msn.com","CompanyAgent":"Doroteya Espino","CompanyName":"Macejkovic, Schaden and Terry","Currency":"CNY","Notes":"posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor","Department":"Health","Website":"live.com","Latitude":"28.91746","Longitude":"108.86704","ShipDate":"2/12/2016","TimeZone":"Asia/Chongqing","Status":2,"Type":1},{"RecordID":25,"OrderID":"37000-616","ShipCountry":"SE","ShipCity":"Hallstahammar","ShipName":"Bartoletti and Sons","ShipAddress":"4756 Tony Terrace","CompanyEmail":"kgeorgesono@ucsd.edu","CompanyAgent":"Klement Georgeson","CompanyName":"Ernser Group","Currency":"SEK","Notes":"rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut","Department":"Automotive","Website":"ezinearticles.com","Latitude":"59.6139","Longitude":"16.2285","ShipDate":"12/28/2016","TimeZone":"Europe/Stockholm","Status":5,"Type":2},{"RecordID":26,"OrderID":"35356-933","ShipCountry":"RU","ShipCity":"Koshki","ShipName":"Adams-Kohler","ShipAddress":"16912 Forest Run Circle","CompanyEmail":"rbengerp@comsenz.com","CompanyAgent":"Ricoriki Benger","CompanyName":"Dickinson, Adams and Thiel","Currency":"RUB","Notes":"nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin","Department":"Garden","Website":"chicagotribune.com","Latitude":"54.20914","Longitude":"50.46767","ShipDate":"11/27/2016","TimeZone":"Europe/Moscow","Status":1,"Type":3},{"RecordID":27,"OrderID":"36987-2295","ShipCountry":"FI","ShipCity":"Piippola","ShipName":"Bayer Inc","ShipAddress":"5479 Oakridge Parkway","CompanyEmail":"rgawthropeq@imdb.com","CompanyAgent":"Raeann Gawthrope","CompanyName":"Greenholt-Rosenbaum","Currency":"EUR","Notes":"justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas","Department":"Computers","Website":"google.com.hk","Latitude":"64.16667","Longitude":"25.96667","ShipDate":"4/1/2016","TimeZone":"Europe/Helsinki","Status":4,"Type":3},{"RecordID":28,"OrderID":"36987-1170","ShipCountry":"VN","ShipCity":"Thanh Chương","ShipName":"Murray-Wiegand","ShipAddress":"5604 Harper Lane","CompanyEmail":"eweekleyr@narod.ru","CompanyAgent":"Enrichetta Weekley","CompanyName":"Stark, Weimann and Hickle","Currency":"VND","Notes":"elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper","Department":"Outdoors","Website":"yahoo.co.jp","Latitude":"18.77877","Longitude":"105.33356","ShipDate":"6/1/2016","TimeZone":"Asia/Ho_Chi_Minh","Status":5,"Type":2},{"RecordID":29,"OrderID":"65597-101","ShipCountry":"JP","ShipCity":"Takasaki","ShipName":"Doyle-McDermott","ShipAddress":"71 Victoria Alley","CompanyEmail":"predfernes@ox.ac.uk","CompanyAgent":"Phoebe Redferne","CompanyName":"Paucek, Kutch and Pfannerstill","Currency":"JPY","Notes":"nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus","Department":"Clothing","Website":"newyorker.com","Latitude":"36.33333","Longitude":"139.01667","ShipDate":"8/23/2016","TimeZone":"Asia/Tokyo","Status":4,"Type":1},{"RecordID":30,"OrderID":"49035-350","ShipCountry":"PE","ShipCity":"Charat","ShipName":"Gislason Inc","ShipAddress":"67308 Dixon Street","CompanyEmail":"mdabernottt@buzzfeed.com","CompanyAgent":"Milka Dabernott","CompanyName":"Weimann-Schoen","Currency":"PEN","Notes":"nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat","Department":"Games","Website":"list-manage.com","Latitude":"-7.83333","Longitude":"-78.45","ShipDate":"7/11/2016","TimeZone":"America/Lima","Status":6,"Type":3},{"RecordID":31,"OrderID":"49839-200","ShipCountry":"CN","ShipCity":"Haoxue","ShipName":"Thompson Group","ShipAddress":"78 Pond Circle","CompanyEmail":"gcolatonu@freewebs.com","CompanyAgent":"Gale Colaton","CompanyName":"Krajcik, Koch and Bayer","Currency":"CNY","Notes":"porttitor id consequat in consequat ut nulla sed accumsan felis ut","Department":"Home","Website":"devhub.com","Latitude":"30.04761","Longitude":"112.46759","ShipDate":"1/13/2017","TimeZone":"Asia/Chongqing","Status":3,"Type":3},{"RecordID":32,"OrderID":"62699-1114","ShipCountry":"UY","ShipCity":"Santa Catalina","ShipName":"Koch Inc","ShipAddress":"43 Hintze Street","CompanyEmail":"sstronachv@npr.org","CompanyAgent":"Sula Stronach","CompanyName":"Boyle and Sons","Currency":"UYU","Notes":"dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum","Department":"Clothing","Website":"homestead.com","Latitude":"-33.75","Longitude":"-57.48333","ShipDate":"7/22/2016","TimeZone":"America/Montevideo","Status":4,"Type":1},{"RecordID":33,"OrderID":"45802-257","ShipCountry":"FR","ShipCity":"Toulouse","ShipName":"McLaughlin LLC","ShipAddress":"997 Redwing Place","CompanyEmail":"jmcilennaw@accuweather.com","CompanyAgent":"Jena McIlenna","CompanyName":"Blanda Group","Currency":"EUR","Notes":"morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit","Department":"Baby","Website":"msu.edu","Latitude":"43.6043","Longitude":"1.4437","ShipDate":"12/4/2016","TimeZone":"Europe/Paris","Status":6,"Type":2},{"RecordID":34,"OrderID":"52125-212","ShipCountry":"CU","ShipCity":"Niquero","ShipName":"Cole Group","ShipAddress":"2 Sugar Hill","CompanyEmail":"mosannex@sakura.ne.jp","CompanyAgent":"Myrtia Osanne","CompanyName":"Price-Goyette","Currency":"CUP","Notes":"tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus","Department":"Clothing","Website":"netlog.com","Latitude":"20.04478","Longitude":"-77.5851","ShipDate":"8/8/2016","TimeZone":"America/Havana","Status":3,"Type":1},{"RecordID":35,"OrderID":"16590-745","ShipCountry":"PE","ShipCity":"Tacna","ShipName":"Bernier Inc","ShipAddress":"9883 Nancy Alley","CompanyEmail":"sjobey@phoca.cz","CompanyAgent":"Sammie Jobe","CompanyName":"Tromp LLC","Currency":"PEN","Notes":"non sodales sed tincidunt eu felis fusce posuere felis sed lacus","Department":"Shoes","Website":"arstechnica.com","Latitude":"-18.01465","Longitude":"-70.25362","ShipDate":"11/21/2016","TimeZone":"America/Lima","Status":2,"Type":2},{"RecordID":36,"OrderID":"60505-0132","ShipCountry":"PH","ShipCity":"Capissayan Sur","ShipName":"Volkman-Hickle","ShipAddress":"76 Linden Terrace","CompanyEmail":"gpoliz@weibo.com","CompanyAgent":"Gaby Poli","CompanyName":"Metz, Herman and Leannon","Currency":"PHP","Notes":"nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a","Department":"Music","Website":"squarespace.com","Latitude":"18.0509","Longitude":"121.8177","ShipDate":"8/8/2016","TimeZone":"Asia/Manila","Status":1,"Type":3},{"RecordID":37,"OrderID":"68428-071","ShipCountry":"KW","ShipCity":"Janūb as Surrah","ShipName":"Kuhlman, Berge and Jacobi","ShipAddress":"68942 Crowley Lane","CompanyEmail":"gmoir10@va.gov","CompanyAgent":"Garrard Moir","CompanyName":"Bosco and Sons","Currency":"KWD","Notes":"lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus","Department":"Grocery","Website":"aol.com","Latitude":"29.26917","Longitude":"47.97806","ShipDate":"3/27/2016","TimeZone":"Asia/Kuwait","Status":6,"Type":2},{"RecordID":38,"OrderID":"61543-7772","ShipCountry":"CN","ShipCity":"Quanling","ShipName":"Considine-Russel","ShipAddress":"0 Duke Court","CompanyEmail":"upoag11@livejournal.com","CompanyAgent":"Ulrick Poag","CompanyName":"Murazik and Sons","Currency":"CNY","Notes":"erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper","Department":"Home","Website":"netscape.com","Latitude":"28.37799","Longitude":"116.07202","ShipDate":"11/23/2016","TimeZone":"Asia/Shanghai","Status":2,"Type":2},{"RecordID":39,"OrderID":"63941-449","ShipCountry":"RS","ShipCity":"Doroslovo","ShipName":"Langworth Inc","ShipAddress":"0 Bashford Point","CompanyEmail":"odanskine12@whitehouse.gov","CompanyAgent":"Osgood Danskine","CompanyName":"Rau, Abshire and Waelchi","Currency":"RSD","Notes":"orci pede venenatis non sodales sed tincidunt eu felis fusce posuere","Department":"Tools","Website":"cornell.edu","Latitude":"45.60699","Longitude":"19.18868","ShipDate":"8/13/2016","TimeZone":"Europe/Belgrade","Status":4,"Type":3},{"RecordID":40,"OrderID":"34954-014","ShipCountry":"BR","ShipCity":"São José","ShipName":"Zieme, Witting and Haley","ShipAddress":"763 Dunning Road","CompanyEmail":"cianson13@google.com.hk","CompanyAgent":"Chloris Ianson","CompanyName":"Krajcik, Balistreri and Hammes","Currency":"BRL","Notes":"sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in","Department":"Music","Website":"ucsd.edu","Latitude":"-28.21171","Longitude":"-49.1632","ShipDate":"6/11/2016","TimeZone":"America/Sao_Paulo","Status":2,"Type":1},{"RecordID":41,"OrderID":"21695-709","ShipCountry":"RU","ShipCity":"Spirovo","ShipName":"Bode and Sons","ShipAddress":"126 Meadow Vale Terrace","CompanyEmail":"ctomasik14@nps.gov","CompanyAgent":"Claire Tomasik","CompanyName":"Orn Group","Currency":"RUB","Notes":"eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante","Department":"Baby","Website":"over-blog.com","Latitude":"57.41905","Longitude":"34.97658","ShipDate":"4/18/2016","TimeZone":"Europe/Moscow","Status":1,"Type":2},{"RecordID":42,"OrderID":"0054-3566","ShipCountry":"CZ","ShipCity":"Hostouň","ShipName":"Pfeffer Inc","ShipAddress":"08 Crowley Center","CompanyEmail":"pknewstubb15@jugem.jp","CompanyAgent":"Paton Knewstubb","CompanyName":"Kiehn, Goyette and Oberbrunner","Currency":"CZK","Notes":"condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas","Department":"Home","Website":"bloglines.com","Latitude":"49.55971","Longitude":"12.77147","ShipDate":"1/14/2017","TimeZone":"Europe/Berlin","Status":3,"Type":2},{"RecordID":43,"OrderID":"61787-499","ShipCountry":"PL","ShipCity":"Siewierz","ShipName":"Anderson, Gottlieb and Grimes","ShipAddress":"743 Clove Circle","CompanyEmail":"hhartshorne16@angelfire.com","CompanyAgent":"Hedvig Hartshorne","CompanyName":"Kihn-Nitzsche","Currency":"PLN","Notes":"nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed","Department":"Beauty","Website":"blogspot.com","Latitude":"50.46657","Longitude":"19.23028","ShipDate":"7/3/2016","TimeZone":"Europe/Warsaw","Status":6,"Type":3},{"RecordID":44,"OrderID":"0944-2963","ShipCountry":"PL","ShipCity":"Kaniów","ShipName":"Herman, Tromp and Hansen","ShipAddress":"1403 Hansons Terrace","CompanyEmail":"dsisland17@census.gov","CompanyAgent":"Deva Sisland","CompanyName":"Bogan Inc","Currency":"PLN","Notes":"nulla suspendisse potenti cras in purus eu magna vulputate luctus cum","Department":"Shoes","Website":"ocn.ne.jp","Latitude":"50.98577","Longitude":"20.66391","ShipDate":"1/2/2017","TimeZone":"Europe/Warsaw","Status":4,"Type":1},{"RecordID":45,"OrderID":"10356-831","ShipCountry":"MN","ShipCity":"Erdenet","ShipName":"Heidenreich-Simonis","ShipAddress":"85 Columbus Trail","CompanyEmail":"cboneham18@barnesandnoble.com","CompanyAgent":"Christophorus Boneham","CompanyName":"Wuckert Inc","Currency":"MNT","Notes":"pharetra magna ac consequat metus sapien ut nunc vestibulum ante","Department":"Automotive","Website":"cafepress.com","Latitude":"48.94877","Longitude":"99.53665","ShipDate":"11/5/2016","TimeZone":"Asia/Ulaanbaatar","Status":4,"Type":2},{"RecordID":46,"OrderID":"51630-003","ShipCountry":"CN","ShipCity":"Zhongshi","ShipName":"Harvey, Halvorson and Howe","ShipAddress":"0 Pine View Avenue","CompanyEmail":"tbone19@yahoo.co.jp","CompanyAgent":"Teresa Bone","CompanyName":"Macejkovic-Ryan","Currency":"CNY","Notes":"vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra","Department":"Books","Website":"hubpages.com","Latitude":"25.38746","Longitude":"115.41678","ShipDate":"5/23/2016","TimeZone":"Asia/Chongqing","Status":2,"Type":2},{"RecordID":47,"OrderID":"53942-243","ShipCountry":"AR","ShipCity":"Anguil","ShipName":"Mante, Huels and Considine","ShipAddress":"87 Corscot Street","CompanyEmail":"hcoupe1a@dagondesign.com","CompanyAgent":"Harmon Coupe","CompanyName":"Hand, Hoppe and Eichmann","Currency":"ARS","Notes":"sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam","Department":"Electronics","Website":"posterous.com","Latitude":"-36.52567","Longitude":"-64.01025","ShipDate":"3/14/2016","TimeZone":"America/Argentina/Salta","Status":1,"Type":3},{"RecordID":48,"OrderID":"67544-889","ShipCountry":"RU","ShipCity":"Losevo","ShipName":"Cruickshank, Botsford and Johns","ShipAddress":"94653 Granby Court","CompanyEmail":"bvalentino1b@fda.gov","CompanyAgent":"Bobbe Valentino","CompanyName":"Weimann-Beier","Currency":"RUB","Notes":"non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam","Department":"Sports","Website":"aboutads.info","Latitude":"50.67667","Longitude":"40.045","ShipDate":"1/1/2017","TimeZone":"Europe/Moscow","Status":3,"Type":2},{"RecordID":49,"OrderID":"21130-352","ShipCountry":"ID","ShipCity":"Dinjo","ShipName":"Trantow, Halvorson and Jacobs","ShipAddress":"076 Johnson Park","CompanyEmail":"rtissington1c@desdev.cn","CompanyAgent":"Rollins Tissington","CompanyName":"West-Douglas","Currency":"IDR","Notes":"nisl nunc nisl duis bibendum felis sed interdum venenatis turpis","Department":"Music","Website":"blogger.com","Latitude":"-9.5942","Longitude":"119.0138","ShipDate":"7/13/2016","TimeZone":"Asia/Makassar","Status":4,"Type":3},{"RecordID":50,"OrderID":"42291-625","ShipCountry":"GR","ShipCity":"Agía Triáda","ShipName":"Collins, Hamill and Schneider","ShipAddress":"74661 Myrtle Junction","CompanyEmail":"vwoolford1d@cmu.edu","CompanyAgent":"Vasilis Woolford","CompanyName":"Koelpin, Dietrich and Wilkinson","Currency":"EUR","Notes":"sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus","Department":"Books","Website":"netscape.com","Latitude":"40.50003","Longitude":"22.87351","ShipDate":"11/5/2016","TimeZone":"Europe/Athens","Status":1,"Type":2},{"RecordID":51,"OrderID":"68327-006","ShipCountry":"GE","ShipCity":"Bolnisi","ShipName":"Farrell and Sons","ShipAddress":"38 Melrose Way","CompanyEmail":"gmcrorie1e@techcrunch.com","CompanyAgent":"Galina McRorie","CompanyName":"Yundt, Johns and Kuphal","Currency":"GEL","Notes":"nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in","Department":"Jewelery","Website":"samsung.com","Latitude":"41.44794","Longitude":"44.53838","ShipDate":"6/24/2016","TimeZone":"Asia/Tbilisi","Status":1,"Type":3},{"RecordID":52,"OrderID":"55154-6125","ShipCountry":"ID","ShipCity":"Menanga","ShipName":"Jerde-Carroll","ShipAddress":"3 Forster Lane","CompanyEmail":"fharpin1f@merriam-webster.com","CompanyAgent":"Fran Harpin","CompanyName":"Gleason Inc","Currency":"IDR","Notes":"aliquam non mauris morbi non lectus aliquam sit amet diam","Department":"Books","Website":"desdev.cn","Latitude":"-8.436","Longitude":"123.0868","ShipDate":"2/22/2016","TimeZone":"Asia/Makassar","Status":2,"Type":1},{"RecordID":53,"OrderID":"52125-217","ShipCountry":"PT","ShipCity":"Monte Novo","ShipName":"Cremin Group","ShipAddress":"46 Homewood Junction","CompanyEmail":"lrose1g@google.com.hk","CompanyAgent":"Lorelle Rose","CompanyName":"Franecki-Littel","Currency":"EUR","Notes":"odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est","Department":"Computers","Website":"e-recht24.de","Latitude":"38.15","Longitude":"-8.8167","ShipDate":"5/25/2016","TimeZone":"Europe/Lisbon","Status":1,"Type":2},{"RecordID":54,"OrderID":"50346-003","ShipCountry":"CN","ShipCity":"Lincuo","ShipName":"Gerhold and Sons","ShipAddress":"450 Mallard Court","CompanyEmail":"dshugg1h@japanpost.jp","CompanyAgent":"Dori Shugg","CompanyName":"Weimann, Kohler and Rosenbaum","Currency":"CNY","Notes":"velit donec diam neque vestibulum eget vulputate ut ultrices vel","Department":"Electronics","Website":"mtv.com","Latitude":"23.66062","Longitude":"117.25946","ShipDate":"11/28/2016","TimeZone":"Asia/Shanghai","Status":4,"Type":2},{"RecordID":55,"OrderID":"65954-014","ShipCountry":"ID","ShipCity":"Nusajaya","ShipName":"Kutch Group","ShipAddress":"66 Hagan Alley","CompanyEmail":"llaughnan1i@wsj.com","CompanyAgent":"Laird Laughnan","CompanyName":"Botsford Inc","Currency":"IDR","Notes":"rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut","Department":"Baby","Website":"npr.org","Latitude":"-8.4817","Longitude":"118.3064","ShipDate":"3/12/2016","TimeZone":"Asia/Makassar","Status":4,"Type":3},{"RecordID":56,"OrderID":"49738-116","ShipCountry":"HR","ShipCity":"Bistrinci","ShipName":"Marks-Treutel","ShipAddress":"37 Randy Park","CompanyEmail":"sslidders1j@lycos.com","CompanyAgent":"Suzanna Slidders","CompanyName":"Macejkovic, Miller and Cartwright","Currency":"HRK","Notes":"quam nec dui luctus rutrum nulla tellus in sagittis dui vel","Department":"Garden","Website":"tripod.com","Latitude":"45.69167","Longitude":"18.39861","ShipDate":"12/29/2016","TimeZone":"Europe/Zagreb","Status":2,"Type":3},{"RecordID":57,"OrderID":"59667-0069","ShipCountry":"FR","ShipCity":"Paris 12","ShipName":"Mayer-Ernser","ShipAddress":"81 Killdeer Road","CompanyEmail":"lgravatt1k@nps.gov","CompanyAgent":"Lewes Gravatt","CompanyName":"Brown, Ryan and Quitzon","Currency":"EUR","Notes":"arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea","Department":"Beauty","Website":"redcross.org","Latitude":"48.8412","Longitude":"2.3876","ShipDate":"7/12/2016","TimeZone":"Europe/Paris","Status":5,"Type":1},{"RecordID":58,"OrderID":"63739-547","ShipCountry":"VN","ShipCity":"Trảng Bom","ShipName":"McLaughlin LLC","ShipAddress":"00 Barnett Place","CompanyEmail":"mkroin1l@webeden.co.uk","CompanyAgent":"Marina Kroin","CompanyName":"Robel and Sons","Currency":"VND","Notes":"luctus rutrum nulla tellus in sagittis dui vel nisl duis","Department":"Automotive","Website":"ustream.tv","Latitude":"10.95358","Longitude":"107.00589","ShipDate":"4/3/2016","TimeZone":"Asia/Ho_Chi_Minh","Status":3,"Type":2},{"RecordID":59,"OrderID":"54569-0909","ShipCountry":"CN","ShipCity":"Lizi","ShipName":"Lowe-Sauer","ShipAddress":"4 Park Meadow Trail","CompanyEmail":"bcannam1m@scientificamerican.com","CompanyAgent":"Bobby Cannam","CompanyName":"Sipes-Stiedemann","Currency":"CNY","Notes":"lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas","Department":"Toys","Website":"technorati.com","Latitude":"29.81127","Longitude":"107.92447","ShipDate":"8/5/2016","TimeZone":"Asia/Chongqing","Status":5,"Type":1},{"RecordID":60,"OrderID":"54868-5657","ShipCountry":"AL","ShipCity":"Patos Fshat","ShipName":"Kris and Sons","ShipAddress":"51 Talisman Alley","CompanyEmail":"bheymann1n@ihg.com","CompanyAgent":"Bunny Heymann","CompanyName":"Abernathy, Luettgen and Becker","Currency":"ALL","Notes":"vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper","Department":"Grocery","Website":"guardian.co.uk","Latitude":"40.64278","Longitude":"19.65083","ShipDate":"3/25/2016","TimeZone":"Europe/Tirane","Status":3,"Type":3},{"RecordID":61,"OrderID":"49288-0467","ShipCountry":"CN","ShipCity":"Kouqian","ShipName":"Morar-Lynch","ShipAddress":"77 Tomscot Alley","CompanyEmail":"bbriance1o@furl.net","CompanyAgent":"Barbara Briance","CompanyName":"Zulauf-Kihn","Currency":"CNY","Notes":"odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede","Department":"Books","Website":"icio.us","Latitude":"43.63914","Longitude":"126.45784","ShipDate":"6/11/2016","TimeZone":"Asia/Harbin","Status":2,"Type":1},{"RecordID":62,"OrderID":"14783-455","ShipCountry":"PL","ShipCity":"Niemodlin","ShipName":"Spinka, Hackett and Leannon","ShipAddress":"45 Orin Plaza","CompanyEmail":"vgapp1p@pinterest.com","CompanyAgent":"Vikky Gapp","CompanyName":"Williamson, Champlin and Zieme","Currency":"PLN","Notes":"cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes","Department":"Games","Website":"wisc.edu","Latitude":"50.642","Longitude":"17.61932","ShipDate":"9/30/2016","TimeZone":"Europe/Warsaw","Status":2,"Type":3},{"RecordID":63,"OrderID":"58232-0029","ShipCountry":"CN","ShipCity":"Zhoukou","ShipName":"Wyman, Swift and Homenick","ShipAddress":"111 Banding Street","CompanyEmail":"jann1q@drupal.org","CompanyAgent":"Jo ann Henzer","CompanyName":"Wolff, Halvorson and Ebert","Currency":"CNY","Notes":"metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci","Department":"Health","Website":"mozilla.com","Latitude":"27.69684","Longitude":"118.91938","ShipDate":"7/23/2016","TimeZone":"Asia/Shanghai","Status":5,"Type":1},{"RecordID":64,"OrderID":"54868-5397","ShipCountry":"CN","ShipCity":"Baima","ShipName":"Schaefer Group","ShipAddress":"26078 Goodland Circle","CompanyEmail":"eironmonger1r@weather.com","CompanyAgent":"Ernest Ironmonger","CompanyName":"Boyle, Schowalter and Jast","Currency":"CNY","Notes":"nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum","Department":"Baby","Website":"google.de","Latitude":"31.58261","Longitude":"119.17219","ShipDate":"3/6/2016","TimeZone":"Asia/Shanghai","Status":3,"Type":2},{"RecordID":65,"OrderID":"69069-101","ShipCountry":"US","ShipCity":"Stamford","ShipName":"Runte-Champlin","ShipAddress":"7 Portage Court","CompanyEmail":"kjacop1s@prlog.org","CompanyAgent":"Karylin Jacop","CompanyName":"Kuphal Group","Currency":"USD","Notes":"at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis","Department":"Industrial","Website":"upenn.edu","Latitude":"41.0888","Longitude":"-73.5435","ShipDate":"5/1/2016","TimeZone":"America/New_York","Status":5,"Type":3},{"RecordID":66,"OrderID":"30142-022","ShipCountry":"ID","ShipCity":"Tebanah","ShipName":"Hudson-Fay","ShipAddress":"75 Mendota Parkway","CompanyEmail":"cmoncrefe1t@craigslist.org","CompanyAgent":"Cherise Moncrefe","CompanyName":"Block Group","Currency":"IDR","Notes":"orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor","Department":"Outdoors","Website":"is.gd","Latitude":"-6.9213","Longitude":"113.2043","ShipDate":"7/8/2016","TimeZone":"Asia/Jakarta","Status":5,"Type":2},{"RecordID":67,"OrderID":"16729-115","ShipCountry":"ID","ShipCity":"Tracal","ShipName":"Beier and Sons","ShipAddress":"93758 Gale Street","CompanyEmail":"celfes1u@usa.gov","CompanyAgent":"Clarie Elfes","CompanyName":"Heidenreich Group","Currency":"IDR","Notes":"tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet","Department":"Grocery","Website":"usatoday.com","Latitude":"-6.9824","Longitude":"112.3381","ShipDate":"6/27/2016","TimeZone":"Asia/Jakarta","Status":3,"Type":2},{"RecordID":68,"OrderID":"51147-5010","ShipCountry":"RU","ShipCity":"Volzhsk","ShipName":"Beatty Group","ShipAddress":"11023 Barnett Park","CompanyEmail":"ibehnecken1v@linkedin.com","CompanyAgent":"Isadore Behnecken","CompanyName":"Gottlieb-Douglas","Currency":"RUB","Notes":"lobortis ligula sit amet eleifend pede libero quis orci nullam","Department":"Shoes","Website":"weather.com","Latitude":"55.86638","Longitude":"48.3594","ShipDate":"7/8/2016","TimeZone":"Europe/Moscow","Status":2,"Type":2},{"RecordID":69,"OrderID":"57520-0435","ShipCountry":"CU","ShipCity":"Venezuela","ShipName":"Mante-Kunze","ShipAddress":"7137 Sutteridge Place","CompanyEmail":"gclemmey1w@hud.gov","CompanyAgent":"Gerty Clemmey","CompanyName":"Schulist, Blanda and Donnelly","Currency":"CUP","Notes":"donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac","Department":"Automotive","Website":"ocn.ne.jp","Latitude":"21.73528","Longitude":"-78.79639","ShipDate":"4/24/2016","TimeZone":"America/Havana","Status":1,"Type":2},{"RecordID":70,"OrderID":"41250-990","ShipCountry":"ID","ShipCity":"Kepel","ShipName":"Rogahn and Sons","ShipAddress":"350 Continental Alley","CompanyEmail":"jogle1x@dot.gov","CompanyAgent":"Jay Ogle","CompanyName":"Botsford LLC","Currency":"IDR","Notes":"nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient","Department":"Music","Website":"angelfire.com","Latitude":"-8.1157","Longitude":"112.4289","ShipDate":"4/28/2016","TimeZone":"Asia/Jakarta","Status":3,"Type":3},{"RecordID":71,"OrderID":"52125-726","ShipCountry":"MA","ShipCity":"Riah","ShipName":"Friesen, O\'Connell and Volkman","ShipAddress":"72001 3rd Point","CompanyEmail":"bdutnell1y@stumbleupon.com","CompanyAgent":"Beverie Dutnell","CompanyName":"Lowe, Pacocha and Grimes","Currency":"MAD","Notes":"ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec","Department":"Kids","Website":"chronoengine.com","Latitude":"33.15122","Longitude":"-7.37504","ShipDate":"6/9/2016","TimeZone":"Africa/Casablanca","Status":3,"Type":2},{"RecordID":72,"OrderID":"68645-478","ShipCountry":"GB","ShipCity":"Milton","ShipName":"Kohler-Wolff","ShipAddress":"674 Texas Plaza","CompanyEmail":"cduddin1z@blogtalkradio.com","CompanyAgent":"Carin Duddin","CompanyName":"Feil, Wolf and Nicolas","Currency":"GBP","Notes":"sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis","Department":"Beauty","Website":"storify.com","Latitude":"53.1805","Longitude":"-0.9766","ShipDate":"2/19/2016","TimeZone":"Europe/London","Status":4,"Type":2},{"RecordID":73,"OrderID":"53942-503","ShipCountry":"TH","ShipCity":"Khok Sung","ShipName":"Denesik-Dach","ShipAddress":"3 Eastwood Hill","CompanyEmail":"uluety20@parallels.com","CompanyAgent":"Ulrika Luety","CompanyName":"Halvorson-Koch","Currency":"THB","Notes":"dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum","Department":"Kids","Website":"virginia.edu","Latitude":"13.83824","Longitude":"102.62254","ShipDate":"8/29/2016","TimeZone":"Asia/Bangkok","Status":4,"Type":2},{"RecordID":74,"OrderID":"10742-8123","ShipCountry":"CN","ShipCity":"Yilkiqi","ShipName":"Little Group","ShipAddress":"2039 Katie Circle","CompanyEmail":"hblazic21@tripod.com","CompanyAgent":"Hugh Blazic","CompanyName":"Kunze Inc","Currency":"CNY","Notes":"tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat","Department":"Jewelery","Website":"biglobe.ne.jp","Latitude":"37.96111","Longitude":"77.24917","ShipDate":"11/12/2016","TimeZone":"Asia/Kashgar","Status":4,"Type":2},{"RecordID":75,"OrderID":"11523-7313","ShipCountry":"MX","ShipCity":"Vicente Guerrero","ShipName":"Larson Inc","ShipAddress":"14 Fieldstone Alley","CompanyEmail":"apinke22@apple.com","CompanyAgent":"Antonie Pinke","CompanyName":"Gislason, Hessel and Heaney","Currency":"MXN","Notes":"lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem","Department":"Tools","Website":"slideshare.net","Latitude":"19.058","Longitude":"-97.818","ShipDate":"7/4/2016","TimeZone":"America/Mexico_City","Status":3,"Type":3},{"RecordID":76,"OrderID":"0406-9959","ShipCountry":"YE","ShipCity":"Ash Sharyah","ShipName":"Huel-Bednar","ShipAddress":"880 Florence Hill","CompanyEmail":"cdust23@is.gd","CompanyAgent":"Corbie Dust","CompanyName":"Cummerata LLC","Currency":"YER","Notes":"purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur","Department":"Electronics","Website":"booking.com","Latitude":"14.35659","Longitude":"45.02244","ShipDate":"8/15/2016","TimeZone":"Asia/Aden","Status":4,"Type":1},{"RecordID":77,"OrderID":"63824-479","ShipCountry":"CO","ShipCity":"La Argentina","ShipName":"Okuneva Inc","ShipAddress":"9346 Jana Alley","CompanyEmail":"sde24@bigcartel.com","CompanyAgent":"Sidonnie De Avenell","CompanyName":"Raynor-Feil","Currency":"COP","Notes":"quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere","Department":"Tools","Website":"goo.ne.jp","Latitude":"2.19611","Longitude":"-75.98","ShipDate":"2/13/2016","TimeZone":"America/Bogota","Status":6,"Type":1},{"RecordID":78,"OrderID":"53329-410","ShipCountry":"CN","ShipCity":"Jieshipu","ShipName":"Cummings Inc","ShipAddress":"276 Continental Drive","CompanyEmail":"ykneaphsey25@csmonitor.com","CompanyAgent":"Yorker Kneaphsey","CompanyName":"Bergstrom, Oberbrunner and Jenkins","Currency":"CNY","Notes":"nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend","Department":"Automotive","Website":"utexas.edu","Latitude":"35.61073","Longitude":"105.53784","ShipDate":"8/5/2016","TimeZone":"Asia/Chongqing","Status":6,"Type":2},{"RecordID":79,"OrderID":"0498-2420","ShipCountry":"JP","ShipCity":"Watari","ShipName":"Murazik, Herman and Klein","ShipAddress":"5 Harbort Place","CompanyEmail":"blockier26@bigcartel.com","CompanyAgent":"Brenn Lockier","CompanyName":"Fahey-Schiller","Currency":"JPY","Notes":"neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum","Department":"Kids","Website":"narod.ru","Latitude":"38.035","Longitude":"140.85111","ShipDate":"5/31/2016","TimeZone":"Asia/Tokyo","Status":5,"Type":1},{"RecordID":80,"OrderID":"69106-070","ShipCountry":"UZ","ShipCity":"Navoiy","ShipName":"Torphy-Kunde","ShipAddress":"80628 Mcguire Hill","CompanyEmail":"wjery27@dot.gov","CompanyAgent":"Walliw Jery","CompanyName":"Will, Fahey and Bernier","Currency":"UZS","Notes":"cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus","Department":"Sports","Website":"facebook.com","Latitude":"40.08444","Longitude":"65.37917","ShipDate":"10/15/2016","TimeZone":"Asia/Samarkand","Status":2,"Type":2},{"RecordID":81,"OrderID":"49852-006","ShipCountry":"SI","ShipCity":"Ravne","ShipName":"Hettinger-Klocko","ShipAddress":"636 Village Green Circle","CompanyEmail":"qderell28@cnn.com","CompanyAgent":"Quintus Derell","CompanyName":"Moen-Greenfelder","Currency":"EUR","Notes":"sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar","Department":"Tools","Website":"typepad.com","Latitude":"46.41413","Longitude":"15.06087","ShipDate":"5/28/2016","TimeZone":"Europe/Ljubljana","Status":1,"Type":1},{"RecordID":82,"OrderID":"67253-232","ShipCountry":"PH","ShipCity":"Cabadiangan","ShipName":"Beier LLC","ShipAddress":"01753 Wayridge Point","CompanyEmail":"alyburn29@latimes.com","CompanyAgent":"Annamaria Lyburn","CompanyName":"Terry-Weber","Currency":"PHP","Notes":"ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices","Department":"Electronics","Website":"scientificamerican.com","Latitude":"9.7534","Longitude":"122.4739","ShipDate":"11/11/2016","TimeZone":"Asia/Manila","Status":6,"Type":3},{"RecordID":83,"OrderID":"54868-6333","ShipCountry":"RU","ShipCity":"Nakhabino","ShipName":"Krajcik Inc","ShipAddress":"77 Atwood Place","CompanyEmail":"dvarnam2a@ft.com","CompanyAgent":"Dall Varnam","CompanyName":"Metz-Hoeger","Currency":"RUB","Notes":"varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices","Department":"Music","Website":"marriott.com","Latitude":"55.84854","Longitude":"37.17788","ShipDate":"6/9/2016","TimeZone":"Europe/Moscow","Status":3,"Type":2},{"RecordID":84,"OrderID":"0496-0883","ShipCountry":"VE","ShipCity":"El Cafetal","ShipName":"Durgan LLC","ShipAddress":"722 Orin Trail","CompanyEmail":"kbirkby2b@sciencedaily.com","CompanyAgent":"Kort Birkby","CompanyName":"Brekke-Crooks","Currency":"VEF","Notes":"massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet","Department":"Grocery","Website":"github.io","Latitude":"10.46941","Longitude":"-66.83063","ShipDate":"5/4/2016","TimeZone":"America/Caracas","Status":1,"Type":1},{"RecordID":85,"OrderID":"59011-410","ShipCountry":"CN","ShipCity":"Shaxi","ShipName":"Leuschke Inc","ShipAddress":"0 Scott Parkway","CompanyEmail":"bbaildon2c@apache.org","CompanyAgent":"Booth Baildon","CompanyName":"Schumm-Turner","Currency":"CNY","Notes":"euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis","Department":"Garden","Website":"squidoo.com","Latitude":"24.61694","Longitude":"113.67068","ShipDate":"2/27/2016","TimeZone":"Asia/Chongqing","Status":5,"Type":1},{"RecordID":86,"OrderID":"10578-002","ShipCountry":"CN","ShipCity":"Xinpu","ShipName":"Crist-Mayert","ShipAddress":"6 Lakewood Gardens Plaza","CompanyEmail":"ahaslewood2d@simplemachines.org","CompanyAgent":"Amber Haslewood","CompanyName":"Hammes Group","Currency":"CNY","Notes":"nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus","Department":"Sports","Website":"google.ca","Latitude":"30.98227","Longitude":"113.98035","ShipDate":"11/12/2016","TimeZone":"Asia/Chongqing","Status":2,"Type":3},{"RecordID":87,"OrderID":"0591-5454","ShipCountry":"PH","ShipCity":"Busay","ShipName":"Cummerata Inc","ShipAddress":"52409 Bultman Point","CompanyEmail":"dkorejs2e@census.gov","CompanyAgent":"Domeniga Korejs","CompanyName":"Green-Bashirian","Currency":"PHP","Notes":"nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo","Department":"Automotive","Website":"amazon.com","Latitude":"10.5378","Longitude":"122.886","ShipDate":"4/2/2016","TimeZone":"Asia/Manila","Status":2,"Type":1},{"RecordID":88,"OrderID":"24385-998","ShipCountry":"FI","ShipCity":"Juupajoki","ShipName":"Aufderhar, Borer and Berge","ShipAddress":"06 Everett Hill","CompanyEmail":"bvitall2f@qq.com","CompanyAgent":"Belva Vitall","CompanyName":"Kassulke, Kub and Parker","Currency":"EUR","Notes":"vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus","Department":"Movies","Website":"yahoo.com","Latitude":"61.79901","Longitude":"24.36939","ShipDate":"7/28/2016","TimeZone":"Europe/Helsinki","Status":6,"Type":3},{"RecordID":89,"OrderID":"42507-484","ShipCountry":"IR","ShipCity":"Kīsh","ShipName":"Purdy, Prosacco and Stamm","ShipAddress":"07 Morningstar Drive","CompanyEmail":"nbreede2g@delicious.com","CompanyAgent":"Netti Breede","CompanyName":"Conroy-Schmitt","Currency":"IRR","Notes":"morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id","Department":"Music","Website":"networkadvertising.org","Latitude":"26.55778","Longitude":"54.01944","ShipDate":"3/21/2016","TimeZone":"Asia/Tehran","Status":1,"Type":1},{"RecordID":90,"OrderID":"0904-6010","ShipCountry":"BA","ShipCity":"Bužim","ShipName":"Howell Inc","ShipAddress":"57 Anhalt Center","CompanyEmail":"rezzy2h@senate.gov","CompanyAgent":"Rosella Ezzy","CompanyName":"Heller-Turcotte","Currency":"BAM","Notes":"vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet","Department":"Tools","Website":"dyndns.org","Latitude":"45.05361","Longitude":"16.03254","ShipDate":"6/11/2016","TimeZone":"Europe/Sarajevo","Status":3,"Type":3},{"RecordID":91,"OrderID":"65044-5285","ShipCountry":"CR","ShipCity":"San Francisco","ShipName":"Orn LLC","ShipAddress":"979 Quincy Place","CompanyEmail":"lnairy2i@wikia.com","CompanyAgent":"Lyn Nairy","CompanyName":"Hermann, Heathcote and Blick","Currency":"CRC","Notes":"phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla","Department":"Industrial","Website":"goo.ne.jp","Latitude":"9.99299","Longitude":"-84.12934","ShipDate":"10/23/2016","TimeZone":"America/Costa_Rica","Status":3,"Type":3},{"RecordID":92,"OrderID":"33261-045","ShipCountry":"TZ","ShipCity":"Dongobesh","ShipName":"Haag Inc","ShipAddress":"5 Rigney Center","CompanyEmail":"avanyakin2j@edublogs.org","CompanyAgent":"Abba Vanyakin","CompanyName":"Buckridge, O\'Kon and Cassin","Currency":"TZS","Notes":"ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse","Department":"Automotive","Website":"weather.com","Latitude":"-4.06667","Longitude":"35.38333","ShipDate":"3/8/2016","TimeZone":"Africa/Dar_es_Salaam","Status":6,"Type":3},{"RecordID":93,"OrderID":"42507-300","ShipCountry":"CL","ShipCity":"Puerto Montt","ShipName":"Rogahn-McClure","ShipAddress":"9 Scoville Place","CompanyEmail":"edobrovolny2k@ycombinator.com","CompanyAgent":"Estella Dobrovolny","CompanyName":"Labadie, Hilll and Ryan","Currency":"CLP","Notes":"fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet","Department":"Jewelery","Website":"vk.com","Latitude":"-41.46574","Longitude":"-72.94289","ShipDate":"4/15/2016","TimeZone":"America/Santiago","Status":1,"Type":2},{"RecordID":94,"OrderID":"58118-2013","ShipCountry":"PL","ShipCity":"Gąsocin","ShipName":"Kris LLC","ShipAddress":"0 Park Meadow Hill","CompanyEmail":"mhryniewicz2l@dot.gov","CompanyAgent":"Maurizia Hryniewicz","CompanyName":"Koss LLC","Currency":"PLN","Notes":"vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam","Department":"Movies","Website":"edublogs.org","Latitude":"52.73754","Longitude":"20.7118","ShipDate":"11/16/2016","TimeZone":"Europe/Warsaw","Status":4,"Type":1},{"RecordID":95,"OrderID":"55504-0500","ShipCountry":"ID","ShipCity":"Besah","ShipName":"Dibbert-Batz","ShipAddress":"53 Jackson Pass","CompanyEmail":"rdowrey2m@foxnews.com","CompanyAgent":"Robena Dowrey","CompanyName":"Stehr, Effertz and Goldner","Currency":"IDR","Notes":"diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis","Department":"Jewelery","Website":"e-recht24.de","Latitude":"-7.1358","Longitude":"111.6394","ShipDate":"6/29/2016","TimeZone":"Asia/Jakarta","Status":1,"Type":1},{"RecordID":96,"OrderID":"52316-190","ShipCountry":"TH","ShipCity":"Yala","ShipName":"McCullough Group","ShipAddress":"35 Cordelia Alley","CompanyEmail":"aovett2n@java.com","CompanyAgent":"Agatha Ovett","CompanyName":"Schultz, Dooley and Metz","Currency":"THB","Notes":"congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui","Department":"Books","Website":"mashable.com","Latitude":"6.53995","Longitude":"101.28128","ShipDate":"10/4/2016","TimeZone":"Asia/Bangkok","Status":4,"Type":3},{"RecordID":97,"OrderID":"49288-0451","ShipCountry":"ID","ShipCity":"Karangduren Dua","ShipName":"Heller Group","ShipAddress":"2169 Dixon Center","CompanyEmail":"pkillner2o@fastcompany.com","CompanyAgent":"Padraic Killner","CompanyName":"Cruickshank and Sons","Currency":"IDR","Notes":"semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus","Department":"Jewelery","Website":"cisco.com","Latitude":"-8.2717","Longitude":"113.4939","ShipDate":"8/22/2016","TimeZone":"Asia/Jakarta","Status":6,"Type":1},{"RecordID":98,"OrderID":"63824-478","ShipCountry":"KI","ShipCity":"Tabwakea Village","ShipName":"Crona LLC","ShipAddress":"109 Bobwhite Park","CompanyEmail":"jgonsalvo2p@bizjournals.com","CompanyAgent":"Jacquelyn Gonsalvo","CompanyName":"Ondricka, Bergnaum and Pfannerstill","Currency":"AUD","Notes":"tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc","Department":"Toys","Website":"networkadvertising.org","Latitude":"2.01643","Longitude":"-157.48773","ShipDate":"6/11/2016","TimeZone":"Pacific/Honolulu","Status":2,"Type":2},{"RecordID":99,"OrderID":"0641-6045","ShipCountry":"FR","ShipCity":"Étampes","ShipName":"Roberts-Wilderman","ShipAddress":"2950 North Circle","CompanyEmail":"mfeld2q@mayoclinic.com","CompanyAgent":"Mathilda Feld","CompanyName":"Satterfield-Keebler","Currency":"EUR","Notes":"porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec","Department":"Grocery","Website":"printfriendly.com","Latitude":"48.4333","Longitude":"2.15","ShipDate":"7/12/2016","TimeZone":"Europe/Paris","Status":2,"Type":2},{"RecordID":100,"OrderID":"50436-0124","ShipCountry":"PL","ShipCity":"Drobin","ShipName":"Batz-McLaughlin","ShipAddress":"66031 Comanche Center","CompanyEmail":"bheaseman2r@theglobeandmail.com","CompanyAgent":"Brita Heaseman","CompanyName":"Feeney-Kutch","Currency":"PLN","Notes":"id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero","Department":"Beauty","Website":"netlog.com","Latitude":"52.73775","Longitude":"19.98928","ShipDate":"11/22/2016","TimeZone":"Europe/Warsaw","Status":2,"Type":1}]');

		var datatable = $('.m_datatable').mDatatable({
			// datasource definition
			data: {
				type: 'local',
				source: dataJSONArray,
				pageSize: 10
			},

			// layout definition
			layout: {
				theme: 'default', // datatable theme
				class: '', // custom wrapper class
				scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
				// height: 450, // datatable's body's fixed height
				footer: false // display/hide footer
			},

			// column sorting
			sortable: true,

			pagination: true,

			search: {
				input: $('#generalSearch')
			},

			// inline and bactch editing(cooming soon)
			// editable: false,

			// columns definition
			columns: [{
				field: "RecordID",
				title: "#",
				width: 50,
				sortable: false,
				textAlign: 'center',
                selector: {class: 'm-checkbox--solid m-checkbox--brand'}
			}, {
				field: "OrderID",
				title: "Mã người dùng"
			}, {
				field: "ShipName",
				title: "Tên hiển thị",
				responsive: {visible: 'lg'}
			}, {
				field: "Currency",
				title: "Thuộc nhóm người dùng",
				width: 100
			}, {
				field: "ShipAddress",
				title: "Mức quản lý từ",
				responsive: {visible: 'lg'}
			}, {
				field: "ShipDate",
				title: "Đến",
				type: "date",
				format: "MM/DD/YYYY"
			}, {
				field: "Latitude",
				title: "Thời điểm tạo",
				type: "number"
			}]
		});

		var query = datatable.getDataSourceQuery();

		$('#m_form_status').on('change', function () {
			datatable.search($(this).val(), 'Status');
		}).val(typeof query.Status !== 'undefined' ? query.Status : '');

		$('#m_form_type').on('change', function () {
			datatable.search($(this).val(), 'Type');
		}).val(typeof query.Type !== 'undefined' ? query.Type : '');

		$('#m_form_status, #m_form_type').selectpicker();

	};

	return {
		//== Public functions
		init: function () {
			// init dmeo
			demo();
		}
	};
}();

jQuery(document).ready(function () {
	DatatableDataLocalDemo.init();
});



//== Class definition ============================================= End Js cho table Danh sách người dùng.



//== Class definition ============================================= Start Js cho Table DS tính năng.
var DatatableChildDataLocalDemo = function() {
  //== Private functions
  var subTableInit = function(e) {
    $('<div/>').attr('id', 'child_data_local_' + e.data.RecordID).appendTo(e.detailCell).mDatatable({
      data: {
        type: 'local',
        source: e.data.Orders,
        //pageSize: 10,
        tableCheckBox: true,
        tableCheckBoxChild: true,
      },

      // layout definition
      layout: {
        theme: 'default',
        scroll: false,
        height: null,
        footer: false,
        header: false,

        // enable/disable datatable spinner.
        spinner: {
          type: 1,
          theme: 'default',
        },
      },

      sortable: true,

      // columns definition
      columns: [
        {
          field: 'OrderID',
          title: 'Order ID',
          width: 30,
		  sortable: false,
		  textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'FunctionName',
          title: 'Tên tính năng',
          //textAlign: 'center',
          selector: false,
          addClassName: 'm-text--child'
        }, {
          field: 'See',
          title: 'Xem',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'},
        }, {
          field: 'Add',
          title: 'Thêm',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Edit',
          title: 'Sửa',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Delete',
          title: 'Xóa',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Import',
          title: 'N.Khẩu',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Export',
          title: 'X.Khẩu',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Copy',
          title: 'Sao chép',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'FileAttach',
          title: 'Đính kèm file',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'DownLoadFile',
          title: 'Tải file',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'CreatedOn',
          title: 'Thời điểm tạo',
          selector: false
        }],
    });
  };

  // demo initializer
  var mainTableInit = function() {

    var dataJSONArray = JSON.parse('[{"RecordID":1,"FunctionName":"Hồ sơ nhân viên","See":"true","Add":"true","Edit":"true","Delete":"true","Export":"true","Import":"true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018","Orders":[ \n' +
        '{"OrderID":"1","FunctionName":"Thông tin cá nhân","See":"true","Add":"true","Edit":"true","Delete":"true","Export":"true","Import": "true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018"}, \n' +
        '{"OrderID":"2","FunctionName":"Lương cơ bản","See":"false","Add":"false","Edit":"true","Delete":"false","Export":"true","Import": "true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018"}, \n' +
        '{"OrderID":"3","FunctionName":"Lương chức danh","See":"true","Add":"true","Edit":"true","Delete":"true","Export":"true","Import": "true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018"}}, \n +
        '{"RecordID":2,"FunctionName":"Hồ sơ nhân viên","See":"true","Add":"true","Edit":"true","Delete":"true","Export":"true","Import":"true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018","Orders":[ \n' +
        '{"OrderID":"1","FunctionName":"Thông tin cá nhân","See":"true","Add":"true","Edit":"true","Delete":"true","Export":"true","Import": "true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018"}, \n' +
        '{"OrderID":"2","FunctionName":"Lương cơ bản","See":"false","Add":"false","Edit":"true","Delete":"false","Export":"true","Import": "true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018"}, \n' +
        '{"OrderID":"3","FunctionName":"Lương chức danh","See":"true","Add":"true","Edit":"true","Delete":"true","Export":"true","Import": "true","Copy":"true","FileAttach":"true","DownLoadFile":"false","CreatedOn":"05/04/2018"}]}]');

    var datatable = $('.m_datatable_local').mDatatable({
      // datasource definition
      data: {
        type: 'local',
        source: dataJSONArray,
        //pageSize: 10, // display 20 records per page
        tableCheckBox: true,
        checkboxFirst: false,
      },

      // layout definition
      layout: {
        theme: 'default',
        scroll: false,
        height: null,
        footer: false,
      },

      sortable: true,

      filterable: false,

      pagination: true,

      detail: {
        title: 'Load sub table',
        content: subTableInit,
      },

      search: {
        input: $('#generalSearch'),
      },

      // columns definition
      columns: [
        {
          field: 'RecordID',
          title: '#',
          width: 30,
	      sortable: false,
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'FunctionName',
          title: 'Tên tính năng',
          //textAlign: 'center',
          selector: false
        }, {
          field: 'See',
          title: 'Xem',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'},
        }, {
          field: 'Add',
          title: 'Thêm',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Edit',
          title: 'Sửa',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Delete',
          title: 'Xóa',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Import',
          title: 'N.Khẩu',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Export',
          title: 'X.Khẩu',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'Copy',
          title: 'Sao chép',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'FileAttach',
          title: 'Đính kèm file',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'DownLoadFile',
          title: 'Tải file',
          textAlign: 'center',
          selector: {class: 'm-checkbox--solid m-checkbox--brand'}
        }, {
          field: 'CreatedOn',
          title: 'Thời điểm tạo',
          selector: false
        }],
    });

  };

  return {
    //== Public functions
    init: function() {
      // init dmeo
      mainTableInit();
    },
  };
}();

jQuery(document).ready(function() {
  DatatableChildDataLocalDemo.init();
});
//== Class definition ============================================= End Js cho Table DS tính năng 2.


</script>
