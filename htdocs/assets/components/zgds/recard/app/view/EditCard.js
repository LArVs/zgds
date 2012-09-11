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

	items:
		[{
		xtype: 'fieldset',
		title: 'Карточка',
		disabled: true,
		defaults:
			{
			xtype: 'textfield',
			width: 300,
			},
		items:
			[
				{
				fieldLabel: 'ID',
				name: 'id',
				xtype: 'numberfield',
				hideTrigger: true,
				//disabled: true,
				},
				{
				fieldLabel: 'Номер',
				name: 'number',
				xtype: 'numberfield',
				hideTrigger: true,
				//disabled: true,
				},
				{
				allowBlank: false,
				fieldLabel: 'Фамилия',
				emptyText: 'Фамилия',
				name: 'fname'
				},
				{
				allowBlank: false,
				fieldLabel: 'Имя',
				emptyText: 'Имя',
				name: 'lname'
				},
				{
				fieldLabel: 'Отчество',
				name: 'pname'
				},
				{
				xtype: 'datefield',
				format: 'd-m-Y',
				fieldLabel: 'Дата рождения',
				name: 'dor',
				//allowBlank: false,
				//maxValue: new Date()
				},
			],
		}],

	dockedItems: [{
		xtype: 'toolbar',
		dock: 'top',
		ui: 'footer',
		items: [
			{
			text: 'Редактировать',
			id: 'editCardEdit',
			},
			{
			text: 'Сохранить',
			id: 'editCardSave',
			disabled: true,
			},
			{
			text: 'Отмена',
			id: 'editCardCancel',
			disabled: true,
			},
			{ xtype: 'tbfill' },
			{
			text: 'Новая карточка',
			},
			]
		}],

	});


