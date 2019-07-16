# Print a Windows version string like "10.0.17384.534"

$v = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\'
"$($v.CurrentMajorVersionNumber).$($v.CurrentMinorVersionNumber).$($v.CurrentBuildNumber).$($v.UBR)"
