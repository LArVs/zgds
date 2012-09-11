Ext.define( 'RCard.view.Viewport', {
	extend: 'Ext.container.Viewport',

	requires:
		[
		'RCard.view.CardsList',
		'RCard.view.EditCard',
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
			collapsible:true,
			flex: 1,
			title: 'Список катрочек',
			},
			{
			//xtype: 'panel',
			xtype: 'cardedit',
			collapsible:true,
			flex: 2,
			//height: 400,
			title: 'Карточка'
			}
			]
		}
	});

