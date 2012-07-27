Ext.define( 'RCard.store.Cards', {
	extend:   'Ext.data.Store',
	model:    'RCard.model.Card',
	autoLoad: true,
	proxy:
		{
		type: 'ajax',
		url: 'data/cards.json',
		reader:
			{
			type: 'json',
			root: 'results'
			}
		}
	});

