-- arduino-language-server wrapper --

return {
	"edKotinsky/Arduino.nvim",

	dependencies = { "neovim/nvim-lspconfig" },

	config = function()
		local arduino = require("arduino")

		arduino.setup({
			default_fqbn = "arduino:renesas_uno:unor4wifi",
			clangd = require("mason-core.path").bin_prefix("clangd"),
			arduino = "/usr/bin/arduino-cli",
			arduino_config_dir = "~/.arduino15",
		})

		require("lspconfig")["arduino_language_server"].setup({
			on_new_config = arduino.on_new_config,
		})
	end,
}
