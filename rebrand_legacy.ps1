Get-ChildItem -Recurse -Include *.md,*.html | ForEach-Object {
    $file = $_.FullName
    Write-Host "Processing $file"
    $content = Get-Content $file -Raw
    $content = $content -replace 'CindoLab', 'Sparta Gold'
    $content = $content -replace 'CindoPay', 'Sparta Gold'
    $content = $content -replace '© 2025 Sparta Gold', '© 2026 Sparta Gold'
    $content = $content -replace '© 2025 CindoLab', '© 2026 Sparta Gold'
    Set-Content $file $content
}
