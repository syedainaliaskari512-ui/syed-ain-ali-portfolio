Add-Type -AssemblyName System.Drawing

$w = 1200
$h = 750
$bmp = New-Object System.Drawing.Bitmap $w, $h
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias

# 1. Dark Gradient Background
$rect = New-Object System.Drawing.Rectangle 0, 0, $w, $h
$brush = New-Object System.Drawing.Drawing2D.LinearGradientBrush $rect, ([System.Drawing.ColorTranslator]::FromHtml("#080B12")), ([System.Drawing.ColorTranslator]::FromHtml("#161C2A")), 45
$g.FillRectangle($brush, $rect)
$brush.Dispose()

# 2. Tech Grid Lines
$gridPen = New-Object System.Drawing.Pen ([System.Drawing.Color]::FromArgb(25, 255, 255, 255)), 1
for ($x = 0; $x -lt $w; $x += 60) {
    $g.DrawLine($gridPen, $x, 0, $x, $h)
}
for ($y = 0; $y -lt $h; $y += 60) {
    $g.DrawLine($gridPen, 0, $y, $w, $y)
}
$gridPen.Dispose()

# 3. Ambient Crimson Glow Circle
$glowBrush = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(40, 230, 30, 42))
$g.FillEllipse($glowBrush, 350, 120, 500, 500)
$glowBrush.Dispose()

# 4. Draw Drone Graphic Arms & Motors
$dronePen = New-Object System.Drawing.Pen ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A")), 4

# Main Body Frame
$bodyRect = New-Object System.Drawing.Rectangle 480, 280, 240, 140
$g.FillRectangle((New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#1A202C"))), $bodyRect)
$g.DrawRectangle($dronePen, $bodyRect)

# Rotor Arms
$g.DrawLine($dronePen, 480, 290, 260, 160)
$g.DrawLine($dronePen, 720, 290, 940, 160)
$g.DrawLine($dronePen, 480, 410, 260, 540)
$g.DrawLine($dronePen, 720, 410, 940, 540)

# Rotor Motors
$g.FillEllipse((New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A"))), 230, 130, 60, 60)
$g.FillEllipse((New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A"))), 910, 130, 60, 60)
$g.FillEllipse((New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A"))), 230, 510, 60, 60)
$g.FillEllipse((New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A"))), 910, 510, 60, 60)

# Rotor Blades
$rotorPen = New-Object System.Drawing.Pen ([System.Drawing.Color]::FromArgb(120, 255, 255, 255)), 2
$g.DrawEllipse($rotorPen, 170, 70, 180, 180)
$g.DrawEllipse($rotorPen, 850, 70, 180, 180)
$g.DrawEllipse($rotorPen, 170, 450, 180, 180)
$g.DrawEllipse($rotorPen, 850, 450, 180, 180)
$rotorPen.Dispose()

# Camera Lens Sensor
$g.FillEllipse((New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#000000"))), 560, 320, 80, 80)
$g.DrawEllipse((New-Object System.Drawing.Pen ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A")), 2), 560, 320, 80, 80)
$g.FillEllipse((New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A"))), 585, 345, 30, 30)

# 5. Technical HUD Text Overlay
$fontTitle = New-Object System.Drawing.Font("Arial", [float]26)
$fontSub = New-Object System.Drawing.Font("Arial", [float]13)
$whiteBrush = New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#F2F2F2"))
$crimsonBrush = New-Object System.Drawing.SolidBrush ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A"))

$g.DrawString("VANTAGE DRONES CANADA", $fontTitle, $whiteBrush, [float]60, [float]60)
$g.DrawString("ENTERPRISE AGRICULTURAL TELEMETRY SYSTEM", $fontSub, $crimsonBrush, [float]60, [float]110)

# Corner HUD Target Marks
$hudPen = New-Object System.Drawing.Pen ([System.Drawing.ColorTranslator]::FromHtml("#E61E2A")), 2
$g.DrawLine($hudPen, 40, 40, 100, 40)
$g.DrawLine($hudPen, 40, 40, 40, 100)

$g.DrawLine($hudPen, $w - 40, 40, $w - 100, 40)
$g.DrawLine($hudPen, $w - 40, 40, $w - 40, 100)

$g.DrawLine($hudPen, 40, $h - 40, 100, $h - 40)
$g.DrawLine($hudPen, 40, $h - 40, 40, $h - 100)

$g.DrawLine($hudPen, $w - 40, $h - 40, $w - 100, $h - 40)
$g.DrawLine($hudPen, $w - 40, $h - 40, $w - 40, $h - 100)

# Save image
$bmp.Save("$PSScriptRoot\vantage_drones.jpg", [System.Drawing.Imaging.ImageFormat]::Jpeg)

# Clean up
$fontTitle.Dispose()
$fontSub.Dispose()
$whiteBrush.Dispose()
$crimsonBrush.Dispose()
$dronePen.Dispose()
$hudPen.Dispose()
$g.Dispose()
$bmp.Dispose()

Write-Host "Custom Vantage Drones technical graphic image rendered clean!"
