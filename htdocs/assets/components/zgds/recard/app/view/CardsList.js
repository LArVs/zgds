Ext.define( 'RCard.view.CardsList', {
	extend: 'Ext.grid.Panel',
	alias: 'widget.cardslist',
	store: 'Cards',
	columns:
		[
		{ text: 'ID',    dataIndex: 'id' },
		{ text: 'Номер', dataIndex: 'number', sortable: true },
		{ text: 'ФИО',   dataIndex: 'name', flex: 1 },
		{ text: 'Дата',  dataIndex: 'date' },
		]
	});

