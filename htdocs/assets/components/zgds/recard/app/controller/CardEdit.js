Ext.define( 'RCard.controller.CardEdit',
	{
	extend: 'Ext.app.Controller',
	models: [ 'Card',     ],
	stores: [ 'Cards'     ],
	views:  [ 'CardsList', 'EditCard' ],
	refs: [
		{
		selector: 'viewport cardedit',
		ref: 'cardEdit',
		},
		],
	init: function()
		{
		this.control({
			'#addCard':        { click: this.onCardAdd, },
			'#editCardEdit':   { click: this.onCardEdit, },
			'#editCardSave':   { click: this.onCardSave, },
			'#editCardCancel': { click: this.onCardCancel, },
			//'cardslist':
				//{
				//selectonchange: this.onCardSelect,
				//},
			});
		this.application.on({
			cardread: this.onCardRead,
			cardedit: this.onCardEdit,
			cardsave: this.onCardSave,
			scope: this,
			});
		},
	onCardAdd: function( model, record, index, object )
		{
		console.log(
			'add card: new'
			);
		var cardEdit = this.getCardEdit();
		cardEdit.loadRecord( record );
		},
	onCardRead: function( model, record, index, object )
		{
		console.log(
			'read card: '
			+ '	   id: ' + record.data.id + '\n'
			+ '	   fname: ' + record.data.fname + '\n'
			+ '	   lname: ' + record.data.lname + '\n'
			);
		var cardEdit = this.getCardEdit();
		cardEdit.loadRecord( record );
		},
	onCardEdit: function()
		{
		var cardEdit = this.getCardEdit();
		var record = cardEdit.getRecord();
		record.beginEdit();
		//var disabledFields = cardEdit.query("{isDisabled()}");
		console.log(
			'edit card: '
			+ '	   id: ' + record.data.id + '\n'
			+ '	   fname: ' + record.data.fname + '\n'
			+ '	   lname: ' + record.data.lname + '\n'
			);
		},
	onCardSave: function( button, e, options )
		{
		var cardEdit = this.getCardEdit();
		var form = cardEdit.getForm();
			var record = form.getRecord();
				var date_org = record.data.dor;
		record.endEdit();
		form.updateRecord();
		var store = this.getCardsStore();
		store.sync();
		console.log(
			'save card: '
			  + '	      id: ' + record.data.id    + '\n'
			  + '	   fname: ' + record.data.fname + '\n'
			  + '	   lname: ' + record.data.lname + '\n'
			  + '	    date: ' + record.data.dor   + '\n'
			  + '	old date: ' + date_org          + '\n'
			);
		this.onCardSaved();
		},
	onCardCancel: function( button, e, options )
		{
		var cardEdit = this.getCardEdit();
		var form = cardEdit.getForm();
			var record = form.getRecord();
				var date_org = record.data.dor;
		record.cancelEdit();
		cardEdit.loadRecord( record );
		console.log(
			'cancel edit card: '
			  + '	      id: ' + record.data.id    + '\n'
			  + '	   fname: ' + record.data.fname + '\n'
			  + '	    date: ' + record.data.dor   + '\n'
			  + '	old date: ' + date_org          + '\n'
			);
		},
	onCardSaved: function()
		{
		this.application.fireEvent( 'cardsaved' );
		},
	});

