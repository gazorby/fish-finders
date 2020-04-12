function fabbr --description "Find abbreviation and paste it to commandline"
    # We are using '²' character as a delimiter as it is not frequently used in commands
    set -l ab (string replace ' ' '²' (string replace -r '.*-- ' '' (abbr -s)) | column -ts '²' | fzf -1 -0) \
        && commandline (string match -r '\\w+' "$ab") || return 1
end
