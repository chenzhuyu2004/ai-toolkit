# Skill 目录

这里是可直接使用的设计 skill，不是安装包镜像。总览与限制见 [docs/skills.md](../docs/skills.md)；许可见 [LICENSING.md](../LICENSING.md)；销钉见 [docs/provenance.md](../docs/provenance.md)。

这些文件没有注册到本环境或其他全局 skill 商店。使用时请拷贝到你所用助手的 skill 路径，或把 `SKILL.md`（以及 UI/UX 的 `scripts/`、`data/`）一起提供给模型。

| 目录 | 许可 | 说明 |
| --- | --- | --- |
| [frontend-design/](frontend-design/) | Apache 2.0 | 上游原文 `SKILL.md` + `LICENSE.txt`；本地 `UPSTREAM.md` |
| [ui-ux-pro-max/](ui-ux-pro-max/) | MIT | 完整 skill（说明、脚本、数据、引用）；本地 `UPSTREAM.md` 与 `adapters/` |

不要只拷贝 `ui-ux-pro-max/SKILL.md` 而丢掉 `scripts/` 和 `data/`，否则文档中的检索命令会失效。
