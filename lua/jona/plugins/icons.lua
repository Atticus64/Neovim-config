return  {
	'kyazdani42/nvim-web-devicons', 

	config = function()
		require('nvim-web-devicons').set_icon {
			lpr = {
				icon = '',
				color = '#ff9e64',
				name = 'Lpr',
			},
			toml = {
				icon = '',
				color = '#29b8db',
			}
		}
	end

}
