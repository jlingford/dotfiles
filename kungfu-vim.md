kungfu vim

# Normal mode tips
## tpope plugins
**Surround**
change surrounding quotes/brackets
`cs"'` = changes double quotes to single quotes
`cs([` = change () to []
adding quotes/brackets to a word:
`ysiw(` = addes () around a ( word )
`ysiw)` = adds () around a word **without the spaces**. e.g. {hello}
adding quotes/brackets to entire line:
`yss)` = adds () with no spaces to entire line
delete surrounding quotes/brackets:
`ds}` = deletes {} that contain no spaces

**Comment out stuff**
`gcc` = comments out a line
`gc<motion>` = comments out text within a motion
    e.g. `gcap` = comments out entire paragraph
can also be used in visual select mode with just `gc`
can comment out specific lines in *cmd mode*, e.g. `:5,34Commentary` or
`:g/<example>/Commentary`

**Git fugitive**
uses git from vim. `:G` opens git in a new window. can be combined with regular git
commands wihtout directly opening git in a new window, like `:G add` or `:G
commit`

# Bash and command line tips

jumping back to the previous directory
`cd -`

making a number of files/folders with a sequential suffix:
`for i in {2..10}; do cp example_1.txt "example_$i.pdf"; done;`

for Fish shell, there is no `fc` command to edit the last command.
    instead, use <arrow up> to the previous command then press <Alt-v> to open in vim


