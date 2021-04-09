Guifont! Consolas:h14
GuiTabline 0
GuiPopupmenu 0

if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 1)
    call rpcnotify(1, 'Gui', 'Font', 'Liberation Mono 10')
    NERDTreeClose
endif
