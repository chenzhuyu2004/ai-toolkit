# hermes-windows-offline

**Unofficial mirror. Not affiliated with, endorsed by, or maintained by Nous Research.**

This repository hosts an unmodified copy of the official Nous Research Hermes Agent **stable** Windows sideload package (universal signed `.msixbundle`, product version **0.22.0**, Windows package version **2026.6864.2132.0**). It requires **Windows 11 22H2 or later**. It is not the GitHub source/CLI release v0.23.3.

The official package is larger than GitHub’s per-asset limit of 2 GiB, so the original file is published as numbered chunks on the [Releases](../../releases) page. Reassemble the parts, verify the official SHA256, then install the `.msixbundle`. Do not use `stable.appinstaller` for offline/intranet installation.

Official SHA256 of the complete bundle:

`45faa4e1846096f8d68a3f76e2fc70f505c9df596d86c1190811a2e64bb148e4`

Official sources:

- https://hermes-assets.nousresearch.com/releases/win32/stable/stable.appinstaller
- https://hermes-assets.nousresearch.com/releases/tag/rc.3-v0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle
- https://github.com/NousResearch/hermes-agent

Hermes Agent is licensed under the MIT License; see [LICENSE](LICENSE) (official text from tag v0.22.0). Third-party components inside the official installer keep their own licenses as shipped in that package.

请到 Releases 下载分片，按说明拼合、校验后再安装。
