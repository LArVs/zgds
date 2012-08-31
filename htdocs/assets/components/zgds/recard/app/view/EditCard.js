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
		defaultType: 'textfield',
		defaults: { width: 300 },
		items:
			[
				{
				fieldLabel: 'ID',
				name: 'id',
				xtype: 'numberfield',
				disabled: true,
				},
				{
				fieldLabel: 'Номер',
				name: 'number',
				xtype: 'numberfield',
				disabled: true,
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
				fieldLabel: 'Дата рождения',
				name: 'dor',
				//allowBlank: false,
				maxValue: new Date()
				}
			]
		}],

	buttons:
		[
		{
		text: 'Сбросить',
		scope: this,
		handler: this.onReset,
		//handler: function()
			//{
			//formPanel.getForm().reset();
			//formPanel.getForm().load({
				////url: 'xml-form-data.xml',
				//waitMsg: 'Loading...'
			//});
			//}
		},
		{
		text: 'Загрузить',
		scope: this,
		//handler: function(){
			//formPanel.getForm().load({
				////url: 'xml-form-data.xml',
				//waitMsg: 'Loading...'
			//});
		//}
		},
		{
		text: 'Сохранить',
		scope: this,
		disabled: true,
		formBind: true,
		handler: this.onSave,
		//handler: function(){
			//this.up('form').getForm().submit({
				////url: 'xml-form-errors.xml',
				//submitEmptyText: false,
				//waitMsg: 'Saving Data...'
			//});
		//}
		}
		],

	onReset: function()
		{
		this.getForm().loadRecord( this.activeRecord );
		},

	onSave: function()
		{
		this.getForm().updateRecord( this.activeRecord );
		},

	//, dockedItems: [{
		//xtype: 'toolbar',
		//dock: 'bottom',
		//ui: 'footer',
		//items: ['->',
			//{
				//iconCls: 'icon-save',
				//itemId: 'save',
				//text: 'Save',
				//disabled: true,
				//scope: this,
				////handler: this.onSave
			//}, {
				//iconCls: 'icon-user-add',
				//text: 'Create',
				//scope: this,
				////handler: this.onCreate
			//}, {
				//iconCls: 'icon-reset',
				//text: 'Reset',
				//scope: this,
				////handler: this.onReset
			//}]
	//}]

	});


