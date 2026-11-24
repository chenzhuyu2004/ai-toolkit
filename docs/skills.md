# 设计 Skill 用法与限制

本页说明如何使用仓库中收录的前端设计 skill。它们是给模型或助手阅读的**说明（以及 UI/UX 的本地检索数据/脚本）**，不是字体文件、浏览器/Node 运行时、npm 安装包或模型权重。把 skill 拷到某个项目或助手目录后，仍可能需要：

- 已安装的 Python 3（仅 UI/UX 检索脚本需要；frontend-design 不需要）
- 实际开发时的 Node/npm、字体和组件库（本仓库不提供）
- 可选网络服务，例如 Google Fonts CDN（`preview.py` 生成的 HTML 会引用它）、图标或字体的在线目录刷新

本仓库**没有**把这些 skill 注册到任何全局 skill 商店。要使用它们，请按你所用助手的文档，把对应目录拷到该助手的 skill 路径，或直接把 `SKILL.md` 提供给模型。

收录理由：这两份是常见、内容完整的前端设计上游，并已核验许可与依赖。这**不是**一次正式评测或“最强 skill”排名。

销钉的 commit、日期与许可见 [provenance.md](provenance.md)。上游原文保持不变；若有本地说明，都放在单独文件并标明是适配/补充。

## frontend-design

路径：[`skills/frontend-design/`](../skills/frontend-design/)。

这是一份自包含的视觉设计指导，帮助避免千篇一律的默认风格。目录里只有上游原文：

- [`SKILL.md`](../skills/frontend-design/SKILL.md)
- [`LICENSE.txt`](../skills/frontend-design/LICENSE.txt)（Apache License 2.0）
- 本地补充：[`UPSTREAM.md`](../skills/frontend-design/UPSTREAM.md)

没有脚本或数据文件，因此也没有会断开的相对路径。将整个目录交给助手即可。不要假定它绑定某个具体产品或运行时。

## ui-ux-pro-max

路径：[`skills/ui-ux-pro-max/`](../skills/ui-ux-pro-max/)。上游版本 **2.15.0**。

本仓库收录了可独立使用的完整 skill，而不是只放一个会断路径的 `SKILL.md`：

- 上游原文：`SKILL.md`、`data/`、`scripts/`（含测试与夹具）、`references/`
- 上游仓库根目录的 `LICENSE`、`skill.json`
- 上游 `src/ui-ux-pro-max/templates/` 的副本，放在 [`upstream-templates/`](../skills/ui-ux-pro-max/upstream-templates/)，供对照各助手的安装布局
- 本地补充（已标明，不是对原文的静默修改）：[`UPSTREAM.md`](../skills/ui-ux-pro-max/UPSTREAM.md)、[`adapters/README.md`](../skills/ui-ux-pro-max/adapters/README.md)

### 路径兼容性

检索脚本用自己的文件位置定位数据：

```text
DATA_DIR = Path(__file__).parent.parent / "data"
```

因此，只要 `scripts/` 与 `data/` 仍是 skill 目录下的兄弟文件夹，从任意工作目录用脚本的绝对或相对路径调用都可以。这已用本仓库中的相对路径做过离线冒烟测试。

上游 [`SKILL.md`](../skills/ui-ux-pro-max/SKILL.md) 里的示例写成了 Claude 插件变量：

```bash
python "${CLAUDE_PLUGIN_ROOT}/.claude/skills/ui-ux-pro-max/scripts/search.py" "<query>" --domain <domain>
```

这在 Claude 插件安装布局下有效；在本仓库布局或其他助手中，请改用本地说明里的调用方式，不要改上游 `SKILL.md`。通用示例（在本仓库根目录）：

```bash
python3 skills/ui-ux-pro-max/scripts/search.py "keyboard focus modal" --domain ux
python3 skills/ui-ux-pro-max/scripts/search.py "beauty spa wellness service" --design-system -p "Serenity Spa"
```

若系统没有 `python`，可试 `python3` 或 Windows 上的 `py -3`。搜索与设计系统生成只需 **Python 3 标准库**，无第三方 PyPI 依赖。

### 网络与离线

| 功能 | 离线？ | 说明 |
| --- | --- | --- |
| `search.py` 按 domain/stack 检索本地 CSV/JSON | 可以 | 使用已收录的 `data/` |
| `--design-system` 生成文本/Markdown 推荐 | 可以 | 基于本地数据 |
| `--tokens dtcg` / `--tokens css` | 可以 | 本地导出 |
| `--preview` 生成 `preview.html` | 脚本可离线写文件 | 生成的 HTML 会预连接 Google Fonts CDN，浏览器打开时通常仍需网络才能看到指定字体 |
| 目录刷新、部分“新鲜度”测试、官方 CLI/`npx` 安装 | 需要网络 | 本仓库未收录官方 CLI、画廊、截图，以及其他兄弟 skill（例如带 TTF 字体的 ui-styling） |

未收录内容请到上游仓库查看，不要假定本镜像合集带有完整 monorepo 或字体文件。

### 官方多助手安装（可选，需网络）

上游还提供 `npx ui-ux-pro-max-cli init --ai <platform>` 等安装方式（见上游 README）。那是可选途径，需要 npm 与网络，不是使用本仓库已收录文件的前提。
