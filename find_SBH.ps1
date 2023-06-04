<#
powershell -ep bypass -c ".\find_SBH.ps1"
#>

$currentUser = $env:USERNAME
Get-ChildItem -Path "C:\" -Recurse -Include *.exe,*.ps1,*.bat -ErrorAction SilentlyContinue | ForEach-Object {
    $acl = icacls $_.FullName | Out-String
    if ($acl.Contains($currentUser)) {
        $acl | Select-String -Pattern $currentUser
    }
}
