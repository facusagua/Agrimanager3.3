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
            "designer|userAlias": "menuprincipal",
            "designer|userClassName": "menuPrincipal",
            "dock": "top",
            "itemId": "menuTablas",
            "scrollable": "true",
            "style": [
                "background-color: #D8D8D8;",
                ""
            ]
        },
        "name": "menuTablas1",
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
                        "margin: 2% 10% 2% 10%;",
                        "background-color: #424242;"
                    ],
                    "text": "Alta de Insumos",
                    "width": "80%"
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
                                "            "
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
                    "glyph": "xf19c@FontAwesome",
                    "height": "20%",
                    "icon": "",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 10% 2% 10%;",
                        "background-color: #424242;"
                    ],
                    "text": "Producción",
                    "width": "80%"
                },
                "name": "MyButton",
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
                                "          ",
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
                    "border": null,
                    "flex": 1,
                    "glyph": "xf19c@FontAwesome",
                    "height": "20%",
                    "icon": "",
                    "iconAlign": "top",
                    "iconCls": "",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 10% 2% 10%;",
                        "background-color: #424242;"
                    ],
                    "text": "Consultas",
                    "width": "80%"
                },
                "name": "MyButton4",
                "cn": [
                    {
                        "type": "basiceventbinding",
                        "reference": {
                            "name": "listeners",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "fn": "onButtonClick11",
                            "implHandler": [
                                "          "
                            ],
                            "name": "click",
                            "scope": "me"
                        },
                        "name": "onButtonClick11"
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
                    "glyph": "xf19c@FontAwesome",
                    "height": "20%",
                    "icon": "",
                    "iconAlign": "top",
                    "iconCls": "",
                    "itemId": "menuPrincipal",
                    "scale": "medium",
                    "style": [
                        "margin: 2% 10% 2% 10%;",
                        "background-color: #424242;"
                    ],
                    "text": "Tablas",
                    "width": "80%"
                },
                "name": "MyButton5",
                "cn": [
                    {
                        "type": "basiceventbinding",
                        "reference": {
                            "name": "listeners",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "fn": "onButtonClick111",
                            "implHandler": [
                                "debugger;            ",
                                "var cmp = Ext.ComponentQuery.query(\"#menuTablas\")[0];",
                                "                if(!cmp){",
                                "                    var cmp = Ext.create('MyApp.view.menuTablas');",
                                "                    MyApp.main.add(cmp);",
                                "             }",
                                "             MyApp.main.getLayout().setActiveItem(cmp);",
                                ""
                            ],
                            "name": "click",
                            "scope": "me"
                        },
                        "name": "onButtonClick111"
                    }
                ]
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
                "designer|userAlias": "menuprincipal",
                "designer|userClassName": "menuTablasViewController1"
            },
            "name": "menuTablasViewController1"
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
                "designer|userAlias": "menuprincipal",
                "designer|userClassName": "menuTablasViewModel1"
            },
            "name": "menuTablasViewModel1"
        },
        "linkedNodes": {},
        "boundStores": {},
        "boundModels": {}
    }
}