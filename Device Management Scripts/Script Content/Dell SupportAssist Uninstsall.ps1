Get-CimInstance -Classname Win32_Product | Where-Object Name -Match �Dell SupportAssist� | Invoke-CimMethod -MethodName UnInstall
