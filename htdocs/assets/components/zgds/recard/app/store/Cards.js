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
		url: 'data/cards.json',
		reader:
			{
			type: 'json',
			root: 'results',
			},
		writer:
			{
			type: 'json',
			root: 'results',
			},
		}
	});

