local status, toggleterm = pcall(require, "toggleterm")

if not status then
    return
end

toggleterm.setup({
    size = 80,
    open_mapping = [[<F7>]],
    -- shading_factor = 2,
    direction = "vertical",
    -- float_opts = {
    --     border = "curved",
    --     highlights = {
    --         border = "Normal",
    --         background = "Normal",
    --     },
    -- },
})
