/*
 * File: app/model/Lotes_coordenadas.js
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

Ext.define('MyApp.model.Lotes_coordenadas', {
    extend: 'Ext.data.Model',

    requires: [
        'Ext.data.field.String',
        'Ext.data.field.Number'
    ],

    fields: [
        {
            type: 'string',
            name: 'estado_registro'
        },
        {
            type: 'int',
            name: 'id'
        },
        {
            type: 'int',
            name: 'uid'
        },
        {
            type: 'int',
            name: 'id_lote'
        },
        {
            type: 'int',
            name: 'cod_lote'
        },
        {
            type: 'int',
            name: 'cod_establecimiento'
        },
        {
            type: 'float',
            name: 'latitud'
        },
        {
            type: 'float',
            name: 'longitud'
        },
        {
            type: 'int',
            name: 'orden'
        }
    ]
});