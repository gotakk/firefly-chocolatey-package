$ErrorActionPreference = 'Stop';
$url64         = 'https://dl.firefly.iota.org/firefly-desktop-1.4.1.exe'
$checksum64    = '700083b96a6758dc2cfeb6f32d46689b7e1133b51afc3da462562a492a2a1691'

$FireflyPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  silentArgs    = '/S --force-run'
  url64bit      = $url64
  softwareName  = 'firefly*'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @FireflyPackageArgs
