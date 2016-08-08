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
            "designer|userAlias": "establecimientosgrid",
            "designer|userClassName": "establecimientosGrid",
            "height": 250,
            "layout": "border",
            "width": 400
        },
        "name": "MyContainer1",
        "cn": [
            {
                "type": "Ext.grid.Panel",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "bodyStyle": [
                        "color: #424242;"
                    ],
                    "dock": "top",
                    "forceFit": true,
                    "glyph": "xf19c@FontAwesome",
                    "iconAlign": "top",
                    "layout|region": "center",
                    "layout|split": false,
                    "layout|splitterResize": false,
                    "rtl": false,
                    "split": true,
                    "style": [
                        "padding: 10px 10px 10px 10px;",
                        "color: #424242;"
                    ],
                    "title": "Establecimientos",
                    "titleAlign": "center"
                },
                "name": "MyGridPanel",
                "cn": [
                    {
                        "type": "Ext.grid.column.Column",
                        "reference": {
                            "name": "columns",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "dataIndex": "string",
                            "text": "ID"
                        },
                        "name": "MyColumn"
                    },
                    {
                        "type": "Ext.grid.column.Number",
                        "reference": {
                            "name": "columns",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "dataIndex": "number",
                            "text": "NOMBRE"
                        },
                        "name": "MyNumberColumn"
                    },
                    {
                        "type": "Ext.view.Table",
                        "reference": {
                            "name": "viewConfig",
                            "type": "object"
                        },
                        "codeClass": null,
                        "name": "MyTable"
                    }
                ]
            },
            {
                "type": "Ext.toolbar.Toolbar",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "dock": "bottom",
                    "height": 50,
                    "layout|flex": 0,
                    "layout|region": "south",
                    "style": [
                        "background-color: #424242;"
                    ]
                },
                "name": "MyToolbar2",
                "cn": [
                    {
                        "type": "Ext.toolbar.Spacer",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "layout|flex": null,
                            "width": "43%"
                        },
                        "name": "MySpacer"
                    },
                    {
                        "type": "Ext.container.Container",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "container|align": "middle",
                            "dock": "top",
                            "height": "40px",
                            "layout": "hbox",
                            "layout|flex": null,
                            "width": "12%"
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
                                    "border": "0px",
                                    "disabled": true,
                                    "glyph": "xf055@FontAwesome",
                                    "height": "38px",
                                    "layout|flex": 1,
                                    "scale": "large",
                                    "style": [
                                        "background-color: #5FB404;"
                                    ],
                                    "text": "",
                                    "width": "12%"
                                },
                                "name": "MyButton26",
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
                                                "var cmp = Ext.ComponentQuery.query(\"#establecimientosForm\")[0];",
                                                "                if(!cmp){",
                                                "                    var cmp = Ext.create('MyApp.view.establecimientosForm');",
                                                "                    MyApp.main.add(cmp);",
                                                "             }",
                                                "             MyApp.main.getLayout().setActiveItem(cmp);"
                                            ],
                                            "name": "click",
                                            "scope": "me"
                                        },
                                        "name": "onButtonClick"
                                    }
                                ]
                            }
                        ]
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
                "designer|userAlias": "establecimientosgrid",
                "designer|userClassName": "establecimientosGridViewController"
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
                "designer|userAlias": "establecimientosgrid",
                "designer|userClassName": "establecimientosGridViewModel"
            }
        },
        "linkedNodes": {},
        "boundStores": {},
        "boundModels": {}
    }
}