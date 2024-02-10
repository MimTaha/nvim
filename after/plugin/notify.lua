local async = require("plenary.async")
local notify = require("notify").async

require("notify").setup{
    render = "compact",
    stages = "fade_in_slide_out",
}
