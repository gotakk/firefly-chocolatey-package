$ErrorActionPreference = 'Stop';
$url64         = 'https://dl.firefly.iota.org/firefly-desktop-1.3.3.exe'
$checksum64    = 'bc9a13b0b5f3c3e3bcd598a62c2c1b3575a8bdde3f41709ade6ca24c829dcde5'

$FireflyPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  silentArgs    = '/S --force-run'
  url64bit      = $url64
  softwareName  = 'firefly*'
  checksum64    = checksum64
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @FireflyPackageArgs
