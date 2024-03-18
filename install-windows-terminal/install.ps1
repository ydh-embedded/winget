$packages = Get-ChildItem -File -Path * -Include *.appx, *.msixbundle
$sortedPackages = $packages | Sort-Object -Property BaseName

for ($i = 1; $i -le $sortedPackages.Length; $i++) {
    $thePackage = $packages[$i - 1]

    Write-Host Installiere Paket $i von ($sortedPackages.Length): $thePackage.Name
    Add-AppxPackage $thePackage.FullName -ErrorAction Stop 
}

Write-Host `n-> Installation abgeschlossen
