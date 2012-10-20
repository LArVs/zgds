Ext.define( 'RCard.view.EditCard', {
	extend: 'Ext.form.Panel',
	collapsible:true,
	bodyPadding: 5,
	alias: 'widget.cardedit',
	waitMsgTarget: true,

	fieldDefaults:
		{
		labelAlign: 'right',
		labelWidth: 100,
		msgTarget: 'side'
		},

	items: [{
		xtype: 'tabpanel',
		closable: false,
		//disabled: true,
		defaults: {
			xtype: 'textfield',
			width: 300,
		},
		items: [
			{
			title: 'Первичные данные',
			items: [
				{
				fieldLabel: 'Номер',
				name: 'id',
				xtype: 'numberfield',
				editable: false,
				hideTrigger: true,
				//disabled: true,
				},
				{
				fieldLabel: 'эпид-номер',
				name: 'eid',
				xtype: 'numberfield',
				editable: false,
				hideTrigger: true,
				//disabled: true,
				},
				{
				//allowBlank: false,
				fieldLabel: 'Фамилия',
				emptyText: 'Фамилия',
				name: 'fname'
				},
				{
				//allowBlank: false,
				fieldLabel: 'Имя',
				emptyText: 'Имя',
				name: 'lname'
				},
				{
				xtype: 'datefield',
				format: 'd-m-Y',
				fieldLabel: 'Дата рождения',
				name: 'datetime_of_registration',
				//allowBlank: false,
				//maxValue: new Date()
				},
			],
			},
			{
			title: 'Госпитализация',
			items: [
				{
				//allowBlank: false,
				fieldLabel: 'Фамилия',
				emptyText: 'Фамилия',
				name: 'fname'
				},
				{
				xtype: 'datefield',
				format: 'd-m-Y',
				fieldLabel: 'Дата рождения',
				name: 'date_of_reference_patient',
				//allowBlank: false,
				//maxValue: new Date()
				},
			],
			},
		],
	}],

	dockedItems: [{
		xtype: 'toolbar',
		dock: 'bottom',
		ui: 'footer',
		items: [
			{
			text: 'Редактировать',
			id: 'editCardEdit',
			},
			{
			text: 'Сохранить',
			id: 'editCardSave',
			//disabled: true,
			},
			{
			text: 'Отмена',
			id: 'editCardCancel',
			//disabled: true,
			},
			{ xtype: 'tbfill' },
			{
			text: 'Новая карточка',
			id: 'addCard',
			},
		]
	}],

});


