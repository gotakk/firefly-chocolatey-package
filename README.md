## Prerequisite
1. Go to https://community.chocolatey.org/account
2. Generate a New Api Key
3. choco apikey --key GENERATED_KEY --source https://push.chocolatey.org/

## How to update package
1. Update <version> in firefly.nuspec
2. Update $url64 in chocolateyinstall.ps1
3. Update checksum64 in chocolateyinstall.ps1
4. `choco pack`
5. `choco push NUPKG_FILE.nupkg`