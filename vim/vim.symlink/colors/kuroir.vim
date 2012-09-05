" Vim color file
" Converted from Textmate theme Kuroir Theme using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "kurior"

hi Cursor ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#202020 gui=NONE
hi Visual ctermfg=NONE ctermbg=221 cterm=NONE guifg=NONE guibg=#efc666 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d7d6 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d7d6 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=253 cterm=NONE guifg=NONE guibg=#d6d7d6 gui=NONE
hi LineNr ctermfg=245 ctermbg=253 cterm=NONE guifg=#8f908f guibg=#d6d7d6 gui=NONE
hi VertSplit ctermfg=249 ctermbg=249 cterm=NONE guifg=#b4b5b4 guibg=#b4b5b4 gui=NONE
hi MatchParen ctermfg=237 ctermbg=NONE cterm=NONE guifg=#363636 guibg=NONE gui=NONE
hi StatusLine ctermfg=237 ctermbg=249 cterm=bold guifg=#363636 guibg=#b4b5b4 gui=bold
hi StatusLineNC ctermfg=237 ctermbg=249 cterm=NONE guifg=#363636 guibg=#b4b5b4 gui=NONE
hi Pmenu ctermfg=94 ctermbg=254 cterm=NONE guifg=#8b4726 guibg=#e8e9e8 gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=221 cterm=NONE guifg=NONE guibg=#efc666 gui=NONE
hi IncSearch ctermfg=NONE ctermbg=116 cterm=NONE guifg=NONE guibg=#9bcfdf gui=NONE
hi Search ctermfg=NONE ctermbg=116 cterm=NONE guifg=NONE guibg=#9bcfdf gui=NONE
hi Directory ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cd6839 guibg=NONE gui=NONE
hi Folded ctermfg=247 ctermbg=254 cterm=NONE guifg=#9c9d9c guibg=#e8e9e8 gui=NONE

hi Normal ctermfg=237 ctermbg=254 cterm=NONE guifg=#363636 guibg=#e8e9e8 gui=NONE
hi Boolean ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cd6839 guibg=NONE gui=NONE
hi Character ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cd6839 guibg=NONE gui=NONE
hi Comment ctermfg=247 ctermbg=254 cterm=NONE guifg=#9c9d9c guibg=#e1e2e1 gui=NONE
hi Conditional ctermfg=166 ctermbg=NONE cterm=NONE guifg=#cd3700 guibg=NONE gui=NONE
hi Constant ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cd6839 guibg=NONE gui=NONE
hi Define ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=94 ctermbg=NONE cterm=NONE guifg=#9a5925 guibg=NONE gui=NONE
hi Function ctermfg=94 ctermbg=254 cterm=NONE guifg=#8b4726 guibg=#e8e9e8 gui=NONE
hi Identifier ctermfg=124 ctermbg=NONE cterm=NONE guifg=#a52a2a guibg=NONE gui=NONE
hi Keyword ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Label ctermfg=64 ctermbg=NONE cterm=NONE guifg=#639300 guibg=NONE gui=NONE
hi NonText ctermfg=248 ctermbg=188 cterm=NONE guifg=#a5a5a5 guibg=#dfe0df gui=NONE
hi Number ctermfg=94 ctermbg=NONE cterm=NONE guifg=#9a5925 guibg=NONE gui=NONE
hi Operator ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PreProc ctermfg=131 ctermbg=NONE cterm=NONE guifg=#9f5e3d guibg=NONE gui=NONE
hi Special ctermfg=237 ctermbg=NONE cterm=NONE guifg=#363636 guibg=NONE gui=NONE
hi SpecialKey ctermfg=248 ctermbg=253 cterm=NONE guifg=#a5a5a5 guibg=#d6d7d6 gui=NONE
hi Statement ctermfg=166 ctermbg=NONE cterm=NONE guifg=#cd3700 guibg=NONE gui=NONE
hi StorageClass ctermfg=124 ctermbg=NONE cterm=NONE guifg=#a52a2a guibg=NONE gui=NONE
hi String ctermfg=64 ctermbg=NONE cterm=NONE guifg=#639300 guibg=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=254 cterm=NONE guifg=#8b4726 guibg=#e8e9e8 gui=NONE
hi Title ctermfg=237 ctermbg=NONE cterm=bold guifg=#363636 guibg=NONE gui=bold
hi Todo ctermfg=247 ctermbg=254 cterm=inverse,bold guifg=#9c9d9c guibg=#e1e2e1 gui=inverse,bold
hi Type ctermfg=94 ctermbg=254 cterm=NONE guifg=#8b4726 guibg=#e8e9e8 gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=166 ctermbg=NONE cterm=NONE guifg=#cd3700 guibg=NONE gui=NONE
hi rubyFunction ctermfg=94 ctermbg=254 cterm=NONE guifg=#8b4726 guibg=#e8e9e8 gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cd6839 guibg=NONE gui=NONE
hi rubyConstant ctermfg=24 ctermbg=NONE cterm=NONE guifg=#104e8b guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=64 ctermbg=NONE cterm=NONE guifg=#639300 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi rubyInclude ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi rubyRegexp ctermfg=64 ctermbg=187 cterm=NONE guifg=#417e00 guibg=#c9d4be gui=NONE
hi rubyRegexpDelimiter ctermfg=64 ctermbg=187 cterm=NONE guifg=#417e00 guibg=#c9d4be gui=NONE
hi rubyEscape ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cd6839 guibg=NONE gui=NONE
hi rubyControl ctermfg=166 ctermbg=NONE cterm=NONE guifg=#cd3700 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi rubyOperator ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyException ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=24 ctermbg=NONE cterm=NONE guifg=#104e8b guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=247 ctermbg=254 cterm=NONE guifg=#9c9d9c guibg=#e1e2e1 gui=NONE
hi erubyRailsMethod ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi htmlTag ctermfg=23 ctermbg=NONE cterm=NONE guifg=#005273 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=23 ctermbg=NONE cterm=NONE guifg=#005273 guibg=NONE gui=NONE
hi htmlTagName ctermfg=23 ctermbg=NONE cterm=NONE guifg=#005273 guibg=NONE gui=NONE
hi htmlArg ctermfg=23 ctermbg=NONE cterm=NONE guifg=#005273 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cd6839 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=124 ctermbg=NONE cterm=NONE guifg=#a52a2a guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=94 ctermbg=254 cterm=NONE guifg=#8b4726 guibg=#e8e9e8 gui=NONE
hi yamlAnchor ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi yamlAlias ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=64 ctermbg=NONE cterm=NONE guifg=#639300 guibg=NONE gui=NONE
hi cssURL ctermfg=32 ctermbg=NONE cterm=NONE guifg=#009acd guibg=NONE gui=NONE
hi cssFunctionName ctermfg=131 ctermbg=NONE cterm=NONE guifg=#b03060 guibg=NONE gui=NONE
hi cssColor ctermfg=136 ctermbg=NONE cterm=NONE guifg=#b8860b guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=94 ctermbg=254 cterm=NONE guifg=#8b4726 guibg=#e8e9e8 gui=NONE
hi cssClassName ctermfg=124 ctermbg=NONE cterm=NONE guifg=#b8012d guibg=NONE gui=NONE
hi cssValueLength ctermfg=94 ctermbg=NONE cterm=NONE guifg=#9a5925 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cf6a4c guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
