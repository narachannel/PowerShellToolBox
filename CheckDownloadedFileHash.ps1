#DataGrip
#(Get-FileHash -Path "C:\Users\deton\Downloads\datagrip-2016.2.6.exe" -Algorithm SHA256).Hash `
#-eq "7dcd1d9e70e6786aee40ffe3258fafb47d64d225249b973bb59565427459d826".ToUpper()

#PyCharm
#"1e7bc004229b21d04a9147a4032560f44622af46f83f4fcd1dc91e58d242a150".ToUpper() -eq `
#(Get-FileHash -Path "C:\Users\deton\Downloads\pycharm-professional-2016.2.3.exe"-Algorithm SHA256).Hash

#Ubuntu
#"dc7dee086faabc9553d5ff8ff1b490a7f85c379f49de20c076f11fb6ac7c0f34".ToUpper() -eq `
#(Get-FileHash -Path "C:\Users\deton\Downloads\ubuntu-16.04.1-desktop-amd64.iso"-Algorithm SHA256).Hash

#"98ad01f97f48161af20b4a1549c6b41a187c2bdd8b9f42bbe67949387fafaf6b".ToUpper() -eq `
#(Get-FileHash -Path "C:\Users\deton\Downloads\n14uj15w.exe" -Algorithm SHA256).Hash

#Ubuntu
#"0f3086aa44edd38531898b32ee3318540af9c643c27346340deb2f9bc1c3de7e".ToUpper() -eq `
#(Get-FileHash -Path "C:\Users\deton\Downloads\ubuntu-16.04.2-desktop-amd64.iso"-Algorithm SHA256).Hash

"93b3f307f567c33f7a4db4c114099b3e".ToUpper() -eq `
(Get-FileHash -Path "C:\Users\deton\Downloads\RStudio-1.0.136.exe" -Algorithm MD5).Hash