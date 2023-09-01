local status_ok, nvimwindow = pcall(require, "nvim-window")
if not status_ok then
  return
end

nvimwindow.setup({
	normal_hl = 'BlackOnLightYellow',
 	hint_hl = 'Bold',
 	border = 'none'
})