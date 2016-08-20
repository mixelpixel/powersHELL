<#
The following function and alias assignment
are for use with git to create files which
start with a period, e.g. .gitignore
Of NOTE: you can tell Windows to give a file a name starting with a period
by entering the name with a period at the beginning and at the end
e.g. ".gitignore." But in either the command line or mousing about
the new >> new text file options, it involves an extra step
and this method just does it with two words:
touch <filename>
Here's a question I wrote and answered on stack exchange:
http://superuser.com/questions/1114376/how-to-use-gits-touch-cmd-in-powershell-to-make-ignore-file
#>

function touch_file
{new-item $args[0] -itemtype file}

new-alias -name touch -value touch_file


<#
JEEESUS what a pain in the butt
Trying to get rid of the ri = Remove-Item alias association so I can use ri for the Ruby Index command
Here's the commands I ran to load the Ruby Index (oddly I don't think it shipped with the install)
1) rdoc --all --ri             # <-- not sure if I needed to do this first?
2) gem install rdoc rdoc-data
3) rdoc-data --install
Entering "rm -Force alias:ri" at the command prompt got rid of ri=Remove item for the current shell, but the command
gets reset to the default on the next launch.
Then I duplicated these files:
C:\Ruby22\bin\ri
C:\Ruby22\bin\ri.bat
And renamed them to:
C:\Ruby22\bin\rr
C:\Ruby22\bin\rr.bat
So I could enter rr to get the Ruby Index but that seemed lame.
So, how to get rid of ri = Remove-Item permanently? Well... that's what led me to making this file. Harumpf.
1) Skip this step if you already have a Powershell profile:
New-Item $profile -force -itemtype file
2) Then edit your profile:
notepad $profile
3) Add the following line to it:
del alias:ri -force
4) Save, close notepad and reload the profile with the command below or close and open Powershell to apply the profile:
. $profile

This, of course was no use since my Powershell had script execution disabled... So:
1) Start Windows PowerShell with the "Run as Administrator" option.
Only members of the Administrators group on the computer can change the execution policy.
2) Enable running unsigned scripts by entering:
set-executionpolicy remotesigned

This will allow running unsigned scripts that you write on your local computer and signed scripts from Internet.
NOTE: don't use "unrestricted"

Either way, I'm sure this will have some horrible repercussion somewhere down the road.
What a clusterfuck.

Here's a question I wrote, got down voted for and still had to answer myself on stack overflow:
http://stackoverflow.com/questions/38888642/how-to-use-ri-in-powershell-for-ruby-index-instead-of-remove-item
#>

rm -Force alias:ri


