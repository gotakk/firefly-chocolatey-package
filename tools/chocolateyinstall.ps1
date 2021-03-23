$ErrorActionPreference = 'Stop';
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64         = 'https://github.com/iotaledger/firefly/releases/download/desktop-0.3.1/firefly-desktop-0.3.1.exe'

$GoShimmerPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'firefly*'
  checksum64    = 'a05291e5bb1b9a70e0feafa67195f844586209c64a8c1a9a2a54c7656332abfc'
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @GoShimmerPackageArgs
