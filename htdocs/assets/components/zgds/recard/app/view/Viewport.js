Ext.define( 'RCard.view.Viewport', {
	extend: 'Ext.container.Viewport',

	requires:
		[
		'RCard.view.CardsList'
		],

	layout: 'fit',

	items:
		{
		layout:
			{
			type: 'vbox',
			align: 'stretch',
			},
		items:
			[
			{
			xtype: 'cardslist',
			//xtype: 'panel',
			flex: 1,
			title: 'List card',
			split: true,
			},
			{
			xtype: 'panel',
			height: 300,
			title: 'Edit card'
			}
			]
		}
	});

