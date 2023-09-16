# JavaSwitcher
JAVA_HOMEを自動で切り替えるやつ(動作超不安定)  
PowerShellで動いてるのでもちろんWindowsのみ動作

まず、`JAVA_HOMES.txt`にjavaのバージョンとそのパスを紐づける  
`swjava.bat`が置いてあるフォルダにPathを通してコンソールで`swjava`と打てば自動でJAVA_HOMEを切り替える  
(Pathの一番上に`%JAVA_HOME%\bin`を入れる必要があります)
