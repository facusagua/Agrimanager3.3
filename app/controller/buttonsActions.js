/*
 * File: app/controller/buttonsActions.js
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

Ext.define('MyApp.controller.buttonsActions', {
    extend: 'Ext.app.Controller',

    stores: [
        'lotesStore',
        'establecimientosStore'
    ],

    init: function(application) {
        this.control({
            'button#returnView': {
                click: this.onClickReturn
            },
            'button#establecimientosBtn': {
                click: this.openGridView
            },
            'button#lotesBtn': {
                click: this.openGridView
            },
            'button#actividadesBtn': {
                click: this.openGridView
            },
            'button#campaniasBtn': {
                click: this.openGridView
            },
            'button#tareasBtn': {
                click: this.openGridView
            },
            'button#personalBtn': {
                click: this.openGridView
            },
            'button#rubroinsumosBtn': {
                click: this.openGridView
            },
            'button#insumosBtn': {
                click: this.openGridView
            },
            'button#maquinariasBtn': {
                click: this.openGridView
            },
            'button#contratistasBtn': {
                click: this.openGridView
            },
            'button#depositosBtn': {
                click: this.openGridView
            },
            'button#actividadeslotesBtn': {
                click: this.openGridView
            },
            'button#tablasBtn': {
                click: this.openGridView
            },
            'button#laboresBtn': {
                click: this.openGridView
            },
            'button#aceptaInsumoLab': {
                click: this.onClickAcceptIns
            },
            'button#aceptaPerLabBtn': {
                click: this.onClickAcceptPers
            },
            'button#aceptaMaqLabBtn': {
                click: this.onClickAcceptMaq
            },
            'button#sincBtn': {
                click: this.openGridView
            },
            'button#configBtn': {
                click: this.openGridView
            },
            'button#aceptarConexionbtn': {
                click: this.OnClickGuardaConfig
            }
        });
    },

    onClickReturn: function() {
        if (MyApp.main.getLayout().getLayoutItems().length > 1){
                            var cardToRemove = MyApp.main.getLayout().activeItem;
                            MyApp.main.getLayout().prev();
                            MyApp.main.remove(cardToRemove);
                            console.log(MyApp.main.getLayout().getLayoutItems());
                        }
        if (MyApp.main.getLayout().getLayoutItems().length == 1){
                    var btn = Ext.ComponentQuery.query('#returnView')[0];
                    btn.hide();
        }
    },

    openGridView: function(component) {
        debugger;
        var me = component;
        var cmp = Ext.ComponentQuery.query(me.params)[0];
        if(!cmp){
            var cmp = Ext.create("MyApp.view."+me.params);
            MyApp.main.add(cmp);
        }
        MyApp.main.getLayout().setActiveItem(cmp);
        var btn = Ext.ComponentQuery.query('#returnView')[0];
        btn.show();
    },

    onClickAcceptIns: function() {
        var form_panel = Ext.ComponentQuery.query('#formpanel')[0];
        var store = Ext.getStore('Labores_insumos');
        var insDescrip = Ext.ComponentQuery.query('#insDescrip')[0];
        var insCant = Ext.ComponentQuery.query('#insCant')[0];
        var insDeposito = Ext.ComponentQuery.query('#insDeposito')[0];
        var newrecord = Ext.create('MyApp.model.Labores_insumos');
        f_crud.secuencia(function(rtn){
            if (rtn !== -1){
                var id_labores  = 1; //form_panel.down('#form').getRecord().get('id');
                newrecord.set('id',rtn);
                newrecord.set('id_labores', id_labores);
                newrecord.set('tipo','T');
                newrecord.set('cod_insumo',insDescrip.value);
                newrecord.set('cod_deposito',insDeposito.value);
                newrecord.set('cantidad',insCant.value);
                store.add(newrecord);
            }
            var panel = Ext.ComponentQuery.query('#nuevoInsumoPnl')[0];
            panel.collapse();
            insDescrip.reset();
            insCant.reset();
            insDeposito.reset();
        });
    },

    onClickAcceptPers: function() {
        var store = Ext.getStore('Labores_personal');
        var personalPer = Ext.ComponentQuery.query('#personalPer')[0];
        var cantidadPer = Ext.ComponentQuery.query('#cantidadPer')[0];
        var precioPer = Ext.ComponentQuery.query('#precioPer')[0];
        var importePer = Ext.ComponentQuery.query('#importePer')[0];
        var newrecord = Ext.create('MyApp.model.Labores_personal');
        f_crud.secuencia(function(rtn){
            if (rtn !== -1){
                var id_labores  = 1; //form_panel.down('#form').getRecord().get('id');
                newrecord.set('id',rtn);
                newrecord.set('id_labores', id_labores);
                newrecord.set('cod_empleado',personalPer.value);
                newrecord.set('cantidad',cantidadPer.value);
                newrecord.set('precio',precioPer.value);
                newrecord.set('importe',importePer.value);
                store.add(newrecord);
            }
            var panel = Ext.ComponentQuery.query('#nuevoPersonaPnl')[0];
            panel.collapse();
            personalPer.reset();
            cantidadPer.reset();
            precioPer.reset();
            importePer.reset();
        });
    },

    onClickAcceptMaq: function() {
        var store = Ext.getStore('Labores_maquinaria');
        var maqCodigo = Ext.ComponentQuery.query('#maqCodigo')[0];
        var maqCantidad = Ext.ComponentQuery.query('#maqCantidad')[0];
        var newrecord = Ext.create('MyApp.model.Labores_maquinaria');
        f_crud.secuencia(function(rtn){
            if (rtn !== -1){
                var id_labores  = 1; //form_panel.down('#form').getRecord().get('id');
                newrecord.set('id',rtn);
                newrecord.set('id_labores', id_labores);
                newrecord.set('cod_maquina',maqCodigo.value);
                newrecord.set('cantidad',maqCantidad.value);
                store.add(newrecord);
            }
            var panel = Ext.ComponentQuery.query('#nuevoMaqPnl')[0];
            panel.collapse();
            maqCodigo.reset();
            maqCantidad.reset();
        });
    },

    OnClickGuardaConfig: function() {
        var usuarioImp = Ext.ComponentQuery.query("#usuarioImp")[0];
        var claveImp = Ext.ComponentQuery.query("#claveImp")[0];
        var baseImp = Ext.ComponentQuery.query("#baseImp")[0];
        var servidorImp = Ext.ComponentQuery.query("#servidorImp")[0];
        MyApp.usuario       = usuarioImp.getValue();
        MyApp.clave         = claveImp.getValue();
        MyApp.base_nombre   = baseImp.getValue();
        MyApp.base_url      = servidorImp.getValue();

        window.localStorage.setItem("agrimanager_usuario",usuarioImp.getValue());
        window.localStorage.setItem("agrimanager_clave",claveImp.getValue());
        window.localStorage.setItem("agrimanager_base",baseImp.getValue());
        window.localStorage.setItem("agrimanager_servidor",servidorImp.getValue());
        this.onClickReturn();
    }

});
