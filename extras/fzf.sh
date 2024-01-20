_gen_fzf_default_opts() {

local color00='#181a1f'
local color01='#1c1e24'
local color02='#282c34'
local color03='#53565c'
local color04='#d4d4d6'
local color05='#ff7eb6'
local color06='#33b1ff'
local color07='#b392f0'
local color08='#f97583'
local color09='#e5c07b'
local color0A='#d19a66'
local color0B='#85e89d'
local color0C='#2bbac5'
local color0D='#89ca78'
local color0E='#ef596f'
local color0F='#d19a66'

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"
}

_gen_fzf_default_opts
