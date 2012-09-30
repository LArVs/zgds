Ext.define( 'RCard.store.Cards', {
	extend:   'Ext.data.Store',
	model:    'RCard.model.Card',
	//autoLoad: true,

	//buffered: true,
	//leadingBufferZone: 300,
	//pageSize: 100,

	proxy:
		{
		type: 'ajax',
		api:
			{
			read:    'data/api.json?action=card/read',
			create:  'data/api.json?action=card/create',
			update:  'data/api.json?action=card/update',
			destroy: 'data/api.json?action=card/destroy',
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

