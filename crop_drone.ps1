Add-Type -AssemblyName System.Drawing

$src = [System.Drawing.Bitmap]::FromFile("$PSScriptRoot\screen.png")

# Crop exact Vantage Drones Canada original image box from screen.png
# In screen.png, Project 03 image is on the left at ~40% vertical height
$x = [int]($src.Width * 0.050)
$y = [int]($src.Height * 0.395)
$w = [int]($src.Width * 0.428)
$h = [int]($src.Height * 0.043)

$cropRect = New-Object System.Drawing.Rectangle $x, $y, $w, $h
$target = New-Object System.Drawing.Bitmap $cropRect.Width, $cropRect.Height
$g = [System.Drawing.Graphics]::FromImage($target)
$g.DrawImage($src, (New-Object System.Drawing.Rectangle 0, 0, $cropRect.Width, $cropRect.Height), $cropRect, [System.Drawing.GraphicsUnit]::Pixel)

$target.Save("$PSScriptRoot\vantage_drones.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)

$g.Dispose()
$target.Dispose()
$src.Dispose()

Write-Host "Vantage Drones original image extracted perfectly!"
