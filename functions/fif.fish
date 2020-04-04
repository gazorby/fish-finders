function fif -d "Search file content. usage : fif <string>"
    if ! set -q argv || [ -z "$argv[1]" ]
        echo "Need a string to search for!"
        return 1
    end
    rg --hidden --files-with-matches --no-messages -g "!{.git,node_modules}/*" "$argv[1]" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$argv[1]' || rg --ignore-case --pretty --context 10 '$argv[1]' {}"
end