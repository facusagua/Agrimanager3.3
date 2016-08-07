/*
 * File: app/view/actividadeslotesGrid.js
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

Ext.define('MyApp.view.actividadeslotesGrid', {
    extend: 'Ext.container.Container',
    alias: 'widget.actividadeslotesGrid',

    requires: [
        'MyApp.view.establecimientosGridViewModel11',
        'Ext.form.field.ComboBox',
        'Ext.grid.Panel',
        'Ext.view.Table',
        'Ext.grid.column.Column',
        'Ext.button.Button'
    ],

    viewModel: {
        type: 'actividadeslotesgrid'
    },
    height: 250,
    id: 'actividadeslotesGrid',
    itemId: 'actividadesGrid',
    scrollable: 'true',
    width: 400,

    layout: {
        type: 'vbox',
        align: 'stretch'
    },
    items: [
        {
            xtype: 'combobox',
            flex: 0,
            dock: 'top',
            height: 60,
            id: 'establecimientosCbo',
            itemId: 'establecimientosCbo',
            style: 'padding: 5px 5px 5px 5px;',
            fieldLabel: '',
            labelWidth: 130,
            editable: false,
            emptyText: 'Seleccione Establecimiento',
            displayField: 'nombre',
            queryMode: 'local',
            store: 'Establecimientos',
            valueField: 'codigo'
        },
        {
            xtype: 'combobox',
            flex: 0,
            disabled: true,
            height: 60,
            id: 'lotesCbo',
            itemId: 'lotesCbo',
            style: 'padding: 5px 5px 5px 5px;',
            fieldLabel: '',
            labelWidth: 130,
            editable: false,
            emptyText: 'Seleccione Lote',
            autoLoadOnValue: true,
            displayField: 'nombre',
            queryMode: 'local',
            valueField: 'codigo'
        },
        {
            xtype: 'gridpanel',
            dock: 'top',
            itemId: 'actividadesGrid',
            rtl: false,
            scrollable: 'true',
            style: 'padding: 5px 5px 5px 5px;\ncolor: #424242;',
            bodyStyle: 'color: #424242;',
            glyph: 'xf196@FontAwesome',
            iconAlign: 'left',
            title: 'Actividades Lotes',
            titleAlign: 'left',
            split: true,
            autoLoad: true,
            bufferedRenderer: false,
            forceFit: true,
            store: 'Lotes_actividades',
            viewConfig: {
                border: 0,
                preserveScrollOnRefresh: true
            },
            columns: [
                {
                    xtype: 'gridcolumn',
                    id: 'Actividades',
                    itemId: 'Actividades',
                    scrollable: 'true',
                    dataIndex: 'nombre',
                    text: 'Actividades'
                }
            ]
        },
        {
            xtype: 'button',
            flex: 0,
            hidden: true,
            id: 'cargalaborBtn',
            itemId: 'cargalaborBtn',
            margin: '50px',
            glyph: 'xf234@FontAwesome',
            iconAlign: 'top',
            text: 'Cargar Labor'
        }
    ]

});