一句话powershell命令
Just one line powershell command


Get-ChildItem -Path "C:\" -Recurse -Include "*.exe" -ErrorAction SilentlyContinue | ForEach-Object {$acl = icacls $_.FullName | Out-String; if ($acl.Contains($env:USERNAME)) {$acl | Select-String -Pattern $env:USERNAME}}


考虑到主流的PowerUp或PrivescCheck等工具在筛查可劫持程序的binary文件时，常常表现不佳，所以编写了这条powershell命令

使用场景：现实渗透工作中的表现尚待观察，但是在OSCP等考试中寻找服务劫持的过程中，实用性较强

使用方法：直接复制命令，并在powershell中运行即可
![image](https://github.com/SiennaSkies/Service-Binary-Hijacking-Finder/assets/105592340/ef56d799-82e0-4c1a-b710-28e44701f011)


