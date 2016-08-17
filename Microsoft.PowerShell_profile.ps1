<#
The following function and alias assignment
are for use with git to create files which
start with a period, e.g. .gitignore
#>

function touch_file
{new-item $args[0] -itemtype file}
new-alias -name touch -value touch_file

