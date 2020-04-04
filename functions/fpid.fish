# fuzzy search processes and get PID
function fpid -d "Fuzzy find a PID"
    ps axww -o pid,user,%cpu,%mem,start,time,command | fzf $FZF_CUSTOM_OPTIONS | sed 's/^ *//' | cut -f1 -d' '
end