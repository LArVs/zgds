Ext.define( 'RCard.model.Card', {
	extend: 'Ext.data.Model',
	fields:
		[
		{ name: 'id',     type: 'int'    },
		{ name: 'eid',     type: 'int'    },
		{ name: 'fname_id', type: 'int'    },
		{ name: 'fname',  type: 'string' },
		{ name: 'lname',  type: 'string' },
		{ name: 'pname',  type: 'string' },
		{ name: 'dor',    type: 'date'   },
		],
	});

