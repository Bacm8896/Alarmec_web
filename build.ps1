# Compila Tailwind y lo incrusta en index.html entre los marcadores /*tw:start*/ y /*tw:end*/.
# Uso: .\build.ps1 -Tailwind C:\ruta\tailwindcss.exe   (CLI standalone v3.4.x)
param([string]$Tailwind = ".\tailwindcss.exe")
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
$tmp = Join-Path $env:TEMP "alarmec-tw.css"
& $Tailwind -c tailwind.config.js -i src/input.css -o $tmp --minify
$css = [IO.File]::ReadAllText($tmp).Trim()
$html = [IO.File]::ReadAllText("index.html")
$html = [regex]::Replace($html, '(?s)/\*tw:start\*/.*?/\*tw:end\*/', { param($m) "/*tw:start*/$css/*tw:end*/" })
[IO.File]::WriteAllText("index.html", $html, (New-Object Text.UTF8Encoding $false))
Write-Host "CSS incrustado: $($css.Length) bytes"
