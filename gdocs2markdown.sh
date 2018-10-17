#!/bin/bash

join_by() { local IFS="$1"; shift; echo "$*"; }

convert() {
    #FILES=${1}/*.docx
    IFS=$(echo -en "\n\b")
    FILES=`find ${1} -type f -name "*.docx" -print`
    for i in $FILES; do
        ifsname=$i #Input filenames
        i="${i// /_}" #Handle white spaces in input file names
        outfname="${i%%.*}.md" #Markdown file to write to

        #echo Converting "$ifsname" to "$outfname"
        #echo $( join_by + ${gfm_ext[*]})-$( join_by - ${off_ext})
        pandoc $ifsname -s --toc \
            --atx-headers \
            --tab-stop=2 \
            --extract-media="." \
            --from docx \
            --to $( join_by + ${md_github_ext[*]}) \
            -o $outfname
    done
}

gfm_ext=(
    gfm
    #smart
    raw_html
    fenced_code_blocks
    #gfm_auto_identifiers
    backtick_code_blocks
    autolink_bare_uris
    intraword_underscores
    strikeout
    hard_line_breaks
    # mmd_link_attributes
    emoji
    shortcut_reference_links
    #angle_brackets_escapable
    #smart
    raw_tex
    pipe_tables
    lists_without_preceding_blankline
    native_spans
    inline_code_attributes
    markdown_attribute
    #ntb
    #fancy_lists
)

off_ext=(
    raw_html
)

md_github_ext=(
    markdown_github
    smart
    pipe_tables
    #raw_html
    fenced_code_blocks
    backtick_code_blocks
    autolink_bare_uris
    space_in_atx_header
    intraword_underscores
    strikeout
    emoji
    shortcut_reference_links
    # angle_brackets_escapable
    lists_without_preceding_blankline

    hard_line_breaks
    native_spans
    gfm_auto_identifiers
    bracketed_spans
    #raw_attribute
    #link_attributes

    #inline_code_attributes
    #mmd_link_attributes
)

md_ext=(
    markdown_strict


    # pipe_tables
    # hard_line_breaks
    #autolink_bare_uris
    #strikeout
    shortcut_reference_links
    # lists_without_preceding_blankline
    native_spans
    gfm_auto_identifiers
    #auto_identifiers
)
convert ${1}
