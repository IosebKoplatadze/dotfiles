" Tbilisi Night Storm colorscheme for Neovim
" Based on Cursor editor theme

if exists('g:colors_name')
  hi clear
endif

set background=dark
let g:colors_name = 'tbilisi-night-storm'

" Color definitions from the theme schema
let s:bg = '#2d2a2e'
let s:fg = '#fcfcfa'
let s:bg_dark = '#221f22'
let s:bg_darker = '#19181a'
let s:bg_light = '#403e41'
let s:fg_dim = '#727072'
let s:fg_bright = '#c1c0c0'
let s:fg_dark = '#5b595c'
let s:orange = '#ff6188'
let s:green = '#a9dc76'
let s:yellow = '#ffd866'
let s:red = '#fc9867'
let s:blue = '#78dce8'
let s:purple = '#ab9df2'
let s:cyan = '#78dce8'

" Basic colors
exec 'hi Normal guifg=' . s:fg . ' guibg=' . s:bg
exec 'hi NormalFloat guifg=' . s:fg . ' guibg=' . s:bg_light
exec 'hi FloatBorder guifg=' . s:fg_dim . ' guibg=' . s:bg_light

" Cursor
exec 'hi Cursor guifg=' . s:bg . ' guibg=' . s:fg
exec 'hi CursorLine guibg=' . s:bg_light
exec 'hi CursorColumn guibg=' . s:bg_light
exec 'hi CursorLineNr guifg=' . s:fg_bright . ' guibg=' . s:bg

" Line numbers
exec 'hi LineNr guifg=' . s:fg_dark
exec 'hi SignColumn guibg=' . s:bg

" Selection
exec 'hi Visual guibg=' . s:bg_light
exec 'hi VisualNOS guibg=' . s:bg_light

" Search
exec 'hi Search guibg=' . s:yellow . ' guifg=' . s:bg
exec 'hi IncSearch guibg=' . s:yellow . ' guifg=' . s:bg

" Status line
exec 'hi StatusLine guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi StatusLineNC guifg=' . s:fg_dim . ' guibg=' . s:bg_dark
exec 'hi StatusLineTerm guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi StatusLineTermNC guifg=' . s:fg_dim . ' guibg=' . s:bg_dark

" Tab line
exec 'hi TabLine guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi TabLineFill guibg=' . s:bg
exec 'hi TabLineSel guifg=' . s:yellow . ' guibg=' . s:bg

" Window splits
exec 'hi VertSplit guifg=' . s:bg_dark . ' guibg=' . s:bg_dark
exec 'hi WinSeparator guifg=' . s:bg_dark . ' guibg=' . s:bg_dark

" Syntax highlighting
exec 'hi Comment guifg=' . s:fg_dim . ' gui=italic'
exec 'hi Constant guifg=' . s:purple
exec 'hi String guifg=' . s:yellow
exec 'hi Character guifg=' . s:yellow
exec 'hi Number guifg=' . s:purple
exec 'hi Boolean guifg=' . s:purple
exec 'hi Float guifg=' . s:purple

exec 'hi Identifier guifg=' . s:fg
exec 'hi Function guifg=' . s:green
exec 'hi Method guifg=' . s:green

exec 'hi Statement guifg=' . s:red . ' gui=bold'
exec 'hi Conditional guifg=' . s:red
exec 'hi Repeat guifg=' . s:red
exec 'hi Label guifg=' . s:red
exec 'hi Operator guifg=' . s:red
exec 'hi Keyword guifg=' . s:red
exec 'hi Exception guifg=' . s:red

exec 'hi PreProc guifg=' . s:purple
exec 'hi Include guifg=' . s:red
exec 'hi Define guifg=' . s:red
exec 'hi Macro guifg=' . s:red
exec 'hi PreCondit guifg=' . s:red

exec 'hi Type guifg=' . s:blue . ' gui=italic'
exec 'hi StorageClass guifg=' . s:red . ' gui=italic'
exec 'hi Structure guifg=' . s:blue
exec 'hi Typedef guifg=' . s:blue . ' gui=italic'

exec 'hi Special guifg=' . s:orange
exec 'hi SpecialChar guifg=' . s:purple
exec 'hi Tag guifg=' . s:red
exec 'hi Delimiter guifg=' . s:fg_dim
exec 'hi SpecialComment guifg=' . s:fg_dim
exec 'hi Debug guifg=' . s:red

exec 'hi Underlined gui=underline'
exec 'hi Ignore guifg=' . s:fg_dim
exec 'hi Error guifg=' . s:orange . ' guibg=' . s:bg
exec 'hi Todo guifg=' . s:yellow . ' guibg=' . s:bg

" Diff
exec 'hi DiffAdd guifg=' . s:green . ' guibg=' . s:bg
exec 'hi DiffChange guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi DiffDelete guifg=' . s:orange . ' guibg=' . s:bg
exec 'hi DiffText guifg=' . s:yellow . ' guibg=' . s:bg

" Git
exec 'hi gitcommitComment guifg=' . s:fg_dim
exec 'hi gitcommitUnmerged guifg=' . s:orange
exec 'hi gitcommitOnBranch guifg=' . s:fg_dim
exec 'hi gitcommitBranch guifg=' . s:purple
exec 'hi gitcommitDiscardedType guifg=' . s:fg_dim
exec 'hi gitcommitSelectedType guifg=' . s:fg_dim
exec 'hi gitcommitHeader guifg=' . s:fg_dim
exec 'hi gitcommitUntrackedFile guifg=' . s:cyan
exec 'hi gitcommitDiscardedFile guifg=' . s:orange
exec 'hi gitcommitSelectedFile guifg=' . s:green
exec 'hi gitcommitUnmergedFile guifg=' . s:yellow
exec 'hi gitcommitFile guifg=' . s:fg_bright

" LSP
exec 'hi DiagnosticError guifg=' . s:orange
exec 'hi DiagnosticWarn guifg=' . s:red
exec 'hi DiagnosticInfo guifg=' . s:blue
exec 'hi DiagnosticHint guifg=' . s:purple
exec 'hi DiagnosticUnderlineError guisp=' . s:orange . ' gui=undercurl'
exec 'hi DiagnosticUnderlineWarn guisp=' . s:red . ' gui=undercurl'
exec 'hi DiagnosticUnderlineInfo guisp=' . s:blue . ' gui=undercurl'
exec 'hi DiagnosticUnderlineHint guisp=' . s:purple . ' gui=undercurl'

" Treesitter
exec 'hi @comment guifg=' . s:fg_dim . ' gui=italic'
exec 'hi @string guifg=' . s:yellow
exec 'hi @string.regex guifg=' . s:yellow
exec 'hi @number guifg=' . s:purple
exec 'hi @boolean guifg=' . s:purple
exec 'hi @function guifg=' . s:green
exec 'hi @function.builtin guifg=' . s:green
exec 'hi @function.macro guifg=' . s:green
exec 'hi @method guifg=' . s:green
exec 'hi @parameter guifg=' . s:orange . ' gui=italic'
exec 'hi @keyword guifg=' . s:red
exec 'hi @keyword.function guifg=' . s:red
exec 'hi @keyword.return guifg=' . s:red
exec 'hi @keyword.operator guifg=' . s:red
exec 'hi @conditional guifg=' . s:red
exec 'hi @repeat guifg=' . s:red
exec 'hi @exception guifg=' . s:red
exec 'hi @type guifg=' . s:blue . ' gui=italic'
exec 'hi @type.builtin guifg=' . s:blue
exec 'hi @class guifg=' . s:blue
exec 'hi @namespace guifg=' . s:blue
exec 'hi @constant guifg=' . s:purple
exec 'hi @constant.builtin guifg=' . s:purple
exec 'hi @constant.macro guifg=' . s:purple
exec 'hi @variable guifg=' . s:fg
exec 'hi @variable.builtin guifg=' . s:fg_bright . ' gui=italic'
exec 'hi @property guifg=' . s:fg
exec 'hi @field guifg=' . s:fg
exec 'hi @operator guifg=' . s:fg_dim
exec 'hi @punctuation.delimiter guifg=' . s:fg_dim
exec 'hi @punctuation.bracket guifg=' . s:fg_dim
exec 'hi @tag guifg=' . s:red
exec 'hi @tag.delimiter guifg=' . s:fg_dim
exec 'hi @tag.attribute guifg=' . s:blue . ' gui=italic'

" Markdown
exec 'hi markdownCode guifg=' . s:orange
exec 'hi markdownCodeBlock guifg=' . s:orange
exec 'hi markdownHeadingDelimiter guifg=' . s:yellow
exec 'hi markdownHeadingRule guifg=' . s:fg_dim
exec 'hi markdownLinkText guifg=' . s:green
exec 'hi markdownListMarker guifg=' . s:red
exec 'hi markdownOrderedListMarker guifg=' . s:red
exec 'hi markdownRule guifg=' . s:fg_dim
exec 'hi markdownUrl guifg=' . s:fg_dim

" Terminal colors
let g:terminal_color_0 = s:bg_light
let g:terminal_color_1 = s:red
let g:terminal_color_2 = s:green
let g:terminal_color_3 = s:yellow
let g:terminal_color_4 = s:orange
let g:terminal_color_5 = s:purple
let g:terminal_color_6 = s:cyan
let g:terminal_color_7 = s:fg
let g:terminal_color_8 = s:fg_dim
let g:terminal_color_9 = s:red
let g:terminal_color_10 = s:green
let g:terminal_color_11 = s:yellow
let g:terminal_color_12 = s:orange
let g:terminal_color_13 = s:purple
let g:terminal_color_14 = s:cyan
let g:terminal_color_15 = s:fg

" Neovim terminal
if has('nvim')
  let g:terminal_color_background = s:bg_light
  let g:terminal_color_foreground = s:fg
endif

" Pmenu (completion menu)
exec 'hi Pmenu guifg=' . s:fg_bright . ' guibg=' . s:bg_light
exec 'hi PmenuSel guifg=' . s:yellow . ' guibg=' . s:bg_light
exec 'hi PmenuSbar guibg=' . s:bg_light
exec 'hi PmenuThumb guibg=' . s:fg_dark

" Wild menu
exec 'hi WildMenu guifg=' . s:yellow . ' guibg=' . s:bg_light

" Folding
exec 'hi Folded guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi FoldColumn guifg=' . s:fg_dim . ' guibg=' . s:bg

" NonText
exec 'hi NonText guifg=' . s:fg_dark
exec 'hi SpecialKey guifg=' . s:fg_dark

" MatchParen
exec 'hi MatchParen guifg=' . s:fg . ' guibg=' . s:fg_dim

" Quickfix
exec 'hi QuickFixLine guibg=' . s:bg_light
exec 'hi qfFileName guifg=' . s:blue
exec 'hi qfLineNr guifg=' . s:fg_dim

" Help
exec 'hi helpHyperTextJump guifg=' . s:blue
exec 'hi helpSpecial guifg=' . s:purple
exec 'hi helpHeadline guifg=' . s:yellow
exec 'hi helpHeader guifg=' . s:yellow

" Spell
exec 'hi SpellBad guisp=' . s:red . ' gui=undercurl'
exec 'hi SpellCap guisp=' . s:yellow . ' gui=undercurl'
exec 'hi SpellLocal guisp=' . s:blue . ' gui=undercurl'
exec 'hi SpellRare guisp=' . s:purple . ' gui=undercurl'

" Whitespace
exec 'hi Whitespace guifg=' . s:fg_dark

" Indent guides
exec 'hi IndentBlanklineChar guifg=' . s:fg_dark
exec 'hi IndentBlanklineContextChar guifg=' . s:fg_dim

" WhichKey
exec 'hi WhichKey guifg=' . s:purple
exec 'hi WhichKeyGroup guifg=' . s:blue
exec 'hi WhichKeyDesc guifg=' . s:fg_bright
exec 'hi WhichKeySeperator guifg=' . s:fg_dim
exec 'hi WhichKeyFloat guibg=' . s:bg_light

" Telescope
exec 'hi TelescopeBorder guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TelescopePromptBorder guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TelescopeResultsBorder guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TelescopePreviewBorder guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TelescopePromptPrefix guifg=' . s:purple
exec 'hi TelescopeSelection guifg=' . s:yellow . ' guibg=' . s:bg_light
exec 'hi TelescopeSelectionCaret guifg=' . s:yellow
exec 'hi TelescopeMatching guifg=' . s:yellow

" NvimTree
exec 'hi NvimTreeNormal guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi NvimTreeNormalNC guifg=' . s:fg_dim . ' guibg=' . s:bg_dark
exec 'hi NvimTreeRootFolder guifg=' . s:purple
exec 'hi NvimTreeFolderIcon guifg=' . s:blue
exec 'hi NvimTreeFileIcon guifg=' . s:fg_bright
exec 'hi NvimTreeExecFile guifg=' . s:green
exec 'hi NvimTreeOpenedFile guifg=' . s:yellow
exec 'hi NvimTreeSpecialFile guifg=' . s:red
exec 'hi NvimTreeIndentMarker guifg=' . s:fg_dark
exec 'hi NvimTreeImageFile guifg=' . s:purple
exec 'hi NvimTreeSymlink guifg=' . s:cyan

" Bufferline
exec 'hi BufferLineFill guibg=' . s:bg_dark
exec 'hi BufferLineBackground guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi BufferLineBufferSelected guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi BufferLineBufferVisible guifg=' . s:fg_bright . ' guibg=' . s:bg
exec 'hi BufferLineIndicatorSelected guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi BufferLineCloseButton guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi BufferLineCloseButtonVisible guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi BufferLineCloseButtonSelected guifg=' . s:yellow . ' guibg=' . s:bg

" Lualine
exec 'hi lualine_a_normal guifg=' . s:bg . ' guibg=' . s:green
exec 'hi lualine_b_normal guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi lualine_c_normal guifg=' . s:fg_bright . ' guibg=' . s:bg
exec 'hi lualine_x_normal guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi lualine_y_normal guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi lualine_z_normal guifg=' . s:bg . ' guibg=' . s:purple

" Gitsigns
exec 'hi GitSignsAdd guifg=' . s:green
exec 'hi GitSignsChange guifg=' . s:yellow
exec 'hi GitSignsDelete guifg=' . s:orange
exec 'hi GitSignsAddNr guifg=' . s:green
exec 'hi GitSignsChangeNr guifg=' . s:yellow
exec 'hi GitSignsDeleteNr guifg=' . s:orange
exec 'hi GitSignsAddLn guifg=' . s:green . ' guibg=' . s:bg
exec 'hi GitSignsChangeLn guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi GitSignsDeleteLn guifg=' . s:orange . ' guibg=' . s:bg

" Neogit
exec 'hi NeogitDiffAddHighlight guifg=' . s:green . ' guibg=' . s:bg
exec 'hi NeogitDiffDeleteHighlight guifg=' . s:orange . ' guibg=' . s:bg
exec 'hi NeogitDiffContextHighlight guibg=' . s:bg_light
exec 'hi NeogitHunkHeader guifg=' . s:fg_bright . ' guibg=' . s:bg_light
exec 'hi NeogitHunkHeaderHighlight guifg=' . s:fg_bright . ' guibg=' . s:bg_light

" Noice
exec 'hi NoiceCmdline guibg=' . s:bg_light
exec 'hi NoiceCmdlineIcon guifg=' . s:purple
exec 'hi NoiceCmdlineIconSearch guifg=' . s:yellow
exec 'hi NoiceCmdlinePopup guibg=' . s:bg_light
exec 'hi NoiceCmdlinePopupBorder guifg=' . s:fg_dim
exec 'hi NoiceCmdlinePopupTitle guifg=' . s:yellow
exec 'hi NoiceConfirm guibg=' . s:bg_light
exec 'hi NoiceConfirmBorder guifg=' . s:fg_dim
exec 'hi NoiceFormatProgressDone guibg=' . s:purple
exec 'hi NoiceFormatProgressTodo guibg=' . s:bg_light
exec 'hi NoiceFormatTitle guifg=' . s:yellow
exec 'hi NoiceLspProgressClient guifg=' . s:purple
exec 'hi NoiceLspProgressSpinner guifg=' . s:purple
exec 'hi NoiceMini guibg=' . s:bg_light
exec 'hi NoicePopup guibg=' . s:bg_light
exec 'hi NoicePopupBorder guifg=' . s:fg_dim
exec 'hi NoicePopupmenu guibg=' . s:bg_light
exec 'hi NoicePopupmenuBorder guifg=' . s:fg_dim
exec 'hi NoicePopupmenuMatch guifg=' . s:yellow
exec 'hi NoicePopupmenuSelected guifg=' . s:yellow . ' guibg=' . s:bg_light
exec 'hi NoiceScrollbar guibg=' . s:bg_light
exec 'hi NoiceScrollbarThumb guibg=' . s:fg_dark
exec 'hi NoiceSplit guibg=' . s:bg_light
exec 'hi NoiceSplitBorder guifg=' . s:fg_dim
exec 'hi NoiceVirtualText guifg=' . s:fg_dim . ' guibg=' . s:bg

" Notify
exec 'hi NotifyDEBUGBorder guifg=' . s:fg_dim
exec 'hi NotifyDEBUGIcon guifg=' . s:fg_dim
exec 'hi NotifyDEBUGTitle guifg=' . s:fg_dim
exec 'hi NotifyERRORBorder guifg=' . s:orange
exec 'hi NotifyERRORIcon guifg=' . s:orange
exec 'hi NotifyERRORTitle guifg=' . s:orange
exec 'hi NotifyINFOBorder guifg=' . s:blue
exec 'hi NotifyINFOIcon guifg=' . s:blue
exec 'hi NotifyINFOTitle guifg=' . s:blue
exec 'hi NotifyTRACEBorder guifg=' . s:purple
exec 'hi NotifyTRACEIcon guifg=' . s:purple
exec 'hi NotifyTRACETitle guifg=' . s:purple
exec 'hi NotifyWARNBorder guifg=' . s:red
exec 'hi NotifyWARNIcon guifg=' . s:red
exec 'hi NotifyWARNTitle guifg=' . s:red

" Cmp
exec 'hi CmpItemAbbr guifg=' . s:fg_bright
exec 'hi CmpItemAbbrDeprecated guifg=' . s:fg_dim . ' gui=strikethrough'
exec 'hi CmpItemAbbrMatch guifg=' . s:yellow
exec 'hi CmpItemAbbrMatchFuzzy guifg=' . s:yellow
exec 'hi CmpItemKind guifg=' . s:purple
exec 'hi CmpItemKindClass guifg=' . s:blue
exec 'hi CmpItemKindFunction guifg=' . s:green
exec 'hi CmpItemKindInterface guifg=' . s:blue
exec 'hi CmpItemKindMethod guifg=' . s:green
exec 'hi CmpItemKindProperty guifg=' . s:fg_bright
exec 'hi CmpItemKindVariable guifg=' . s:orange
exec 'hi CmpItemMenu guifg=' . s:fg_dim
exec 'hi CmpItemMenuDefault guifg=' . s:yellow

" DAP
exec 'hi DapBreakpoint guifg=' . s:orange
exec 'hi DapBreakpointCondition guifg=' . s:yellow
exec 'hi DapBreakpointRejected guifg=' . s:red
exec 'hi DapLogPoint guifg=' . s:blue
exec 'hi DapStopped guifg=' . s:green
exec 'hi DapStoppedLine guibg=' . s:bg_light
exec 'hi DapStoppedCursor guifg=' . s:fg . ' guibg=' . s:bg

" Mason
exec 'hi MasonHeader guifg=' . s:bg . ' guibg=' . s:green
exec 'hi MasonHighlight guifg=' . s:blue
exec 'hi MasonHighlightBlock guifg=' . s:bg . ' guibg=' . s:green
exec 'hi MasonHighlightBlockBold guifg=' . s:bg . ' guibg=' . s:green . ' gui=bold'
exec 'hi MasonMuted guifg=' . s:fg_dim
exec 'hi MasonMutedBlock guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi MasonMutedBlockBold guifg=' . s:fg_dim . ' guibg=' . s:bg_light . ' gui=bold'
exec 'hi MasonNormal guifg=' . s:fg_bright . ' guibg=' . s:bg_light
exec 'hi MasonHeaderSecondary guifg=' . s:bg . ' guibg=' . s:purple

" Mini
exec 'hi MiniCompletionActiveParameter gui=underline'
exec 'hi MiniCursorword gui=underline'
exec 'hi MiniCursorwordCurrent gui=underline'
exec 'hi MiniIndentscopeSymbol guifg=' . s:fg_dim
exec 'hi MiniIndentscopePrefix gui=nocombine'
exec 'hi MiniJump guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi MiniJump2dSpot guifg=' . s:yellow . ' gui=bold'
exec 'hi MiniStarterCurrent gui=none'
exec 'hi MiniStarterFooter guifg=' . s:yellow . ' gui=bold'
exec 'hi MiniStarterHeader guifg=' . s:yellow . ' gui=bold'
exec 'hi MiniStarterInactive guifg=' . s:fg_dim
exec 'hi MiniStarterItemBullet guifg=' . s:fg_dim
exec 'hi MiniStarterItemPrefix guifg=' . s:yellow
exec 'hi MiniStarterQuery guifg=' . s:yellow
exec 'hi MiniStarterSection guifg=' . s:purple
exec 'hi MiniStatuslineDevinfo guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi MiniStatuslineFileinfo guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi MiniStatuslineFilename guifg=' . s:fg_bright . ' guibg=' . s:bg_dark
exec 'hi MiniStatuslineInactive guifg=' . s:fg_dim . ' guibg=' . s:bg_dark
exec 'hi MiniStatuslineModeCommand guifg=' . s:bg . ' guibg=' . s:yellow
exec 'hi MiniStatuslineModeInsert guifg=' . s:bg . ' guibg=' . s:green
exec 'hi MiniStatuslineModeNormal guifg=' . s:bg . ' guibg=' . s:purple
exec 'hi MiniStatuslineModeOther guifg=' . s:bg . ' guibg=' . s:blue
exec 'hi MiniStatuslineModeReplace guifg=' . s:bg . ' guibg=' . s:red
exec 'hi MiniStatuslineModeVisual guifg=' . s:bg . ' guibg=' . s:orange
exec 'hi MiniSurround guibg=' . s:yellow . ' guifg=' . s:bg
exec 'hi MiniTablineCurrent guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi MiniTablineFill guibg=' . s:bg
exec 'hi MiniTablineHidden guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi MiniTablineModifiedCurrent guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi MiniTablineModifiedHidden guifg=' . s:fg_dim . ' guibg=' . s:bg
exec 'hi MiniTablineModifiedVisible guifg=' . s:fg_bright . ' guibg=' . s:bg
exec 'hi MiniTablineVisible guifg=' . s:fg_bright . ' guibg=' . s:bg
exec 'hi MiniTestEmphasis gui=bold'
exec 'hi MiniTestFail guifg=' . s:red . ' gui=bold'
exec 'hi MiniTestPass guifg=' . s:green . ' gui=bold'
exec 'hi MiniTrailspace guibg=' . s:red

" Neotest
exec 'hi NeotestAdapterName guifg=' . s:purple . ' gui=bold'
exec 'hi NeotestBorder guifg=' . s:fg_dim
exec 'hi NeotestDir guifg=' . s:blue
exec 'hi NeotestExpandMarker guifg=' . s:fg_dim
exec 'hi NeotestFailed guifg=' . s:red
exec 'hi NeotestFile guifg=' . s:blue
exec 'hi NeotestFocused guifg=' . s:yellow
exec 'hi NeotestIndent guifg=' . s:fg_dim
exec 'hi NeotestJumping guifg=' . s:purple
exec 'hi NeotestMarked guifg=' . s:purple
exec 'hi NeotestNamespace guifg=' . s:green
exec 'hi NeotestPassed guifg=' . s:green
exec 'hi NeotestRunning guifg=' . s:yellow
exec 'hi NeotestSkipped guifg=' . s:orange
exec 'hi NeotestTarget guifg=' . s:purple
exec 'hi NeotestTest guifg=' . s:fg_bright
exec 'hi NeotestUnknown guifg=' . s:fg_dim
exec 'hi NeotestWatch guifg=' . s:yellow
exec 'hi NeotestWinSelect guifg=' . s:yellow . ' guibg=' . s:bg_light

" Neorg
exec 'hi NeorgHeading1Prefix guifg=' . s:red . ' gui=bold'
exec 'hi NeorgHeading1Title guifg=' . s:red . ' gui=bold'
exec 'hi NeorgHeading2Prefix guifg=' . s:orange . ' gui=bold'
exec 'hi NeorgHeading2Title guifg=' . s:orange . ' gui=bold'
exec 'hi NeorgHeading3Prefix guifg=' . s:yellow . ' gui=bold'
exec 'hi NeorgHeading3Title guifg=' . s:yellow . ' gui=bold'
exec 'hi NeorgHeading4Prefix guifg=' . s:green . ' gui=bold'
exec 'hi NeorgHeading4Title guifg=' . s:green . ' gui=bold'
exec 'hi NeorgHeading5Prefix guifg=' . s:blue . ' gui=bold'
exec 'hi NeorgHeading5Title guifg=' . s:blue . ' gui=bold'
exec 'hi NeorgHeading6Prefix guifg=' . s:purple . ' gui=bold'
exec 'hi NeorgHeading6Title guifg=' . s:purple . ' gui=bold'
exec 'hi NeorgMarkerTitle guifg=' . s:yellow . ' gui=bold'
exec 'hi NeorgTodoItem1 guifg=' . s:red
exec 'hi NeorgTodoItem2 guifg=' . s:orange
exec 'hi NeorgTodoItem3 guifg=' . s:yellow
exec 'hi NeorgTodoItem4 guifg=' . s:green
exec 'hi NeorgTodoItem5 guifg=' . s:blue
exec 'hi NeorgTodoItem6 guifg=' . s:purple

" Rainbow delimiter
exec 'hi RainbowDelimiterRed guifg=' . s:red
exec 'hi RainbowDelimiterYellow guifg=' . s:yellow
exec 'hi RainbowDelimiterBlue guifg=' . s:blue
exec 'hi RainbowDelimiterOrange guifg=' . s:orange
exec 'hi RainbowDelimiterGreen guifg=' . s:green
exec 'hi RainbowDelimiterViolet guifg=' . s:purple
exec 'hi RainbowDelimiterCyan guifg=' . s:cyan

" Toggleterm
exec 'hi ToggleTerm guibg=' . s:bg_light
exec 'hi ToggleTermBorder guifg=' . s:fg_dim

" Trouble
exec 'hi TroubleCount guifg=' . s:purple . ' guibg=' . s:bg_light
exec 'hi TroubleNormal guifg=' . s:fg_bright . ' guibg=' . s:bg_light
exec 'hi TroubleText guifg=' . s:fg_bright
exec 'hi TroubleTextError guifg=' . s:orange
exec 'hi TroubleTextInformation guifg=' . s:blue
exec 'hi TroubleTextHint guifg=' . s:purple
exec 'hi TroubleTextWarning guifg=' . s:red
exec 'hi TroubleSignError guifg=' . s:orange
exec 'hi TroubleSignInformation guifg=' . s:blue
exec 'hi TroubleSignHint guifg=' . s:purple
exec 'hi TroubleSignWarning guifg=' . s:red
exec 'hi TroubleLocation guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TroublePreview guifg=' . s:fg_bright . ' guibg=' . s:bg_light
exec 'hi TroubleCode guifg=' . s:fg_bright . ' guibg=' . s:bg_light
exec 'hi TroubleIndent guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TroubleFoldIcon guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TroubleSeparator guifg=' . s:fg_dim . ' guibg=' . s:bg_light
exec 'hi TroubleFile guifg=' . s:fg_bright . ' guibg=' . s:bg_light
exec 'hi TroubleSource guifg=' . s:fg_dim . ' guibg=' . s:bg_light

" Undotree
exec 'hi UndotreeSavedBig guifg=' . s:purple . ' gui=bold'
exec 'hi UndotreeSavedSmall guifg=' . s:fg_dim

" Vimtex
exec 'hi texCmd guifg=' . s:red
exec 'hi texCmdPart guifg=' . s:red
exec 'hi texCmdEnv guifg=' . s:red
exec 'hi texEnvArgName guifg=' . s:yellow
exec 'hi texPartArgTitle guifg=' . s:yellow
exec 'hi texDelim guifg=' . s:orange
exec 'hi texDelimMod guifg=' . s:orange
exec 'hi texMathZoneX guifg=' . s:yellow
exec 'hi texMathZoneXX guifg=' . s:yellow
exec 'hi texMathDelimZone guifg=' . s:orange
exec 'hi texMathDelim guifg=' . s:orange
exec 'hi texMathOper guifg=' . s:red
exec 'hi texMathSymbol guifg=' . s:purple
exec 'hi texSpecialChar guifg=' . s:purple
exec 'hi texSuperscript guifg=' . s:purple
exec 'hi texSubscript guifg=' . s:purple
exec 'hi texStatement guifg=' . s:red
exec 'hi texTypeStyle guifg=' . s:blue
exec 'hi texTypeSize guifg=' . s:blue
exec 'hi texType guifg=' . s:blue
exec 'hi texRefZone guifg=' . s:green
exec 'hi texRefLabel guifg=' . s:green
exec 'hi texRefItem guifg=' . s:green
exec 'hi texCite guifg=' . s:green
exec 'hi texDef guifg=' . s:green
exec 'hi texDefName guifg=' . s:green
exec 'hi texNewCmd guifg=' . s:green
exec 'hi texNewEnv guifg=' . s:green
exec 'hi texNewThm guifg=' . s:green
exec 'hi texTitleArg guifg=' . s:yellow
exec 'hi texAuthorArg guifg=' . s:yellow
exec 'hi texTitle guifg=' . s:yellow . ' gui=bold'
exec 'hi texAuthor guifg=' . s:yellow . ' gui=bold'
exec 'hi texAbstract guifg=' . s:yellow
exec 'hi texAbstractContent guifg=' . s:fg_bright
exec 'hi texAbstractTitle guifg=' . s:yellow . ' gui=bold'
exec 'hi texAbstractEnv guifg=' . s:yellow
exec 'hi texPart guifg=' . s:yellow . ' gui=bold'
exec 'hi texChapter guifg=' . s:yellow . ' gui=bold'
exec 'hi texSection guifg=' . s:yellow
exec 'hi texSubSection guifg=' . s:yellow
exec 'hi texSubSubSection guifg=' . s:yellow
exec 'hi texPara guifg=' . s:fg_bright
exec 'hi texItalStyle gui=italic'
exec 'hi texBoldStyle gui=bold'
exec 'hi texItalBoldStyle gui=bold,italic'
exec 'hi texEmphStyle gui=italic'
exec 'hi texEmphBoldStyle gui=bold,italic'
exec 'hi texBoldItalStyle gui=bold,italic'
exec 'hi texEmph gui=italic'
exec 'hi texEmphItal gui=italic'
exec 'hi texBold gui=bold'
exec 'hi texBoldItal gui=bold,italic'
exec 'hi texItalBold gui=bold,italic'
exec 'hi texItal gui=italic'
exec 'hi texItalStyle gui=italic'
exec 'hi texBoldStyle gui=bold'
exec 'hi texItalBoldStyle gui=bold,italic'
exec 'hi texEmphStyle gui=italic'
exec 'hi texEmphBoldStyle gui=bold,italic'
exec 'hi texBoldItalStyle gui=bold,italic'
exec 'hi texEmph gui=italic'
exec 'hi texEmphItal gui=italic'
exec 'hi texBold gui=bold'
exec 'hi texBoldItal gui=bold,italic'
exec 'hi texItalBold gui=bold,italic'
exec 'hi texItal gui=italic'
exec 'hi texCmdInput guifg=' . s:red
exec 'hi texCmdVerb guifg=' . s:red
exec 'hi texVerbZone guifg=' . s:orange
exec 'hi texZone guifg=' . s:fg_bright
exec 'hi texInputFile guifg=' . s:green
exec 'hi texInputCwd guifg=' . s:green
exec 'hi texTypeArg guifg=' . s:yellow
exec 'hi texOpt guifg=' . s:orange
exec 'hi texOptEqual guifg=' . s:orange
exec 'hi texOptSep guifg=' . s:fg_dim
exec 'hi texComment guifg=' . s:fg_dim . ' gui=italic'
exec 'hi texTodo guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi texTodoName guifg=' . s:yellow
exec 'hi texTodoDate guifg=' . s:fg_dim
exec 'hi texTodoNameFancy guifg=' . s:yellow . ' gui=bold'
exec 'hi texTodoDateFancy guifg=' . s:fg_dim
exec 'hi texTodo guifg=' . s:yellow . ' guibg=' . s:bg
exec 'hi texTodoName guifg=' . s:yellow
exec 'hi texTodoDate guifg=' . s:fg_dim
exec 'hi texTodoNameFancy guifg=' . s:yellow . ' gui=bold'
exec 'hi texTodoDateFancy guifg=' . s:fg_dim
exec 'hi texBadMath guifg=' . s:red
exec 'hi texMathError guifg=' . s:red
exec 'hi texOnlyMath guifg=' . s:fg_bright
exec 'hi texStyleMath guifg=' . s:yellow
exec 'hi texStyleText guifg=' . s:fg_bright
exec 'hi texStyleBoth guifg=' . s:orange
exec 'hi texStyleDelim guifg=' . s:orange
exec 'hi texCmdStyle guifg=' . s:red
exec 'hi texCmdStyleMath guifg=' . s:red
exec 'hi texCmdStyleText guifg=' . s:red
exec 'hi texCmdStyleBoth guifg=' . s:red
exec 'hi texCmdStyleDelim guifg=' . s:red
exec 'hi texCmdStyleEnv guifg=' . s:red
exec 'hi texCmdStyleEnvMath guifg=' . s:red
exec 'hi texCmdStyleEnvText guifg=' . s:red
exec 'hi texCmdStyleEnvBoth guifg=' . s:red
exec 'hi texCmdStyleEnvDelim guifg=' . s:red
exec 'hi texCmdStyleOpt guifg=' . s:orange
exec 'hi texCmdStyleOptMath guifg=' . s:orange
exec 'hi texCmdStyleOptText guifg=' . s:orange
exec 'hi texCmdStyleOptBoth guifg=' . s:orange
exec 'hi texCmdStyleOptDelim guifg=' . s:orange
exec 'hi texCmdStyleArg guifg=' . s:yellow
exec 'hi texCmdStyleArgMath guifg=' . s:yellow
exec 'hi texCmdStyleArgText guifg=' . s:yellow
exec 'hi texCmdStyleArgBoth guifg=' . s:yellow
exec 'hi texCmdStyleArgDelim guifg=' . s:yellow
exec 'hi texCmdStyleName guifg=' . s:green
exec 'hi texCmdStyleNameMath guifg=' . s:green
exec 'hi texCmdStyleNameText guifg=' . s:green
exec 'hi texCmdStyleNameBoth guifg=' . s:green
exec 'hi texCmdStyleNameDelim guifg=' . s:green
exec 'hi texCmdStyleBracket guifg=' . s:fg_dim
exec 'hi texCmdStyleBracketMath guifg=' . s:fg_dim
exec 'hi texCmdStyleBracketText guifg=' . s:fg_dim
exec 'hi texCmdStyleBracketBoth guifg=' . s:fg_dim
exec 'hi texCmdStyleBracketDelim guifg=' . s:fg_dim
exec 'hi texCmdStyleSpace guifg=' . s:fg_dim
exec 'hi texCmdStyleSpaceMath guifg=' . s:fg_dim
exec 'hi texCmdStyleSpaceText guifg=' . s:fg_dim
exec 'hi texCmdStyleSpaceBoth guifg=' . s:fg_dim
exec 'hi texCmdStyleSpaceDelim guifg=' . s:fg_dim
exec 'hi texCmdStyleComment guifg=' . s:fg_dim . ' gui=italic'
exec 'hi texCmdStyleCommentMath guifg=' . s:fg_dim . ' gui=italic'
exec 'hi texCmdStyleCommentText guifg=' . s:fg_dim . ' gui=italic'
exec 'hi texCmdStyleCommentBoth guifg=' . s:fg_dim . ' gui=italic'
exec 'hi texCmdStyleCommentDelim guifg=' . s:fg_dim . ' gui=italic'
exec 'hi texCmdStyleTodo guifg=' . s:yellow
exec 'hi texCmdStyleTodoMath guifg=' . s:yellow
exec 'hi texCmdStyleTodoText guifg=' . s:yellow
exec 'hi texCmdStyleTodoBoth guifg=' . s:yellow
exec 'hi texCmdStyleTodoDelim guifg=' . s:yellow
exec 'hi texCmdStyleError guifg=' . s:red
exec 'hi texCmdStyleErrorMath guifg=' . s:red
exec 'hi texCmdStyleErrorText guifg=' . s:red
exec 'hi texCmdStyleErrorBoth guifg=' . s:red
exec 'hi texCmdStyleErrorDelim guifg=' . s:red
exec 'hi texCmdStyleWarning guifg=' . s:orange
exec 'hi texCmdStyleWarningMath guifg=' . s:orange
exec 'hi texCmdStyleWarningText guifg=' . s:orange
exec 'hi texCmdStyleWarningBoth guifg=' . s:orange
exec 'hi texCmdStyleWarningDelim guifg=' . s:orange
exec 'hi texCmdStyleInfo guifg=' . s:blue
exec 'hi texCmdStyleInfoMath guifg=' . s:blue
exec 'hi texCmdStyleInfoText guifg=' . s:blue
exec 'hi texCmdStyleInfoBoth guifg=' . s:blue
exec 'hi texCmdStyleInfoDelim guifg=' . s:blue
exec 'hi texCmdStyleHint guifg=' . s:purple
exec 'hi texCmdStyleHintMath guifg=' . s:purple
exec 'hi texCmdStyleHintText guifg=' . s:purple
exec 'hi texCmdStyleHintBoth guifg=' . s:purple
exec 'hi texCmdStyleHintDelim guifg=' . s:purple
exec 'hi texCmdStyleSuccess guifg=' . s:green
exec 'hi texCmdStyleSuccessMath guifg=' . s:green
exec 'hi texCmdStyleSuccessText guifg=' . s:green
exec 'hi texCmdStyleSuccessBoth guifg=' . s:green
exec 'hi texCmdStyleSuccessDelim guifg=' . s:green
exec 'hi texCmdStyleFail guifg=' . s:red
exec 'hi texCmdStyleFailMath guifg=' . s:red
exec 'hi texCmdStyleFailText guifg=' . s:red
exec 'hi texCmdStyleFailBoth guifg=' . s:red
exec 'hi texCmdStyleFailDelim guifg=' . s:red
exec 'hi texCmdStyleUnknown guifg=' . s:fg_dim
exec 'hi texCmdStyleUnknownMath guifg=' . s:fg_dim
exec 'hi texCmdStyleUnknownText guifg=' . s:fg_dim
exec 'hi texCmdStyleUnknownBoth guifg=' . s:fg_dim
exec 'hi texCmdStyleUnknownDelim guifg=' . s:fg_dim

" Note: Variables are automatically cleaned up when colorscheme is loaded
