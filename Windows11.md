# Windows 11

## Problem

The __Smart App Control__ in Windows 11 does not allow to install keyboard layouts created with the Microsoft Keyboard Layout Creator (MKLC).

The application needs to be digitally signed. Whether it is downloaded from the Internet, or created by a developer locally on their PC.

## Solution

_Note 1: not tested yet_
_Note 2: based on [the-automator.com](https://www.the-automator.com/how-to-self-certify-executables/) article._
_Note 3: also see this article from [learn.microsoft.com](https://learn.microsoft.com/en-us/entra/identity-platform/howto-create-self-signed-certificate)._

To locally self-certify the installer for your keyboard layout you need to follow the steps:

1. Download Win SDK from [Microsoft.com](https://developer.microsoft.com/en-us/windows/downloads/windows-sdk/)
2. Install __signtool.exe__. There is conflicting information about the exact components required. When running `winsdksetup.exe` the following components may be required:
    - Application Verifier For Windows
    - Windows App Certification Kit
    - Windows SDK Signing Tools for Desktop Apps
3. Add _signtool.exe_ location to the `PATH` enfironment variable.
4. Go to the directory of the newly compiled keyboard layout installer files, then run the following PowerShell script (to create the certificate and to sign the installer — in this example `ESL_ia64.msi`):
```
; Create certificate:
$cert = New-SelfSignedCertificate -Subject "ESL_ia64.msi" -CertStoreLocation "cert:\LocalMachine\My" -type CodeSigning
; Create password:
$pwd = ConvertTo-SecureString -String "987654" -Force -AsPlainText
; Export certificate to a file:
Export-PfxCertificate -cert $cert -FilePath ESL_ia64.pfx -Password $pwd
; Sign the executable:
signtool.exe sign /f ESL_ia64.pfx /fd sha1 /p 987654 ESL_ia64.msi
```

Notes to self:

- `/fd sha1` is the default digest algorithm (encryption)
- to use `sha256` it must be specified both in the command lines of both: the `New-SelfSignedCertificate` and the `signtool.exe`.
- `New-SelfSignedCertificate ... -HashAlgorithm SHA256` and `signtool.exe ... /fd sha256`
- How to add "Timestamp"? Is it necessary?
- `signtool.exe timestamp /tr http://timestamp.digicert.com /td SHA256 ... `
- `signtool.exe sign /fd SHA256 exe-to-sign.exe`

