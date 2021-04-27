$ErrorActionPreference = 'Stop';
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64         = 'https://github.com/iotaledger/firefly/releases/download/desktop-1.0.0/firefly-desktop-1.0.0.exe'

$GoShimmerPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'firefly*'
  checksum64    = 'c792976e02a9b4dae0913d0e064d9f96587dc59acc707014d1c7096d0c16ed26'
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @GoShimmerPackageArgs
