# 来源说明（本地文件，不是上游原文）

本文件由 hermes-windows-offline 合集维护者添加。`SKILL.md`、`data/`、`scripts/`、`references/`、`LICENSE`、`skill.json` 以及 `upstream-templates/` 中的模板均来自上游原文（或原文路径平移），未改写脚本与数据。本地适配说明只放在 [`adapters/`](adapters/README.md)。

- 上游：<https://github.com/nextlevelbuilder/ui-ux-pro-max-skill>
- 销钉 commit（收录时的 `main`）：`e8b065f0f3aaf2e680fd125f000e4f5e351ed108`
- 该提交时间：2026-11-24 02:10:18 +07:00（2026-11-24 03:10:18 Asia/Shanghai）
- 上游版本：`skill.json` 声明 **2.15.0**
- 许可：已阅读上游根目录 `LICENSE`，为 **MIT**，Copyright (c) 2024 Next Level Builder
- 收录范围：上游 `.claude/skills/ui-ux-pro-max/` 的完整 skill（与 `src/ui-ux-pro-max/` 中的 `data/`、`scripts/` 内容一致），加上根目录许可与清单，以及 `src/ui-ux-pro-max/templates/`（本目录中的 `upstream-templates/`）
- 未收录：官方 CLI、画廊、截图、stack 示例二进制、兄弟 skill（含 ui-styling 的 TTF 字体）等。本地检索不依赖这些文件。
- 路径：`scripts/core.py` 中 `DATA_DIR = Path(__file__).parent.parent / "data"`。只要保持 `scripts/` 与 `data/` 的相对位置，调用就不依赖 Claude 插件根目录。
- 上游 `SKILL.md` 示例使用 `${CLAUDE_PLUGIN_ROOT}/.claude/skills/ui-ux-pro-max/scripts/search.py`。通用调用见 `adapters/README.md`，上游 `SKILL.md` 未改。
- 依赖：搜索与设计系统生成只需 Python 3 标准库。`--preview` 写出的 HTML 会引用 Google Fonts CDN。目录刷新或官方 `npx`/CLI 安装需要网络。
- 更新：需人工核对上游后替换；本仓库无自动同步。
- 本再分发与 Next Level Builder 无隶属或代言关系。

更完整的说明见 [docs/provenance.md](../../docs/provenance.md) 与 [docs/skills.md](../../docs/skills.md)。
