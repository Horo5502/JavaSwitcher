# JavaSwitcher
JAVA_HOMEをコマンドのみで簡単に切り替えられるやつ(動作超不安定)  
PowerShellで動いてるのでもちろんWindowsのみ動作

まず、`JAVA_HOMES.txt`にjavaのバージョンとそのパスを紐づける  
`swjava.bat`が置いてあるフォルダにPathを通してコンソールで`swjava`と打てば自動でJAVA_HOMEを切り替える  
(Pathの一番上に`%JAVA_HOME%\bin`を入れる必要があります)

ちなみに管理者権限を要求されるのは、環境変数をいじるときに必ず管理者権限が必要だからです。
