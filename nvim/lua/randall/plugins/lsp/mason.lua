return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")
		--
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"awk_ls",
				"ansiblels",
				"arduino_language_server",
				"bashls",
				"clangd",
				"diagnosticls",
				"dockerls",
				"tsserver",
				"quick_lint_js",
				"jsonnet_ls",
				"jqls",
				"lua_ls",
				"markdown_oxide",
				"marksman",
				"prosemd_lsp",
				"intelephense",
				"pyright",
				"pylsp",
				"terraformls",
				"tflint",
				"lemminx",
				"yamlls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"shfmt",
				"tflint",
				"yamllint",
				"flake8",
				"ansible-lint",
				"shellcheck",
				"pylint",
			},
		})
	end,
}
