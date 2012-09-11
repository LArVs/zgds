Ext.Loader.setConfig({
	enabled: true,
	disableCaching: false,
	paths:
		{
		UsersApp: 'app',
		//Ext: 'extjs/v.4.1.0/src'
		}
	});

Ext.application({
	name: 'RCard',
	autoCreateViewport: true,
	//models:      [ 'Card',     ],
	//stores:      [ 'Cards',    ],
	controllers: [ 'CardsList', 'CardEdit', ],
	launch: function()
		{
		},
	});

