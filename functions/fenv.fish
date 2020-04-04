function fenv -d ""
    env | column -ts '=' | fzf -1 -0 $FZF_CUSTOM_OPTIONS
end