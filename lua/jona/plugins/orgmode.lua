return {
	'nvim-orgmode/orgmode',
	ft = {'org'},
	config = function()
		require('orgmode').setup_ts_grammar()

		require('orgmode').setup({
			org_agenda_files = '~/orgfiles/**/*',
			org_default_notes_file = '~/orgfiles/refile.org',
			org_todo_keywords = {
				'TODO(t)', 'INPROGRESS(i)', 'NEXT(n)', 'WAITING(w)', 'CANCELLED(c)', 'DONE(d)', 	}
		})
	end
}
