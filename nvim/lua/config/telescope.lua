local M = {}

function M.setup()
	local whichkey = require("which-key")

	local opts = {
		prefix = "<leader>"
	}

	local mappings = {
		f = {
			name = "Telescope",
			a = {"<cmd>Telescope<cr>", "All Pickers"},
			f = {"<cmd>Telescope find_files<cr>", "Find Files"},
			g = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
			b = {"<cmd>Telescope buffers<cr>", "Buffers"},
			h = {"<cmd>Telescope help_tags<cr>", "Help Tags"},
			r = {"<cmd>Telescope lsp_references<cr>", "Find References"},
			s = {"<cmd>Telescope grep_string<cr>", "Find String"},
			d = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
		}
	}

	whichkey.register(mappings, opts)

end

return M
