Ext.define( 'RCard.store.Fnames', {
	extend:   'Ext.data.Store',
	model:    'RCard.model.Fname',
	proxy:
		{
		type: 'ajax',
		api:
			{
			read:    'data/api.json?action=fname/read',
			create:  'data/api.json?action=fname/create',
			update:  'data/api.json?action=fname/update',
			destroy: 'data/api.json?action=fname/destroy',
			},
		//url: 'data/cards.json',
		reader:
			{
			type: 'json',
			root: 'results',
			},
		writer:
			{
			type: 'json',
			root: 'results',
			writeAllFields: false,
			},
		listeners: {
			exception: function(proxy, response, operation){
				Ext.MessageBox.show({
					title: 'REMOTE EXCEPTION',
					msg: operation.getError(),
					icon: Ext.MessageBox.ERROR,
					buttons: Ext.Msg.OK
				});
			}},
		}
	});

