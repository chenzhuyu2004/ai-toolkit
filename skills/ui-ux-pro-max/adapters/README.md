# 本地用法说明（适配层，不是上游原文）

本目录只存放合集维护者添加的说明，用于在本仓库布局或非 Claude 插件环境中调用已收录的文件。**没有修改**同级目录的上游 `SKILL.md`、脚本或数据。

## 为什么需要这份说明

上游 `SKILL.md` 把检索命令写成：

```bash
python "${CLAUDE_PLUGIN_ROOT}/.claude/skills/ui-ux-pro-max/scripts/search.py" "<query>" --domain <domain>
```

这在 Claude 插件安装（`CLAUDE_PLUGIN_ROOT` 指向插件根，skill 位于 `.claude/skills/ui-ux-pro-max/`）时有效。本仓库把同一套 skill 放在 `skills/ui-ux-pro-max/`，没有这个变量。

脚本本身是兼容的：`scripts/core.py` 用 `__file__` 定位 `../data`，不读取 `CLAUDE_PLUGIN_ROOT`。因此只要指向本目录中的 `scripts/search.py` 即可。

## 在本仓库中调用

在克隆根目录：

```bash
python3 skills/ui-ux-pro-max/scripts/search.py "keyboard focus modal" --domain ux
python3 skills/ui-ux-pro-max/scripts/search.py "AI search tool modern minimal" --design-system -p "AI Search"
python3 skills/ui-ux-pro-max/scripts/search.py "suspense streaming bundle" --stack nextjs
```

或先进入 skill 目录：

```bash
cd skills/ui-ux-pro-max
python3 scripts/search.py "keyboard focus modal" --domain ux
```

若 `python` 不存在，使用 `python3` 或 Windows 的 `py -3`。需要 Python 3，无额外 PyPI 包。

常用参数与上游一致：`--domain`、`--stack`、`--design-system`、`--persist`、`--preview`、`--tokens` 等。`--persist` 会在你指定的 `--output-dir`（默认当前目录）写入 `design-system/`，请不要在无意中把结果提交进本仓库。`--preview` 可离线生成 HTML，但字体仍可能要从 Google Fonts 网络加载。

## 拷到其他助手

把整个 `ui-ux-pro-max/` 目录（至少包含 `SKILL.md`、`scripts/`、`data/`、`references/`）拷到助手的 skill 路径。上游 `upstream-templates/` 中有 Cursor、Windsurf、Copilot、universal 等平台的目录约定，例如 Cursor 模板使用 `.cursor/skills/ui-ux-pro-max/SKILL.md`，并给出相对路径 `skills/ui-ux-pro-max/scripts/search.py`。也可使用上游官方 CLI（需要 npm 与网络）：`npx ui-ux-pro-max-cli init --ai <platform>`。

无论放在哪，调用时请指向**实际拷贝后的** `scripts/search.py`，不要假设当前工作目录或家目录就是锚点。

## 本仓库未做的事

- 没有改写上游 `SKILL.md` 中的 `${CLAUDE_PLUGIN_ROOT}` 示例
- 没有把该 skill 注册到全局 skill 商店
- 没有收录官方 CLI、字体 TTF 或其他兄弟 skill
