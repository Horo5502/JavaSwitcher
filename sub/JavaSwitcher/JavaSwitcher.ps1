if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole("Administrators")) {
    Start-Process powershell.exe "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}

$javahomestextfilepath = "$PSScriptRoot\JAVA_HOMES.txt"
$javatable = @{}

$contentlist = Get-Content $javahomestextfilepath
foreach ($i in $contentlist) {
    $javaversion, $javapath = $i.Split("=")
    $javatable.Add($javaversion, $javapath)
}

Write-Host "Available Java version:"
Write-Output $javatable
Write-Output `n

$javaversionrequest = Read-Host "java version?"

if ($javatable.ContainsKey($javaversionrequest)) {
    [System.Environment]::SetEnvironmentVariable("JAVA_HOME", $javatable[$javaversionrequest], "Machine")
    Write-Host ($javatable[$javaversionrequest] + ' is set.')
}
else {
    Write-Output "JAVA_HOME does not contain $javaversionrequest"
}

Start-Sleep 2