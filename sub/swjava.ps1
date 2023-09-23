Start-Process -FilePath "powershell" $PSScriptRoot\JavaSwitcher\JavaSwitcher.ps1 -Wait
# デフォルトでwindowsに入っているpowershell5.1には-UseNewEnvironment(環境変数再読み込み)のオプションがないのでコメントアウト
# Microsoftのgithubのreleaseにある最新版のpwshならこのオプションは存在する
# Start-Process cmd -UseNewEnvironment
