{
    "xdsVersion": "3.5.0",
    "frameworkVersion": "ext60",
    "internals": {
        "type": "Ext.container.Container",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "designer|userAlias": "menutablas",
            "designer|userClassName": "menuTablas",
            "dock": "top",
            "flex": 1,
            "itemId": "menuTablas",
            "scrollable": "true",
            "style": [
                "background-color: #D8D8D8;",
                ""
            ]
        },
        "name": "MyContainer",
        "cn": [
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "border": null,
                    "flex": 1,
                    "glyph": "xf19c@FontAwesome",
                    "height": "20%",
                    "icon": "",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Establecimientos",
                    "width": "29%"
                },
                "name": "MyButton3",
                "cn": [
                    {
                        "type": "basiceventbinding",
                        "reference": {
                            "name": "listeners",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "fn": "onButtonClick",
                            "implHandler": [
                                "            var cmp = Ext.ComponentQuery.query(\"#establecimientosGrid\")[0];",
                                "                if(!cmp){",
                                "                    var cmp = Ext.create('MyApp.view.establecimientosGrid');",
                                "                    MyApp.main.add(cmp);",
                                "             }",
                                "             MyApp.main.getLayout().setActiveItem(cmp);",
                                ""
                            ],
                            "name": "click",
                            "scope": "me"
                        },
                        "name": "onButtonClick"
                    }
                ]
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "border": null,
                    "flex": 1,
                    "glyph": "xf200@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Lotes",
                    "width": "29%"
                },
                "name": "MyButton14",
                "cn": [
                    {
                        "type": "basiceventbinding",
                        "reference": {
                            "name": "listeners",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "fn": "onButtonClick1",
                            "implHandler": [
                                "             var cmp = Ext.ComponentQuery.query(\"#lotesGrid\")[0];",
                                "                if(!cmp){",
                                "                    var cmp = Ext.create('MyApp.view.lotesGrid');",
                                "                    MyApp.main.add(cmp);",
                                "             }",
                                "             MyApp.main.getLayout().setActiveItem(cmp);",
                                ""
                            ],
                            "name": "click",
                            "scope": "me"
                        },
                        "name": "onButtonClick1"
                    }
                ]
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf06c@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Actividades",
                    "width": "29%"
                },
                "name": "MyButton15"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf073@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Campañas",
                    "width": "29%"
                },
                "name": "MyButton16"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf0ae@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Tareas",
                    "width": "29%"
                },
                "name": "MyButton17"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf0c0@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Personal",
                    "width": "29%"
                },
                "name": "MyButton18"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf198@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Rubros Insumos",
                    "width": "29%"
                },
                "name": "MyButton19"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf043@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Insumos",
                    "width": "29%"
                },
                "name": "MyButton20"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf0d1@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Maquinaria",
                    "width": "29%"
                },
                "name": "MyButton23"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf0ad@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Contratista",
                    "width": "29%"
                },
                "name": "MyButton24"
            },
            {
                "type": "Ext.button.Button",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "allowDepress": false,
                    "arrowVisible": false,
                    "flex": 1,
                    "glyph": "xf18c@FontAwesome",
                    "height": "20%",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 2% 2% 2%;",
                        "background-color: #424242;"
                    ],
                    "text": "Deposito",
                    "width": "29%"
                },
                "name": "MyButton21"
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {},
    "boundModels": {},
    "viewController": {
        "xdsVersion": "3.5.0",
        "frameworkVersion": "ext60",
        "internals": {
            "type": "Ext.app.ViewController",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "designer|userAlias": "menutablas",
                "designer|userClassName": "menuTablasViewController"
            }
        },
        "linkedNodes": {},
        "boundStores": {},
        "boundModels": {}
    },
    "viewModel": {
        "xdsVersion": "3.5.0",
        "frameworkVersion": "ext60",
        "internals": {
            "type": "Ext.app.ViewModel",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "designer|userAlias": "menutablas",
                "designer|userClassName": "menuTablasViewModel"
            }
        },
        "linkedNodes": {},
        "boundStores": {},
        "boundModels": {}
    }
}