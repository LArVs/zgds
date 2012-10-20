Ext.define( 'RCard.view.CardsList', {
	extend: 'Ext.grid.Panel',
	alias: 'widget.cardslist',
	store: 'Cards',
	loadMask: true,

	collapsible:true,
	bodyPadding: 5,
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	columns: [
		{ text: 'номер',      dataIndex: 'id',    sortable: true, },
		{ text: 'эпид-номер', dataIndex: 'eid',   sortable: true, },
		{ text: 'фамилия',    dataIndex: 'fname', flex:     1,    },
		{ text: 'имя',        dataIndex: 'lname', flex:     1,    },
		{ text: 'дата регистрации', dataIndex: 'datetime_of_registration', /*renderer: Ext.util.Format.dateRenderer('d-m-Y'),*/ },
	],
	dockedItems: [
		{
		xtype: 'pagingtoolbar',
		store: 'Cards',
		dock: 'bottom',
		displayInfo: true,
		},
	],
});

