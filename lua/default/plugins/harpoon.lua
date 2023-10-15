local function setup()
    require("harpoon").setup({
        menu = {
            width = 60
        }
    })
end

return {
    "ThePrimeagen/harpoon",
    config = function()
        setup()

        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local term = require("harpoon.term")

        vim.keymap.set('n', '<m-a>', mark.add_file, { desc = "harpoon add file" })
        vim.keymap.set('n', '<m-e>', ui.toggle_quick_menu, { desc = "harpoon toggle quick menu" })

        vim.keymap.set('n', '<m-j>', function() ui.nav_file(1) end, { desc = "harpoon 1st file" })
        vim.keymap.set('n', '<m-k>', function() ui.nav_file(2) end, { desc = "harpoon 2nd file" })
        vim.keymap.set('n', '<m-l>', function() ui.nav_file(3) end, { desc = "harpoon 3th file" })
        vim.keymap.set('n', '<m-;>', function() ui.nav_file(4) end, { desc = "harpoon 4th file" })
        vim.keymap.set('n', '<m-n>', function() term.gotoTerminal(1) end, { desc = "harpoon terminal 1" })
    end
}

