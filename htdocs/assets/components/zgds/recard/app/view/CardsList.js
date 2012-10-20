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
	columns:
		[
		{ text: 'номер',       dataIndex: 'id', sortable: true },
		{ text: 'эпид-номер',       dataIndex: 'eid', sortable: true },
		{ text: 'Фамилия',  dataIndex: 'fname',  flex:     1    },
		//{ text: 'Фамилия (номер)',  dataIndex: 'fname_id' },
		{ text: 'Имя',      dataIndex: 'lname',  flex:     1    },
		//{ text: 'Имя (номер)',  dataIndex: 'lname_id' },
		{ text: 'Отчество', dataIndex: 'pname',  flex:     1    },
		//{ text: 'Отчество (номер)',  dataIndex: 'pname_id' },
		//{ text: 'Дата',     dataIndex: 'dor', renderer : Ext.util.Format.dateRenderer('d-m-Y'), },
		{ text: 'Дата',     dataIndex: 'dor', renderer : Ext.util.Format.dateRenderer('d-m-Y'), },
		]
	});

