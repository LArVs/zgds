Ext.define( 'RCard.controller.CardsList',
	{
	extend: 'Ext.app.Controller',
	models: [ 'Card', 'Fname' ],
	stores: [ 'Cards', 'Fnames' ],
	views:  [ 'CardsList', 'EditCard' ],
	refs: [
		{
		selector: 'viewport cardslist',
		ref: 'cardsList'
		},
		],
	init: function()
		{
		this.control({
			'cardslist':
				{
				//selectonchange: this.onCardEdit,
				select: this.onCardSelect,
				},
			});
		this.application.on({
			cardsaved: this.onCardSaved,
			scope: this,
			});
		},
	onLaunch: function()
		{
		// on start to do: load cards in store
		var storeCards = this.getCardsStore();
		storeCards.load({
			callback: this.onCardsListLoad,
			scope: this,
			});
		},
	onCardsListLoad: function()
		{
		console.log( 'onCardsListLoad: fired' );
		//var listCards = this.getCardsListView();
		var listCards = this.getCardsList();
		listCards.getSelectionModel().select( 0 );
		},
	onCardSelect: function( model, record, index, object )
		{
		console.log(
			'selected card: '
			+ '	index: ' + index + '\n'
			+ '	   id: ' + record.get( 'id' ) + '\n'
			+ '	   fname: ' + record.get( 'fname' ) + '\n'
			+ '	   lname: ' + record.data.lname + '\n'
			);
		// load card in edit form
		this.application.fireEvent( 'cardread', model, record, index, object );
		},
	onCardEdit: function( model, selection )
		{
		console.log( 'selected card id: ' + selection[ 0 ].data.id );
		// load card in edit form
		//this.application.fireEvent( 'cardedit', selection[ 0 ] );
		},
	onCardSaved: function( card )
		{
		// reload cards list
		this.onLaunch();
		},
	});

