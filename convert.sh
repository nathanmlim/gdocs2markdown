#!/bin/bash

join_by() { local IFS="$1"; shift; echo "$*"; }

convert() {
    #FILES=${1}/*.docx
    IFS=$(echo -en "\n\b")
    FILES=`find ${1} -type f -name "*.docx" -print`
    for i in $FILES; do
        infname=$i
        i="${i// /_}"
        outfname="${i%%.*}.md"
        echo Converting "$infname" to "$outfname"
        pandoc $infname --tab-stop=2 --atx-headers -s \
            --from docx \
            --to $( join_by + markdown_strict+${extensions[*]}) \
            -o $outfname
    done
}


extensions=(
    pipe_tables
    hard_line_breaks
    autolink_bare_uris
    strikeout
    shortcut_reference_links
    lists_without_preceding_blankline
    native_spans
    auto_identifiers
)
convert ${1}
