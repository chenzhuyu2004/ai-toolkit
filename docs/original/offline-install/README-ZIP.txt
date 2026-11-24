这是非官方镜像，与 Nous Research 无隶属或代言关系。
下面三个文件是标准、未加密的 ZIP 压缩包（不是把分片改名为 .zip）。每个 ZIP 里只有一个原始分片，文件名保持不变。

  HermesBundled-2026.6864.2132.0-win.msixbundle.part01.zip
  HermesBundled-2026.6864.2132.0-win.msixbundle.part02.zip
  HermesBundled-2026.6864.2132.0-win.msixbundle.part03.zip

ZIP 本身的 SHA256 见 SHA256SUMS-ZIP.txt。解压出的分片哈希必须与已发布的原始 .part 一致。

用法（Windows 11 22H2 或更高）：

1. 下载上述三个 ZIP，不要只下其中一个。

2. 分别解压。建议对每个 ZIP 右键选择“全部解压缩”，并把目标文件夹选为同一个目录。
   注意：如果直接双击或让系统自动新建子文件夹，三个 .part 文件可能会分别落在不同目录。请把下面三个文件移到同一目录后再继续：
     HermesBundled-2026.6864.2132.0-win.msixbundle.part01
     HermesBundled-2026.6864.2132.0-win.msixbundle.part02
     HermesBundled-2026.6864.2132.0-win.msixbundle.part03

3. 在该目录打开“命令提示符”，执行：

   copy /b HermesBundled-2026.6864.2132.0-win.msixbundle.part01+HermesBundled-2026.6864.2132.0-win.msixbundle.part02+HermesBundled-2026.6864.2132.0-win.msixbundle.part03 HermesBundled-2026.6864.2132.0-win.msixbundle

4. 校验拼合后的完整文件。在 PowerShell 中执行：

   Get-FileHash -Algorithm SHA256 .\HermesBundled-2026.6864.2132.0-win.msixbundle

   结果必须是：
   45faa4e1846096f8d68a3f76e2fc70f505c9df596d86c1190811a2e64bb148e4

   不一致时不要安装。

5. 安装（按公司侧载和签名策略执行，不要绕过安全限制）。不要双击 stable.appinstaller。示例：

   Add-AppxPackage -Path .\HermesBundled-2026.6864.2132.0-win.msixbundle

安装成功不等于可完全断网使用；模型服务仍需公网、内网或本地端点。
本包是官方稳定版 0.22.0 侧载包，需要 Windows 11 22H2 或更高，Windows 10 不能安装。
