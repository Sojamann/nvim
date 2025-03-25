require "nvchad.mappings"

local map = vim.keymap.set

-- open oil
map("n", "<tab><tab>", "<CMD>Oil<CR>", { desc = "Opens filetree" })

-- Move selected lines up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- harpoon
local harpoon = require("harpoon")

map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-H>", function() harpoon:list():select(1) end, { desc = "Open harpooned file 1" })
map("n", "<C-J>", function() harpoon:list():select(2) end, { desc = "Open harpooned file 2" })
map("n", "<C-K>", function() harpoon:list():select(3) end, { desc = "Open harpooned file 3" })
map("n", "<C-L>", function() harpoon:list():select(4) end, { desc = "Open harpooned file 4" })

local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

map(
  "n",
  "<C-e>",
  function() toggle_telescope(harpoon:list()) end,
  { desc = "Open harpoon window" }
)

-- LEAP CONFIG

local leap = require("leap")
map({'n', 'x', 'o'}, 's', function() leap.leap({}) end)
map({'n', 'x', 'o'}, 'S', function() leap.leap({ backward = true }) end)

