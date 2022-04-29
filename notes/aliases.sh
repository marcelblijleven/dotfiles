note () {
    local notes_dir="~/notes/docs/"
    mkdir -p ${notes_dir}
    local filename="$1"
    local existing_filename=$(cd $notes_dir && fzf -q $filename -1 -0)
    if [ -z "$existing_filename" ]
    then
        local fullpath="${notes_dir}${filename}"
    else
        local fullpath="${notes_dir}${existing_filename}"
    fi
    vim $fullpath
}
