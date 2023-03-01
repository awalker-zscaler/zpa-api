
# Grab and invoke header
Invoke-Expression (Invoke-GithubScript "awalker-zscaler" "branding" "invoke-header.ps1" $global:zscaler.settings.Github.PAT -download)
Invoke-Header -ScriptName "ZPA Configuration Download"

# Grab and write license to host
Write-Host "`n`n$(Invoke-GithubScript "awalker-zscaler" "zpa-api" "LICENSE" $global:zscaler.settings.Github.PAT -download)" -ForegroundColor DarkGray

# Grab and invoke ZPA Authentication Scripts
Invoke-Expression (Invoke-GithubScript "awalker-zscaler" "zpa-api" "Functions/Authentication.ps1" $global:zscaler.settings.Github.PAT -download)
