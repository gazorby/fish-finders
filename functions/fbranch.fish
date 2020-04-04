# fyzzy search in branches in git repos
function fbranch -d ""
    git branch | cut -c 3- | fzf $FZF_CUSTOM_OPTIONS | xargs git checkout
end