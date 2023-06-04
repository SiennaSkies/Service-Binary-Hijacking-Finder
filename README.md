使用方法：将脚本上传到目标并执行

powershell一句话命令

Just one line powershell command

————————————————————————————————————————————

Get-ChildItem -Path "C:\\" -Recurse -Include *.exe,*.ps1,*.bat -ErrorAction SilentlyContinue | ForEach-Object {$acl = icacls $_.FullName | Out-String; if ($acl.Contains($env:USERNAME)) {$acl | Select-String -Pattern $env:USERNAME}}

————————————————————————————————————————————

为弥补PowerUp、PrivescCheck等工具在筛查可劫持程序的binary文件时常常表现不佳的缺憾，编写了这条powershell命令

To make up for the shortcoming that tools like PowerUp and PrivescCheck often perform poorly when screening hijackable binary files, this PowerShell command was written.

使用场景：在OSCP等考试中寻找服务劫持时实用性较强；在真实渗透工作中的表现尚待观察。

Use case: It is highly practical for finding service hijacks in exams such as OSCP, but its performance in real penetration testing remains to be observed.

使用方法：直接复制命令，并在powershell中运行即可

![image](https://github.com/SiennaSkies/Service-Binary-Hijacking-Finder/assets/105592340/ef56d799-82e0-4c1a-b710-28e44701f011)
