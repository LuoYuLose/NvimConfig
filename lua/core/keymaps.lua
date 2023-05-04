vim.g.mapleader = ","

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- MarkDown相关
keymap.set("i", "<leader>;", "$$$$<ESC>hi")
keymap.set("i", "<leader>'", "\\begin{cases}<Enter><Enter>\\end{cases}<ESC>ki")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>j", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>k", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- MarkDown预览
keymap.set("n", "<C-N>", ":MarkdownPreview")
keymap.set("n", "<C-M>", ":MarkdownPreviewStop")
