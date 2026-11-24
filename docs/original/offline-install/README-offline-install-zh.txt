这是非官方镜像，与 Nous Research 无隶属或代言关系。
这里发布的是官方稳定版 Windows 侧载包的未修改原件（含原有数字签名），仅为方便内网拷贝。
请优先从官方来源获取：
  https://hermes-assets.nousresearch.com/releases/win32/stable/stable.appinstaller
  https://hermes-assets.nousresearch.com/releases/tag/rc.3-v0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle

整理时间：2026-11-21（Asia/Shanghai，UTC+8）

------------------------------------------------
1. 这是什么
------------------------------------------------
官方稳定侧载源在 2026-11-21 指向的完整 Windows 桌面包：

  完整文件名：HermesBundled-2026.6864.2132.0-win.msixbundle
  完整大小：4333826858 字节（约 4.04 GiB）
  官方 SHA256：45faa4e1846096f8d68a3f76e2fc70f505c9df596d86c1190811a2e64bb148e4

  产品 / 源版本：0.22.0
  Windows 包版本：2026.6864.2132.0
  包标识：NousResearch.HermesBundled
  最低系统：Windows 11 22H2（10.0.22621.0）
  通用包，内含 x64 与 arm64。Windows 会按本机架构安装。

这不是 GitHub 源码 / CLI 的 v0.23.3 发布包。截至 2026-11-21，官方稳定桌面侧载包仍是 0.22.0。

因 GitHub Release 规定单个附件必须小于 2 GiB，原包被按字节切成 3 个未改动的分片（1.5 GiB、1.5 GiB、剩余）。按顺序拼合后应得到与官方完全相同的文件和哈希。签名未被修改。

分片：
  HermesBundled-2026.6864.2132.0-win.msixbundle.part01  1610612736 字节
    SHA256：676afc90c645b2a46c7ace375738dec0a491ba23f745db84da0678515474de26
  HermesBundled-2026.6864.2132.0-win.msixbundle.part02  1610612736 字节
    SHA256：ed9f9efbef26570ed9bc84e988c81fafd384e66a82b52ac774d80c9bc39d0ffb
  HermesBundled-2026.6864.2132.0-win.msixbundle.part03  1112601386 字节
    SHA256：45c8ae06749042c57c8e81dfcc3f3ea75aab09126b776264d542a4d0f3795f10

------------------------------------------------
2. 在 Windows 上拼合并校验
------------------------------------------------
把三个 part 文件、Reassemble-HermesBundled.ps1 放在同一目录。在该目录打开 PowerShell：

  Set-ExecutionPolicy -Scope Process Bypass
  .\Reassemble-HermesBundled.ps1

脚本会流式拼合并自动校验 SHA256。哈希必须是：
  45faa4e1846096f8d68a3f76e2fc70f505c9df596d86c1190811a2e64bb148e4
（大小写不敏感。）不一致时不要安装。

也可以用命令提示符：

  Reassemble-HermesBundled.cmd

该命令使用 copy /b。拼合后请务必再运行：

  Get-FileHash -Algorithm SHA256 .\HermesBundled-2026.6864.2132.0-win.msixbundle

也可以先分别校验三个分片，对照 SHA256SUMS.txt。

------------------------------------------------
3. 离线安装
------------------------------------------------
先确认：Windows 11 22H2 或更高。Windows 10 不能安装此 MSIX。
按公司规定允许安装已签名的非商店应用（侧载）。不要绕过签名或安全策略。

不要双击 stable.appinstaller。那是官方在线描述符，会访问 hermes-assets.nousresearch.com。

当前用户安装示例：

  Add-AppxPackage -Path ".\HermesBundled-2026.6864.2132.0-win.msixbundle"

也可以在资源管理器中双击拼合后的 .msixbundle。

若系统要求开启侧载：到“设置 > 系统 > 适用于开发人员”，按公司政策开启“侧载应用”。被策略拦截时走正规申请，不要改包或去签名。

安装成功不等于可完全断网使用。包内有运行时和界面，但模型 / API 仍需能访问官方服务，或公司内网 / 本地端点。

------------------------------------------------
4. 许可
------------------------------------------------
Hermes Agent 官方项目为 MIT License，版权归 Nous Research（见本目录 LICENSE，取自官方 v0.22.0 标签，原文未改）。按该许可证复制和再分发时须保留版权与许可声明。

本镜像只再分发官方已签名安装包的未修改原件。安装包内还含 Python、Node、Electron、Chromium 等第三方组件，它们各有自己的许可证，以官方包内所载条款为准。这里不另行编造这些第三方许可证。

本仓库与发布内容按 MIT 许可证“按原样”提供，不含任何担保。

------------------------------------------------
5. 其他限制
------------------------------------------------
- 官网对 Windows 10 的支持走源码安装脚本，与本 MSIX 不是同一条路径。
- 官网首页的 Hermes-Setup.exe 是联网引导安装器，不是完整离线包，这里未提供。
- Microsoft Store 版身份和更新渠道与本侧载包不同。
- 官方 canary 是另一个应用（NousResearch.HermesBundledCanary），这里未收录。
- 签名含 RFC3161 时间戳；最终能否安装取决于目标电脑的证书信任和公司策略。
