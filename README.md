使用方法：将脚本上传到目标并执行

powershell -ep bypass -c ".\find_SBH.ps1"

也可以以powershell命令的形式执行

It can also be executed in the form of a PowerShell command.

————————————————————————————————————————————

Get-ChildItem -Path "C:\\" -Recurse -Include *.bat，*.exe,*.ps1 -ErrorAction SilentlyContinue | ForEach-Object {$acl = icacls $_.FullName | Out-String; if ($acl.Contains($env:USERNAME)) {$acl | Select-String -Pattern $env:USERNAME}}

————————————————————————————————————————————

为弥补PowerUp、PrivescCheck等工具在筛查可劫持程序的binary文件时常常表现不佳的缺憾，编写了这条powershell命令

To make up for the shortcoming that tools like PowerUp and PrivescCheck often perform poorly when screening hijackable binary files, this PowerShell command was written.

使用场景：在OSCP等考试中寻找服务劫持时实用性较强；在真实渗透工作中的表现尚待观察。

Use case: It is highly practical for finding service hijacks in exams such as OSCP, but its performance in real penetration testing remains to be observed.

具体的盘符、文件格式，请使用者依据需求灵活变更

Regarding specific drive letters and file formats, users should adjust them according to their needs.

示例：

![image](https://github.com/SiennaSkies/Service-Binary-Hijacking-Finder/assets/105592340/ef56d799-82e0-4c1a-b710-28e44701f011)
