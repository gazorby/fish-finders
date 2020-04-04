function fssh -d "Fuzzy-find ssh host via grep and ssh into it"
    grep --ignore-case '^host [^*]' ~/.ssh/config | cut -d ' ' -f 2 | fzf | read -l result
    and ssh "$result"
end
