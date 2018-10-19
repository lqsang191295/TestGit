from . import models
import logging

logger = logging.getLogger(__name__)
import common

def set_dict_insert_data(args):
    ret_dict = dict()

    ret_dict.update(
        sorting=(lambda x: x['sorting'] if x.has_key('sorting') else None)(args['data']),
        description=(lambda x: x['description'] if x.has_key('description') else None)(args['data']),
        custom_name=(lambda x: x['custom_name'] if x.has_key('custom_name') else None)(args['data']),
        style_class=(lambda x: x['style_class'] if x.has_key('style_class') else None)(args['data']),
        url=(lambda x: x['url'] if x.has_key('url') else None)(args['data']),
        image=(lambda x: x['image'] if x.has_key('image') else None)(args['data']),
        default_name=(lambda x: x['default_name'] if x.has_key('default_name') else None)(args['data']),
        height=(lambda x: x['height'] if x.has_key('height') else None)(args['data']),
        parent_id=(lambda x: x['parent_id'] if x.has_key('parent_id') else None)(args['data']),
        active=(lambda x: x['active'] if x.has_key('active') else None)(args['data']),
        function_id=(lambda x: x['function_id'] if x.has_key('function_id') else None)(args['data']),
        type=(lambda x: x['type'] if x.has_key('type') else None)(args['data']),
        width=(lambda x: x['width'] if x.has_key('width') else None)(args['data']),
        icon=(lambda x: x['icon'] if x.has_key('icon') else None)(args['data']),
        app=(lambda x: x['app'] if x.has_key('app') else None)(args['data']),
        level_code=(lambda x: x['level_code'] if x.has_key('level_code') else None)(args['data']),
        color=(lambda x: x['color'] if x.has_key('color') else None)(args['data']),
    )

    return ret_dict

def insert(args):
    try:
        ret = {}
        if args['data'] != None:
            data =  set_dict_insert_data(args['data']['data'])
            ret  =  models.SYS_FunctionList_Favarite().insert(data)
            return ret

        return dict(
            error = "request parameter is not exist"
        )
    except Exception as ex:
        raise(ex)

def get_list(args):
    pass
    return data


def get_list_module(args):
    if (args["data"] == None or args["data"].has_key("language") == False or args["data"]["language"] == None):
        return dict();

    lang = args["data"]["language"]

    if (lang == "vi"):
        lang = 'vn'

    lang = lang.upper()

    collection = common.get_collection('HCSSYS_Modules')

    ret = collection.aggregate([
        {
            "$sort": {"sorting": 1}
        }, {
            "$match": {
                "module_type": "portal"
            }
        }, {
            "$lookup":
                {
                    "from": common.get_collection_name_with_schema('HCSSYS_FunctionListLabel'),
                    "let": {"module_code": "$module_code"},
                    "pipeline": [
                        {"$match":
                            {"$expr":
                                {
                                    "$and": [
                                        {
                                            "$eq": ["$language", lang]
                                        }, {
                                            "$eq": ["$function_id", "$$module_code"]
                                        }, {
                                            "$eq": ["$application", "HCSSYS_Modules"]
                                        }
                                    ]
                                }
                            }
                        },
                        {"$project": {"function_id": 1, "language": 1, "default_name": 1, "custom_name": 1,
                                      "description": 1}}
                    ],
                    "as": "stockdata"
                }
        }, {
            "$unwind": "$stockdata"
        }, {
            "$project": {
                "module_code": 1,
                "module_name": 1,
                "module_type": 1,
                "url": 1,
                "redirect_url": 1,
                "is_active": 1,
                "sorting": 1,
                "is_new_tab": 1,
                "default_name": "$stockdata.default_name",
                "custom_name": "$stockdata.custom_name",
                "description": "$stockdata.description",
                "function_id": "$stockdata.function_id",
            }
        }

    ])

    # ret = models.HCSSYS_Modules().aggregate()
    # ret.match("module_type == {0}", "portal")
    # ret.sort({"sorting": 1})
    # ret.left_join()
    # ret.project(
    #    module_code = 1,
    #    module_name = 1,
    #    module_type = 1,
    #    url = 1,
    #    redirect_url = 1,
    #    is_active = 1,
    #    sorting = 1,
    #    is_new_tab = 1,
    #    lb = 1
    # )
    return list(ret)


def exec_query(args):
    import json
    try:
        tab = args['collection']
        query = args['query']
        col = common.get_collection(tab)
        result = list(col.aggregate(json.loads(query)))
        if result != None and len(result) > 0:
            return result[0]['number']
        return None
    except Exception as ex:
        logger.debug(ex)
        return {"data": None, "error": ex.message}


def get_tree(args):
    items = models.models_per.SYS_FunctionList().aggregate().project(
        function_id=1,
        parent_id=1,
        default_name=1,
        app=1
    ).match("app == {0}", "PERF")

    return items.get_list()