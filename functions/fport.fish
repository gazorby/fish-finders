function fport -d "show listening tcp connections"
    ss --listening --tcp --numeric | fzf
end
