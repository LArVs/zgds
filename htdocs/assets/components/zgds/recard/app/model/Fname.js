Ext.define( 'RCard.model.Fname', {
	extend: 'Ext.data.Model',
	fields: [
		{ name: 'id',     type: 'int'    },
		{ name: 'name',  type: 'string' },
	],
	hasMany: 'Card',
});

