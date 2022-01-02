$ErrorActionPreference = 'Stop';
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64         = 'https://dl.firefly.iota.org/firefly-desktop-1.3.1.exe'

$GoShimmerPackageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'firefly*'
  checksum64    = 'b3b25b88e88889882c93a9d95cdd6a4ecd995bd0eff892a390604a32d189c443'
  checksumType64= 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @GoShimmerPackageArgs
