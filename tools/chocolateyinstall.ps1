$ErrorActionPreference = 'Stop';
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64         = 'https://github.com/iotaledger/firefly/releases/download/desktop-1.2.0/firefly-desktop-1.2.0.exe'

$GoShimmerPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'firefly*'
  checksum64    = 'b765bb343caac52d1c6de71a30f29887b2debaf298cfe169893e1cb0eccb98ac'
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @GoShimmerPackageArgs
