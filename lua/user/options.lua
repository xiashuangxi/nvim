local options = {
  cmdheight = 2, 
  laststatus = 3,
  completeopt = { 'menuone', 'noselect' }, 
  conceallevel = 0,
  fileencoding = 'utf-8',
  hlsearch = true, 
  ignorecase = true, 
  mouse = 'a', 
  pumheight = 10,
  showmode = false, 
  smartcase = true,
  smartindent = true,
  splitbelow = true, 
  splitright = true, 
  swapfile = false,
  timeoutlen = 140,
  undofile = true,
  updatetime = 300,
  writebackup = false, 
  expandtab = false,
  shiftwidth = 4, 
  cursorline = true, 
  cursorcolumn = true,
  number = true, 
  relativenumber = true,
  numberwidth = 4, 
  wrap = false,
  scrolloff = 3, 
  sidescrolloff = 3,
  colorcolumn='70',
  -- guifont = 'Powerline Consolas:h9.5', 
  -- guifont = 'agave Nerd Font:h9.5',  --Lucida Console
  -- guifont = 'Fixedsys Excelsior:h9',
  guifont = 'Cascadia Mono:h9.7',
  -- guifont = 'Zpix:h9.7',
  autoread = true,
  autowrite = true,
}

vim.opt.shortmess:append 'c'
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- autoread
vim.cmd [[au FocusGained * :checktime]]
vim.cmd 'set whichwrap+=<,>,[,],h,l'
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]

-- cmdline
function set_cmd_height()
  vim.cmd([[set cmdheight=1]])
end
vim.defer_fn(set_cmd_height, 1500)
