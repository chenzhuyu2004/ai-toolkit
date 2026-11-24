# 离线安装：官方稳定版桌面 0.22.0

这是非官方镜像说明，与 Nous Research 无隶属或代言关系。这里再分发的是官方已签名、未修改的 Hermes Agent **稳定版** Windows 侧载包，便于内网拷贝。请优先考虑官方来源。

完整逐步说明与脚本原文：

- [original/offline-install/README-offline-install-zh.txt](original/offline-install/README-offline-install-zh.txt)
- [original/offline-install/README-ZIP.txt](original/offline-install/README-ZIP.txt)
- [original/offline-install/SOURCES.txt](original/offline-install/SOURCES.txt)
- 拼合脚本：[Reassemble-HermesBundled.ps1](original/offline-install/Reassemble-HermesBundled.ps1)、[Reassemble-HermesBundled.cmd](original/offline-install/Reassemble-HermesBundled.cmd)

## 包信息

| 项 | 值 |
| --- | --- |
| 产品 / 源版本 | 0.22.0（不是 GitHub 源码/CLI 的 v0.23.3） |
| Windows 包版本 | `2026.6864.2132.0` |
| 包标识 | `NousResearch.HermesBundled` |
| 形态 | 通用已签名 `.msixbundle`（x64 + arm64） |
| 最低系统 | Windows 11 22H2（10.0.22621.0）或更高；Windows 10 不能安装此 MSIX |
| 完整大小 | 4 333 826 858 字节 |
| 完整文件官方 SHA256 | `45faa4e1846096f8d68a3f76e2fc70f505c9df596d86c1190811a2e64bb148e4` |

官方来源：

- https://hermes-assets.nousresearch.com/releases/win32/stable/stable.appinstaller
- https://hermes-assets.nousresearch.com/releases/tag/rc.3-v0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle
- https://github.com/NousResearch/hermes-agent

整理与哈希记录时间：2026-11-21（Asia/Shanghai，UTC+8）。官方包 HTTP Last-Modified：2026-10-14 01:54:59 GMT（2026-10-14 09:54:59 Asia/Shanghai）。

## Release 下载（保留既有地址）

发布页：<https://github.com/chenzhuyu2004/hermes-windows-offline/releases/tag/official-stable-0.22.0>

附件根路径：`https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/`

### 原始分片（按字节切开，内容未改）

| 文件 | 大小（字节） | SHA256 |
| --- | ---: | --- |
| [HermesBundled-2026.6864.2132.0-win.msixbundle.part01](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle.part01) | 1 610 612 736 | `676afc90c645b2a46c7ace375738dec0a491ba23f745db84da0678515474de26` |
| [HermesBundled-2026.6864.2132.0-win.msixbundle.part02](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle.part02) | 1 610 612 736 | `ed9f9efbef26570ed9bc84e988c81fafd384e66a82b52ac774d80c9bc39d0ffb` |
| [HermesBundled-2026.6864.2132.0-win.msixbundle.part03](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle.part03) | 1 112 601 386 | `45c8ae06749042c57c8e81dfcc3f3ea75aab09126b776264d542a4d0f3795f10` |

对应校验和文件：[SHA256SUMS.txt](original/offline-install/SHA256SUMS.txt)、[SOURCES.txt](original/offline-install/SOURCES.txt)。另有 [LICENSE](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/LICENSE)、[README-offline-install-zh.txt](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/README-offline-install-zh.txt)、[Reassemble-HermesBundled.ps1](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/Reassemble-HermesBundled.ps1)、[Reassemble-HermesBundled.cmd](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/Reassemble-HermesBundled.cmd)、[AppxBundleManifest.xml](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/AppxBundleManifest.xml)、[stable.appinstaller](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/stable.appinstaller)（仅作官方描述符副本；**离线安装不要使用它**）。

### 标准 ZIP（公司下载限制拦截 `.part` 时使用）

这些是未加密的标准 ZIP，每个包里只有一个原始分片，文件名保持不变。

| ZIP | ZIP 本身 SHA256 |
| --- | --- |
| [HermesBundled-2026.6864.2132.0-win.msixbundle.part01.zip](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle.part01.zip) | `0afd06abacc3dda7a8b82fab6952f6a44f4845c5a434cf8d5a5819ad6a9eb601` |
| [HermesBundled-2026.6864.2132.0-win.msixbundle.part02.zip](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle.part02.zip) | `f09d5d2b57c37f254457b3d91ea4a5a91bd0e05e1b792ea8120dd5addedc7dd0` |
| [HermesBundled-2026.6864.2132.0-win.msixbundle.part03.zip](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle.part03.zip) | `e60b4fe05a9daca3d7a9ce2fc46ccbe8dd79f245df300149e901b062a679d2a6` |

说明与校验和：[README-ZIP.txt](original/offline-install/README-ZIP.txt)、[SHA256SUMS-ZIP.txt](original/offline-install/SHA256SUMS-ZIP.txt)、Release 中的 [README-ZIP.txt](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/README-ZIP.txt)、[SHA256SUMS-ZIP.txt](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/SHA256SUMS-ZIP.txt)。

解压后的 `.part` 哈希必须与上表原始分片一致。请把三个 `.part` 放到同一目录后再拼合。

### 备用：part03 重打包 ZIP

若原始 `part03.zip` 下载或解压遇到问题，Release 中另有一份备用包，内含**同一份**原始 `part03`（哈希不变）：

- [HermesBundled-2026.6864.2132.0-win-part03-repacked.zip](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/HermesBundled-2026.6864.2132.0-win-part03-repacked.zip)
- ZIP 本身 SHA256：`6525c0d56ea6a85c83eb4920d2b0d673f4511950616e2028d2a4029fcef84cb7`
- 解压出的 part03 SHA256 仍须为：`45c8ae06749042c57c8e81dfcc3f3ea75aab09126b776264d542a4d0f3795f10`
- 校验和：[SHA256SUMS-part03-repacked.txt](original/offline-install/SHA256SUMS-part03-repacked.txt)、[Release 副本](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/SHA256SUMS-part03-repacked.txt)

## 拼合与校验

把三个 `.part` 与拼合脚本放在同一目录。PowerShell：

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\Reassemble-HermesBundled.ps1
```

或命令提示符：`Reassemble-HermesBundled.cmd`（内部使用 `copy /b`）。拼合后必须校验：

```powershell
Get-FileHash -Algorithm SHA256 .\HermesBundled-2026.6864.2132.0-win.msixbundle
```

结果必须是 `45faa4e1846096f8d68a3f76e2fc70f505c9df596d86c1190811a2e64bb148e4`（大小写不敏感）。不一致时不要安装。

## 安装

按公司侧载与签名策略执行，不要绕过安全限制。不要双击 `stable.appinstaller`。示例：

```powershell
Add-AppxPackage -Path .\HermesBundled-2026.6864.2132.0-win.msixbundle
```

也可以在资源管理器中双击拼合后的 `.msixbundle`。安装成功不等于可完全断网使用；模型服务仍需公网、内网或本地端点。

其他限制（Store 版、canary、Windows 10 源码安装路径、联网引导安装器 Hermes-Setup.exe 等）见 [README-offline-install-zh.txt](original/offline-install/README-offline-install-zh.txt) 第 5 节。
