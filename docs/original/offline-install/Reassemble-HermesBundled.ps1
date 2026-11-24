# Reassemble the official Hermes Agent Windows MSIX bundle from split parts.
# This script only concatenates the original bytes and checks SHA256.
# It does not modify the official signature.
$ErrorActionPreference = "Stop"
$ExpectedHash = "45FA4E1846096F8D68A3F76E2FC70F505C9DF596D86C1190811A2E64BB148E4"
$OutName = "HermesBundled-2026.6864.2132.0-win.msixbundle"
$Parts = @(
    "HermesBundled-2026.6864.2132.0-win.msixbundle.part01",
    "HermesBundled-2026.6864.2132.0-win.msixbundle.part02",
    "HermesBundled-2026.6864.2132.0-win.msixbundle.part03"
)

$Here = if ($PSScriptRoot) { $PSScriptRoot } else { (Get-Location).Path }
Set-Location $Here

foreach ($p in $Parts) {
    if (-not (Test-Path -LiteralPath $p)) {
        throw "缺少分片: $p（请把三个 part 文件和本脚本放在同一目录）"
    }
}

$OutPath = Join-Path $Here $OutName
if (Test-Path -LiteralPath $OutPath) {
    throw "目标文件已存在，未覆盖: $OutPath"
}

$sha = [System.Security.Cryptography.SHA256]::Create()
$dest = [System.IO.File]::Create($OutPath)
try {
    foreach ($p in $Parts) {
        $src = [System.IO.File]::OpenRead((Join-Path $Here $p))
        try {
            $buffer = New-Object byte[] (16 * 1024 * 1024)
            while (($read = $src.Read($buffer, 0, $buffer.Length)) -gt 0) {
                $dest.Write($buffer, 0, $read)
                [void]$sha.TransformBlock($buffer, 0, $read, $null, 0)
            }
        }
        finally {
            $src.Dispose()
        }
    }
    [void]$sha.TransformFinalBlock([byte[]]::new(0), 0, 0)
    $hash = ([BitConverter]::ToString($sha.Hash) -replace "-", "")
}
catch {
    $dest.Dispose()
    if (Test-Path -LiteralPath $OutPath) { Remove-Item -LiteralPath $OutPath -Force }
    throw
}
finally {
    $dest.Dispose()
    $sha.Dispose()
}

if ($hash -ne $ExpectedHash) {
    Remove-Item -LiteralPath $OutPath -Force
    throw "SHA256 校验失败。得到 $hash，期望 $ExpectedHash。请重新下载分片，不要安装该文件。"
}

Write-Host "拼合完成: $OutPath"
Write-Host "大小: $((Get-Item -LiteralPath $OutPath).Length) 字节"
Write-Host "SHA256: $hash （与官方哈希一致）"
Write-Host ""
Write-Host "离线安装（Windows 11 22H2 或更高，按公司侧载策略执行，不要绕过签名）："
Write-Host "  Add-AppxPackage -Path .\$OutName"
Write-Host "不要双击 stable.appinstaller（那是在线更新描述符）。"
Write-Host "安装成功不等于可完全断网使用；模型服务仍需公网、内网或本地端点。"
