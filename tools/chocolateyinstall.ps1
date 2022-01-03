$ErrorActionPreference = 'Stop';
$url64         = 

$FireflyPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  silentArgs    = '/S --force-run'
  url64bit      = 'https://dl.firefly.iota.org/firefly-desktop-1.3.2.exe'
  softwareName  = 'firefly*'
  checksum64    = '9ef4be6d365f1c1e3164136af2c98fc654e4895f1b0efc33d9b892002b47630b'
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @FireflyPackageArgs
