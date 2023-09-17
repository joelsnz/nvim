return {
	"mfussenegger/nvim-dap",
	config = function()
		local keymap = vim.keymap --> for conciseness

		keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Set a breakpointSet a breakpoint" })
	end,
}
