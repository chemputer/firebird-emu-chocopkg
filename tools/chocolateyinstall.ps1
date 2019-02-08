
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/nspire-emus/firebird/releases/download/v1.4/firebird-emu-windows.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'firebird-emu*'

  checksum      = 'DB8A33933BE5E9327277DB8F949C98D6ED58B936B1FE07D13B67FABA9B47732F'
  checksumType  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
