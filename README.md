# hermes-windows-offline

非官方合集：前端设计 skill、UI/UX 检索数据与脚本、Hermes Agent Windows 离线安装说明，以及离线宠物资源索引。

**本仓库与 Nous Research、Anthropic、Next Level Builder 均无隶属、代言或官方维护关系。** 这里收录的官方安装包是未修改的已签名原件；设计 skill 按各自上游许可再分发，并销钉到具体提交。不要把本仓库的 GitHub Source code zip 当成完整安装包。

## 目录

- [这是什么](#这是什么)
- [设计 Skill](#设计-skill)
- [离线安装（官方稳定版桌面 0.22.0）](#离线安装官方稳定版桌面-0220)
- [离线宠物包](#离线宠物包)
- [许可](#许可)
- [更新方式](#更新方式)
- [文档索引](#文档索引)

## 这是什么

本仓库已经不只是安装包镜像源。当前提供三类可导航内容：

1. **设计工具与 skill**：可实际使用的 skill 文件（含 UI/UX 的脚本与数据），见 [`skills/`](skills/README.md)。
2. **离线安装说明**：官方 Hermes Agent **稳定版** Windows 侧载包（通用已签名 `.msixbundle`，产品版本 **0.22.0**，Windows 包版本 **2026.6864.2132.0**），分片、校验和与拼合脚本的说明。安装包本体在 [Releases / official-stable-0.22.0](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/tag/official-stable-0.22.0)，不在 git 树里。
3. **离线宠物入门包**：五个公开图鉴宠物的下载入口与许可说明。宠物包同样只在 Release 中，本仓库不存放精灵图二进制。

这不是：

- Nous Research 或 Anthropic 的官方发布渠道
- GitHub 上游源码 / CLI 的最新版（截至整理时，官方稳定桌面侧载包仍是 0.22.0，不是源码标签 v0.23.3）
- 字体文件、npm 运行时、模型权重，或已注册到某个 Agent 全局 skill 商店的安装
- 对“最强前端 skill”的评测结论；下列两份是常见、内容完整的推荐上游，不是基准测试排名

最低安装系统是 **Windows 11 22H2 或更高**。安装成功也不等于可完全断网使用：模型与许多可选网络服务仍需要公网、内网或本地端点。

## 设计 Skill

详细用法、依赖与离线限制见 [`docs/skills.md`](docs/skills.md)，来源销钉见 [`docs/provenance.md`](docs/provenance.md)。

| Skill | 上游 | 许可（已核原文） | 本仓库路径 |
| --- | --- | --- | --- |
| frontend-design | [anthropics/skills](https://github.com/anthropics/skills/tree/main/skills/frontend-design) | Apache License 2.0 | [`skills/frontend-design/`](skills/frontend-design/) |
| ui-ux-pro-max（v2.15.0） | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | MIT | [`skills/ui-ux-pro-max/`](skills/ui-ux-pro-max/) |

- **frontend-design** 是一份自包含的设计指导（`SKILL.md` + `LICENSE.txt`），没有额外脚本或数据。
- **ui-ux-pro-max** 除 `SKILL.md` 外还带齐了检索脚本与 CSV/JSON 数据。搜索本身只需 Python 3 标准库，数据路径按脚本自己的位置解析，不依赖 `CLAUDE_PLUGIN_ROOT`。上游 `SKILL.md` 里的调用示例面向 Claude 插件布局，通用用法见 [`skills/ui-ux-pro-max/adapters/README.md`](skills/ui-ux-pro-max/adapters/README.md)（本地说明，已标明，不是对上游原文的静默改写）。

Skill 是给模型/助手阅读的**说明与本地数据**，不是字体、浏览器、Node 运行时或模型权重。设计稿若使用 Google Fonts 等，预览或落地时仍可能需要网络。

在仓库根目录做一次离线检索示例：

```bash
python3 skills/ui-ux-pro-max/scripts/search.py "keyboard focus modal" --domain ux
```

## 离线安装（官方稳定版桌面 0.22.0）

完整步骤、来源与校验和见 [`docs/offline-install.md`](docs/offline-install.md)。原文与脚本在 [`docs/original/offline-install/`](docs/original/offline-install/)。

要点：

- 完整官方文件 SHA256：`45faa4e1846096f8d68a3f76e2fc70f505c9df596d86c1190811a2e64bb148e4`（4 333 826 858 字节）
- GitHub Release 单个附件必须小于 2 GiB，因此原包被切成三个未改动分片。因部分环境拦截 `.part` 后缀，Release 里另有三个标准 ZIP（每个 ZIP 内是原始分片，不是把分片改名为 `.zip`），以及一份备用的 part03 重打包 ZIP。
- 请到 [official-stable-0.22.0](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/tag/official-stable-0.22.0) 下载分片或 ZIP，按说明拼合并校验后再安装。不要使用 `stable.appinstaller` 做离线/内网安装（它会访问官方在线地址）。
- 仓库页面的 Source code zip / tarball **不是**完整安装包。

官方来源：

- https://hermes-assets.nousresearch.com/releases/win32/stable/stable.appinstaller
- https://hermes-assets.nousresearch.com/releases/tag/rc.3-v0.22.0/HermesBundled-2026.6864.2132.0-win.msixbundle
- https://github.com/NousResearch/hermes-agent

## 离线宠物包

说明见 [`docs/pets.md`](docs/pets.md)。下载：

- [Hermes-Pets-Offline-for-0.22.0.zip](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/Hermes-Pets-Offline-for-0.22.0.zip)（约 9 MB，五只宠物）

请把 `pets/<slug>/` 拷到 `%LOCALAPPDATA%\hermes\pets\<slug>\`（若设置了 `HERMES_HOME` 则改放到该目录下的 `pets`）。然后使用 `hermes pets select boba`（或其他 slug）。不要用会访问图鉴网络的 `hermes pets install`。本包制作时做过静态校验，**没有在 Windows 真机上实际测试**桌面端显示。

宠物许可较复杂，不能写成单一 MIT，详见宠物说明。

## 许可

请先读 [`LICENSING.md`](LICENSING.md)。根目录 [`LICENSE`](LICENSE) 只是官方 Hermes Agent 的 MIT 原文，不能套到全部第三方内容上。

## 更新方式

设计 skill 已销钉到具体上游 commit，见 [`docs/provenance.md`](docs/provenance.md)。本仓库**没有**自动同步例程；若需更新，应人工核对上游许可与文件后再提交。安装包与宠物包如有新的 Release 附件，也不应把大型二进制提交进 git。

## 文档索引

- [`docs/README.md`](docs/README.md) — 文档导航
- [`docs/skills.md`](docs/skills.md) — skill 用法、依赖与离线限制
- [`docs/offline-install.md`](docs/offline-install.md) — 安装、分片、哈希与 Release 地址
- [`docs/pets.md`](docs/pets.md) — 宠物拷贝与许可
- [`docs/provenance.md`](docs/provenance.md) — 上游提交、日期与许可核验
- [`skills/README.md`](skills/README.md) — skill 目录说明
