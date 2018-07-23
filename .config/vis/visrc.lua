require('vis')
require('ctags')
require('vis-commentary')

require('cursors').path = "/home/timur/.config/vis/.cursors"

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command("set numbers")
    vis:command("set autoindent")
    vis:command("set theme base16-default-dark")
    vis:command("set expandtab")
    vis:command("set tabwidth 4")
    vis:command("set show-tabs")
    vis:command("set cursorline")
end)


