"
" [ *** SpaceVIm060 init.vim *** ]
"


"
" {{{
" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
let g:spacevim_enable_debug = 1
let g:spacevim_realtime_leader_guide = 0

call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#java')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('shell')   
" call SpaceVim#layers#load('lang#elixir')
" call SpaceVim#layers#load('lang#haskell')
" call SpaceVim#layers#load('lang#javascript')
" call SpaceVim#layers#load('lang#lua')
" call SpaceVim#layers#load('lang#perl')
" call SpaceVim#layers#load('lang#php')
" call SpaceVim#layers#load('lang#rust')
" call SpaceVim#layers#load('lang#swig')
" call SpaceVim#layers#load('lang#tmux')
" call SpaceVim#layers#load('lang#xml')
" call SpaceVim#layers#load('tools#screensaver')
"
let g:spacevim_enable_vimfiler_welcome = 0
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = []

if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint')
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint')
endif
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif

let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''
" }}}



" Here are some basic customizations, please refer to the ~/.SpaceVim.d/init.vim

"
" ==============================
"  *** Arch Linux *************
"  *** USER:hp ****************
"  *** SpaceVim060 init.vim ***
" ==============================

"
" file for all possible options:
let g:spacevim_statusline_separator = 'slant'
let g:spacevim_lint_on_save = 1
let g:spacevim_default_indent = 4
let g:spacevim_max_column     = 80


"
" *** neomake config
let g:neomake_place_signs = 1
let g:neomake_error_sign = {'texthl': 'error', 'text': '✗'}
let g:neomake_warning_sign = {'texthl': 'todo', 'text': '⚠'}
let g:neomake_verbose = 0
let g:neomake_open_list = 0 "bottom window
let g:neomake_java_javac_delete_output = 0


"
" Change the default directory where all miscellaneous persistent files go.
" By default it is ~/.cache/vimfiles/.
" let g:spacevim_plugin_bundle_dir = '~/.cache/vimfiles/'


"
" set SpaceVim colorscheme
" let g:spacevim_colorscheme = 'default'
let g:spacevim_colorscheme = 'one'
" let g:spacevim_colorscheme = 'molokai'
" let g:spacevim_colorscheme = 'jellybeans'


"
" Set plugin manager, you want to use, default is dein.vim
" let g:spacevim_plugin_manager = 'dein'  " neobundle or dein or vim-plug


"
" use space as `<Leader>`
" let mapleader = "\<space>"
 let mapleader = ","


"
" Set windows shortcut leader [Window], default is `s`
" let g:spacevim_windows_leader = 's'


"
" Set unite work flow shortcut leader [Unite], default is `f`
" let g:spacevim_unite_leader = 'f'


"
" By default, language specific plugins are not loaded. This can be changed
" with the following, then the plugins for go development will be loaded.
" call SpaceVim#layers#load('lang#go')


"
" loaded ui layer
" call SpaceVim#layers#load('ui')


"
" If there is a particular plugin you don't like, you can define this
" variable to disable them entirely:
" let g:spacevim_disabled_plugins=[
    " \ ['maralla/completeor-neosnippet'],
    " \ ['Shougo/neosnippet-snippets'],
    " \ ['Shougo/neosnippet.vim'],
    " \ ['honza/vim-neosnippet'],
    " \ ]
    
"
" If you want to add some custom plugins, use these options:
" let g:spacevim_custom_plugins = [
    " \ ['plasticboy/vim-markdown', {'on_ft' : 'markdown'}],
    " \ ['wsdjeg/GitHub.vim'],
    " \ ]


"
" set the guifont
" let g:spacevim_guifont = 'DejaVu\ Sans\ Mono\ for\ Powerline\ 11'


"
" *** ctrlp.vim config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'some_bad_symbolic_links',
	\ }

