/*
 * File: app/view/maquinariasGrid.js
 *
 * This file was generated by Sencha Architect
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Ext JS 6.0.x library, under independent license.
 * License of Sencha Architect does not include license for Ext JS 6.0.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('MyApp.view.maquinariasGrid', {
    extend: 'Ext.container.Container',
    alias: 'widget.maquinariasgrid',

    requires: [
        'MyApp.view.establecimientosGridViewModel8',
        'Ext.grid.Panel',
        'Ext.view.Table',
        'Ext.grid.column.Number'
    ],

    viewModel: {
        type: 'maquinariasgrid'
    },
    height: 250,
    itemId: 'maquinariasGrid',
    width: 400,
    layout: 'border',

    items: [
        {
            xtype: 'gridpanel',
            region: 'center',
            split: false,
            splitterResize: false,
            dock: 'top',
            id: 'maquinariasGrid',
            itemId: 'maquinariasGrid',
            rtl: false,
            style: 'padding: 5px 5px 5px 5px;\ncolor: #424242;',
            bodyStyle: 'color: #424242;',
            glyph: 'xf0d1@FontAwesome',
            iconAlign: 'left',
            title: 'Maquinaria',
            titleAlign: 'left',
            split: true,
            autoLoad: true,
            forceFit: true,
            store: 'Maquinaria',
            columns: [
                {
                    xtype: 'numbercolumn',
                    dataIndex: 'codigo',
                    text: 'Codigo',
                    format: '00'
                },
                {
                    xtype: 'gridcolumn',
                    dataIndex: 'nombre',
                    text: 'Nombre'
                }
            ]
        }
    ]

});