Add-Type -AssemblyName System.Drawing

$src = [System.Drawing.Bitmap]::FromFile("$PSScriptRoot\screen.png")

# 1. Portrait (Hero)
$cropRect = New-Object System.Drawing.Rectangle ([int]($src.Width * 0.58)), ([int]($src.Height * 0.021)), ([int]($src.Width * 0.40)), ([int]($src.Height * 0.130))
$target = New-Object System.Drawing.Bitmap $cropRect.Width, $cropRect.Height
$g = [System.Drawing.Graphics]::FromImage($target)
$g.DrawImage($src, (New-Object System.Drawing.Rectangle 0, 0, $cropRect.Width, $cropRect.Height), $cropRect, [System.Drawing.GraphicsUnit]::Pixel)
$target.Save("$PSScriptRoot\portrait.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g.Dispose(); $target.Dispose()

# 2. Pond Supply
$cropRect1 = New-Object System.Drawing.Rectangle ([int]($src.Width * 0.05)), ([int]($src.Height * 0.229)), ([int]($src.Width * 0.42)), ([int]($src.Height * 0.052))
$target1 = New-Object System.Drawing.Bitmap $cropRect1.Width, $cropRect1.Height
$g1 = [System.Drawing.Graphics]::FromImage($target1)
$g1.DrawImage($src, (New-Object System.Drawing.Rectangle 0, 0, $cropRect1.Width, $cropRect1.Height), $cropRect1, [System.Drawing.GraphicsUnit]::Pixel)
$target1.Save("$PSScriptRoot\pond_supply.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g1.Dispose(); $target1.Dispose()

# 3. Zefina Art
$cropRect2 = New-Object System.Drawing.Rectangle ([int]($src.Width * 0.528)), ([int]($src.Height * 0.316)), ([int]($src.Width * 0.42)), ([int]($src.Height * 0.052))
$target2 = New-Object System.Drawing.Bitmap $cropRect2.Width, $cropRect2.Height
$g2 = [System.Drawing.Graphics]::FromImage($target2)
$g2.DrawImage($src, (New-Object System.Drawing.Rectangle 0, 0, $cropRect2.Width, $cropRect2.Height), $cropRect2, [System.Drawing.GraphicsUnit]::Pixel)
$target2.Save("$PSScriptRoot\zefina_art.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g2.Dispose(); $target2.Dispose()

# 4. Vantage Drones
$cropRect3 = New-Object System.Drawing.Rectangle ([int]($src.Width * 0.05)), ([int]($src.Height * 0.404)), ([int]($src.Width * 0.42)), ([int]($src.Height * 0.052))
$target3 = New-Object System.Drawing.Bitmap $cropRect3.Width, $cropRect3.Height
$g3 = [System.Drawing.Graphics]::FromImage($target3)
$g3.DrawImage($src, (New-Object System.Drawing.Rectangle 0, 0, $cropRect3.Width, $cropRect3.Height), $cropRect3, [System.Drawing.GraphicsUnit]::Pixel)
$target3.Save("$PSScriptRoot\vantage_drones.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)
$g3.Dispose(); $target3.Dispose()

$src.Dispose()
Write-Host "Perfectly cropped original portfolio images!"
