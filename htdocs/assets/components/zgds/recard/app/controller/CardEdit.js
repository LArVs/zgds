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
		//this.control({
			//'cardslist':
				//{
				//selectonchange: this.onCardSelect,
				//},
			//});
		this.application.on({
			cardedit: this.onCardEdit,
			scope: this,
			});
		},
	onCardEdit: function( model, record, index, object )
		{
		this._control =
			{
			model:  model,
			record: record,
			index:  index,
			object: object,
			};
		// start card edit
		//var cardEditView = this.getEditCardView();
		//cardEditView.getForm().loadRecord( record );
		var cardEdit = this.getCardEdit();
		cardEdit.activeRecord = this._control.record;
		cardEdit.loadRecord( cardEdit.activeRecord );
		},
	onCardSaved: function( model, selection )
		{
		this.application.fireEvent( 'cardsaved', selection[ 0 ] );
		},
	});

