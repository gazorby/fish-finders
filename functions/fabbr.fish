function fabbr --description "Find abbreviation and paste it to commandline"
    # We are using '²' character as a delimiter as it is not frequently used in commands
    set ab (abbr | awk -F '-- ' '{print $2}' | sed -e 's/ /²/' | column -ts '²' | fzf -1 -0) \
        && commandline (echo "$ab" | awk '{print $1}') || return 1
end