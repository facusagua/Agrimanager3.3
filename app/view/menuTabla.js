/*
 * File: app/view/menuTabla.js
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

Ext.define('MyApp.view.menuTabla', {
    extend: 'Ext.container.Container',
    alias: 'widget.menuTabla',

    requires: [
        'MyApp.view.menuPrincipalViewModel1',
        'Ext.button.Button'
    ],

    viewModel: {
        type: 'menutabla'
    },
    dock: 'top',
    flex: 1,
    itemId: 'menuTabla',
    scrollable: 'true',
    style: 'background-color: #D8D8D8;',

    items: [
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'establecimientosBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf19c@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'establecimientosGrid',
            scale: 'medium',
            text: 'Establecimientos'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'lotesBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf200@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'lotesGrid',
            scale: 'medium',
            text: 'Lotes'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'actividadesBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf06c@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'actividadesGrid',
            scale: 'medium',
            text: 'Actividades'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'campaniasBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf073@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'campaniasGrid',
            scale: 'medium',
            text: 'Campañas'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'tareasBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf0ae@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'tareasGrid',
            scale: 'medium',
            text: 'Tareas'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'personalBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf0c0@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'personalGrid',
            scale: 'medium',
            text: 'Personal'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'rubroinsumosBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf198@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'rubroinsumosGrid',
            scale: 'medium',
            text: 'Rubro Insumos'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'insumosBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf043@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'insumosGrid',
            scale: 'medium',
            text: 'Insumos'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'maquinariasBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf085@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'maquinariasGrid',
            scale: 'medium',
            text: 'Maquinaria'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            itemId: 'contratistasBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf0ad@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'contratistasGrid',
            scale: 'medium',
            text: 'Contratistas'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'depositosBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf18c@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'depositosGrid',
            scale: 'medium',
            text: 'Deposito'
        },
        {
            xtype: 'button',
            flex: 0,
            height: '25%',
            id: 'actividadeslotesBtn',
            style: 'margin: 2% 2% 2% 2%;\nbackground-color: #424242;',
            width: '29%',
            allowDepress: false,
            arrowVisible: false,
            glyph: 'xf196@FontAwesome',
            icon: '',
            iconAlign: 'top',
            iconCls: '',
            params: 'actividadeslotesGrid',
            scale: 'medium',
            text: 'Actividad Lotes'
        }
    ]

});