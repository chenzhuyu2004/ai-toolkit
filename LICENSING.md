# 许可说明

本仓库是**混合许可**的非官方合集。根目录的 [`LICENSE`](LICENSE) 是官方 Hermes Agent v0.22.0 的 MIT 原文，版权声明为 Copyright (c) 2025 Nous Research。该文件**只覆盖被镜像的官方 Hermes 材料**（安装包原件及其官方许可文本），**不**表示本仓库中的第三方 skill、宠物绘图或其他内容同样是 MIT，也**不**表示它们由 Nous Research 创作或授权背书。

请按内容分别遵守下列条款。

## 1. 官方 Hermes Agent 材料

- 文本：根目录 [`LICENSE`](LICENSE)（取自官方标签 [v0.22.0](https://raw.githubusercontent.com/NousResearch/hermes-agent/v0.22.0/LICENSE)，未改动）
- 许可：MIT，版权归 Nous Research
- 范围：本仓库 Releases 中再分发的官方已签名 Windows 侧载包（稳定版 0.22.0 / 包版本 2026.6864.2132.0）以及与之对应的官方许可文本
- 安装包内还含 Python、Node、Electron、Chromium 等第三方组件，各自许可证以官方包内所载为准，这里不另行编造

## 2. 本仓库自行撰写的导航与说明

- 文本：[`licenses/COLLECTION-MIT.txt`](licenses/COLLECTION-MIT.txt)
- 许可：MIT，Copyright (c) 2026 zhuyu chen (chenzhuyu2004)
- 范围：本仓库维护者撰写的导航文档，例如根目录 `README.md`、`LICENSING.md`、`docs/` 下除 `docs/original/` 中第三方原文以外由本仓库新增的 Markdown、`skills/*/UPSTREAM.md`，以及明确标注为本地说明/适配的 `skills/*/adapters/` 文件
- `docs/original/` 中的离线安装说明、校验和、拼合脚本等，是本镜像合集此前发布的说明与辅助脚本，同样按本条 MIT 提供；它们描述的安装包本身仍受第 1 条约束

## 3. frontend-design skill

- 来源：<https://github.com/anthropics/skills/tree/main/skills/frontend-design>
- 文本：[`skills/frontend-design/LICENSE.txt`](skills/frontend-design/LICENSE.txt)（上游原文，已核为 **Apache License 2.0**，不是 MIT）
- 销钉与日期见 [`skills/frontend-design/UPSTREAM.md`](skills/frontend-design/UPSTREAM.md) 与 [`docs/provenance.md`](docs/provenance.md)
- 按 Apache 2.0 再分发：保留许可全文，未改动上游 `SKILL.md` / `LICENSE.txt`。本仓库另加的 `UPSTREAM.md` 是本地说明，不是上游文件。
- 该 skill **不**构成 Anthropic 的代言。Apache 2.0 不授予商标权。

## 4. UI/UX Pro Max skill

- 来源：<https://github.com/nextlevelbuilder/ui-ux-pro-max-skill>
- 文本：[`skills/ui-ux-pro-max/LICENSE`](skills/ui-ux-pro-max/LICENSE)（上游原文，**MIT**，Copyright (c) 2024 Next Level Builder）
- 销钉、版本与未收录部分见 [`skills/ui-ux-pro-max/UPSTREAM.md`](skills/ui-ux-pro-max/UPSTREAM.md)
- 检索数据中的字体/图标条目是目录与元数据，不是字体文件或图标字体本身；实际使用 Google Fonts、Phosphor 等仍须遵守其各自许可，并可能需要网络获取
- 该 skill **不**构成 Next Level Builder 的代言

## 5. 离线宠物包

Petdex 源码是 MIT，但宠物**绘图版权归各提交者**，按其声明的 CC0、CC BY 或 CC BY-SA 授权。公开清单没有给出每只宠物的具体 SPDX，因此不能把整包写成单一的 MIT 或单一的 CC 许可证。完整说明、署名与三份 CC 法律文本见：

- Release 附件 [Hermes-Pets-Offline-for-0.22.0.zip](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/Hermes-Pets-Offline-for-0.22.0.zip)
- 仓库内副本：[`docs/original/pets/SOURCE-AND-LICENSES.txt`](docs/original/pets/SOURCE-AND-LICENSES.txt)、[`docs/original/pets/README-offline-pets-zh.txt`](docs/original/pets/README-offline-pets-zh.txt)、[`docs/original/pets/licenses/`](docs/original/pets/licenses/)
- 导航：[`docs/pets.md`](docs/pets.md)
