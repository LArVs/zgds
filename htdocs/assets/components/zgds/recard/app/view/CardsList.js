Ext.define( 'RCard.view.CardsList', {
	extend: 'Ext.grid.Panel',
	collapsible:true,
	bodyPadding: 5,
	alias: 'widget.cardslist',
	store: 'Cards',
	layout: {
		type: 'hbox',
		align: 'stretch'
	},
	columns:
		[
		{ text: 'ID',       dataIndex: 'id' },
		{ text: 'Номер',    dataIndex: 'number', sortable: true },
		{ text: 'Фамилия',  dataIndex: 'fname',  flex:     1    },
		{ text: 'Имя',      dataIndex: 'lname',  flex:     1    },
		{ text: 'Отчество', dataIndex: 'pname',  flex:     1    },
		{ text: 'Дата',     dataIndex: 'dor', renderer : Ext.util.Format.dateRenderer('Y-m-d'), },
		]
	});

