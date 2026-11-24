# 来源、销钉与许可核验

核验与收录日期：2026-11-24（Asia/Shanghai，UTC+8）。下列 commit 是从上游 `main` 实际检出并复制的版本；本仓库没有自动同步例程，更新需人工核对许可与文件后再提交。

时区说明：上游 git 时间戳按其原始时区记录，下表同时给出 Asia/Shanghai 换算。

## frontend-design

| 项 | 值 |
| --- | --- |
| 上游仓库 | <https://github.com/anthropics/skills> |
| 路径 | [`skills/frontend-design`](https://github.com/anthropics/skills/tree/main/skills/frontend-design) |
| 收录时 `main` 销钉 | `e4bb5d960d87126ff3b3a8af1a104b7db67560ba`（短哈希 `e4bb5d9`） |
| 该提交时间 | 2026-11-16 09:22:47 −05:00（2026-11-16 22:22:47 Asia/Shanghai） |
| 该提交说明 | Update docx, pptx and xlsx skills: zipfile unpack, zip -y, validate.py and soffice.py fixes (#2221) |
| 本 skill 文件最近一次变更 | `41bbe19d1a1a7eaab5e7bb9050a417e5c6cffc8f`（2026-09-03 09:37:13 −07:00，即 2026-09-04 00:37:13 Asia/Shanghai） |
| 许可（已读 LICENSE.txt） | Apache License 2.0。上游 skill 目录没有单独的版权附录；`SKILL.md` frontmatter 写的是 `license: Complete terms in LICENSE.txt`。不要把它写成 MIT。 |
| 收录文件 | 上游原文 `SKILL.md`、`LICENSE.txt`（字节一致）。另加本地 `UPSTREAM.md`。无脚本、无数据、无 NOTICE 文件。 |

根目录 README 也说明该仓库中许多 skill 以 Apache 2.0 开源。按 Apache 2.0 再分发时保留了许可全文，且未修改上游文件。

## ui-ux-pro-max

| 项 | 值 |
| --- | --- |
| 上游仓库 | <https://github.com/nextlevelbuilder/ui-ux-pro-max-skill> |
| 收录时 `main` 销钉 | `e8b065f0f3aaf2e680fd125f000e4f5e351ed108`（短哈希 `e8b065f`） |
| 该提交时间 | 2026-11-24 02:10:18 +07:00（2026-11-24 03:10:18 Asia/Shanghai） |
| 该提交说明 | perf: skip synonym replacements when no rule matches (#593) |
| 上游声明版本 | `skill.json` 中的 **2.15.0** |
| 许可（已读 LICENSE） | MIT，Copyright (c) 2024 Next Level Builder |
| 检索依赖 | Python 3 标准库；`DATA_DIR` 相对 `scripts/core.py` 解析为同级的 `../data` |
| 已收录 | `.claude/skills/ui-ux-pro-max/` 的完整内容（`SKILL.md`、`data/`、`scripts/`、`references/`，含测试与夹具），以及上游根目录 `LICENSE`、`skill.json`，加上 `src/ui-ux-pro-max/templates/`（放在 `upstream-templates/`） |
| 未收录（有意） | 官方 CLI、`gallery/`、`screenshots/`、`stack/` 示例截图、兄弟 skill（brand、design-system、ui-styling 及其 TTF 字体等）、仓库根目录多语言 README。这些不是让本 skill 的本地检索跑起来所必需的文件。 |

`SKILL.md` 保持上游原文（其中示例使用 `${CLAUDE_PLUGIN_ROOT}/...`）。通用调用方式写在本地 [`skills/ui-ux-pro-max/adapters/README.md`](../skills/ui-ux-pro-max/adapters/README.md)。

## Hermes 官方安装包与宠物包

安装包与宠物包的二进制仍只在 Release 中，不在本 git 树提交。来源、哈希与许可索引见 [offline-install.md](offline-install.md) 与 [pets.md](pets.md)。根目录 `LICENSE` 仍是官方 v0.22.0 MIT 原文，未改动。
