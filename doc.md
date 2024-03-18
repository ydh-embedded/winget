

	## #1 die Zwei Ordner im PowerShell öffnen

	## #2 und jeweils .\install.ps1 eingeben





	Befehlszeile im Profil  JDK 21

	``
	
		%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoExit -NoProfile -NoLogo -File "C:\Users\danny.heinicke\Documents\dev\settings\java-powershell-profile.ps1"`
	
	``


	Die java-powershell-profile.ps1 Datei wurde angepasst

	``

		# Pfad zum Java-Installationsverzeichnis anpassen.
		$installationLocation =  "${home}\desktop\jdk-21.0.2"
		$binaryLocation = Join-Path -Path $installationLocation -ChildPath bin

		# Temporäre Umgebungsvariablen erstellen.
		$env:JAVA_HOME = $installationLocation
		$env:PATH = "$binaryLocation;$($env:PATH)"

		Write-Host -ForegroundColor Cyan "Installierte Java-Version:"
		Write-Host Path: (Get-Command java).Source
		java --version
		Write-Host ""

	``


	

	https://jdk.java.net/22/