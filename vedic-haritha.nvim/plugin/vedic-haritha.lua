if vim.g.loaded_vedic_haritha then
	return
end
vim.g.loaded_vedic_haritha = true

vim.api.nvim_create_user_command("VedicHaritha", function()
	require("vedic-haritha").load()
end, {})
