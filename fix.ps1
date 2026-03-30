$html = Get-Content 'index.html' -Raw
$sareeB64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('assets/saree.png'))
$hennaB64 = [Convert]::ToBase64String([IO.File]::ReadAllBytes('assets/henna.png'))
$html = $html.Replace('src="assets/saree.png"', 'src="data:image/png;base64,' + $sareeB64 + '"')
$html = $html.Replace('src="assets/henna.png"', 'src="data:image/png;base64,' + $hennaB64 + '"')
Set-Content -Value $html -Path 'index.html' -Encoding UTF8
