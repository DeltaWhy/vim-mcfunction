syntax keyword mcTodos TODO XXX FIXME NOTE contained
syntax match mcComment "\v^#.*" contains=mcTodos
syntax keyword mcKeywords
	\ execute
	\ function
	\ if
	\ unless
syntax keyword mcCommands
	\ advancement
	\ ban
	\ ban
	\ ban-ip
	\ banlist
	\ blockdata
	\ clear
	\ clone
	\ debug
	\ defaultgamemode
	\ deop
	\ difficulty
	\ effect
	\ enchant
	\ entitydata
	\ fill
	\ gamemode
	\ gamerule
	\ give
	\ help
	\ kick
	\ kill
	\ list
	\ locate
	\ me
	\ op
	\ pardon
	\ particle
	\ playsound
	\ publish
	\ recipe
	\ reload
	\ replaceitem
	\ save
	\ save-all
	\ save-off
	\ save-on
	\ say
	\ scoreboard
	\ seed
	\ setblock
	\ setidletimeout
	\ setmaxplayers
	\ setworldspawn
	\ spawnpoint
	\ spreadplayers
	\ stats
	\ stop
	\ stopsound
	\ summon
	\ teleport
	\ tell
	\ tellraw
	\ testfor
	\ testforblock
	\ testforblocks
	\ time
	\ title
	\ toggledownfall
	\ tp
	\ transferserver
	\ trigger
	\ weather
	\ whitelist
	\ worldborder
	\ wsserver
	\ xp
syntax match mcOperators "\v[~]|([+*/-][=]?)"
syntax match mcSelector "\v\@[aerps]"
syntax match mcNamespace "\v[A-Za-z0-9_]+:"
syntax match mcNumber "\v[+-]?([0-9]+([.][0-9*])?)|(.[0-9]+)"
syntax keyword mcBoolean true false
syntax keyword mcNull null
syntax region mcString matchgroup=mcQuote start="\"" end="\"" skip="\\\""
syntax region mcSelectorArgs matchgroup=mcSelector start="\v\@[aerps]\[" end="]" contains=mcString,mcSelectorDelimiter,mcSelectorValue
syntax match mcSelectorValue contained "\v\=[^,\]]*"lc=1 contains=mcString,mcSelectorDelimiter,mcSelectorOperator
syntax match mcSelectorDelimiter contained "\v[=,]"
syntax match mcSelectorOperator contained "\v\!"
syntax region mcNbtList matchgroup=mcNbtBracket start="\[" end="]" contains=mcNbtNumber,mcNbtObject,mcNbtKey,mcNbtKeyString,mcString
syntax region mcNbtObject matchgroup=mcNbtBracket start="{" end="}" contains=mcNbtNumber,mcNbtList,mcNbtKey,mcNbtKeyString,mcString
syntax match mcNbtNumber contained "\v[+-]?([0-9]+[bslfd]?)|([0-9]*\.[0-9]+[fd]?)"
syntax match mcNbtKey contained "\v[A-Za-z0-9_]+\s*:"he=e-1
syntax match mcNbtKeyString contained "\v\"[A-Za-z0-9_-]+\"\s*:"hs=s+1,he=e-1

highlight default link mcTodos Todo
highlight default link mcComment Comment
highlight default link mcKeywords Keyword
highlight default link mcCommands Function
highlight default link mcOperators Operator
highlight default link mcSelector PreProc
highlight default link mcSelectorArgs Tag
highlight default link mcNamespace Tag
highlight default link mcString String
highlight default link mcNumber Number
highlight default link mcSelectorOperator PreProc
hi def link mcQuote Quote
hi def link mcSelectorDelimiter Normal
hi def link mcSelectorValue Constant
hi def link mcNbtBracket Operator
hi def link mcNbtNumber Number
hi def link mcNbtKey Tag
hi def link mcNbtKeyString Tag
hi def link mcBoolean Boolean
hi def link mcNull Constant
