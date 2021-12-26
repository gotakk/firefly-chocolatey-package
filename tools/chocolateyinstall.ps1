$ErrorActionPreference = 'Stop';
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64         = 'https://github.com/iotaledger/firefly/releases/download/desktop-1.3.0/firefly-desktop-1.3.0.exe'

$GoShimmerPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'firefly*'
  checksum64    = '2c31b094f9ecb70047b313b805964bec149c7c0ae44f5b6178d2dc0dbced533c'
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @GoShimmerPackageArgs
