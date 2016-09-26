The PowerShell equivalent of 'nix:
`mkdir ch{1..9}`  
http://superuser.com/questions/1128113/multiple-directories-powershell-equivalent-of-mkdir-dir1-9/1128116  
`0..9 | foreach $_{ New-Item -ItemType directory -Name $("ch" + $_) }`  
reduces to:  
`1..9 | % $_{ md -name $("ch" + $_) }`  
and got followed up by:  
`1..9 | % $_{ mv ch$_*.* ch$_ }`  
See also: http://stackoverflow.com/questions/22531978/create-folders-with-leading-zeroes-in-powershell  
& http://superuser.com/questions/1128290/multiple-directories-padded-with-leading-zeros-from-a-single-call-to-mkdir-in-po  
  
  % = For-Each  
  
http://stackoverflow.com/questions/3494115/what-does-mean-in-powershell  
  $_ - variable value  
