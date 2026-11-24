# 离线宠物包（面向已安装的 0.22.0 桌面）

本包是给已经安装官方 Hermes Agent 0.22.0 桌面包（`NousResearch.HermesBundled`，版本 `2026.6864.2132.0`）的机器准备的小型宠物资源，**不是安装程序**，也不含模型、账号或密钥。

完整原文（含限制与采集说明）：

- [original/pets/README-offline-pets-zh.txt](original/pets/README-offline-pets-zh.txt)
- [original/pets/SOURCE-AND-LICENSES.txt](original/pets/SOURCE-AND-LICENSES.txt)
- [original/pets/SHA256SUMS.txt](original/pets/SHA256SUMS.txt)
- [original/pets/licenses/](original/pets/licenses/)（CC0 1.0、CC BY 4.0、CC BY-SA 4.0 官方法律文本）

## 下载

- [Hermes-Pets-Offline-for-0.22.0.zip](https://github.com/chenzhuyu2004/hermes-windows-offline/releases/download/official-stable-0.22.0/Hermes-Pets-Offline-for-0.22.0.zip)
- 大小：9 361 695 字节（约 9 MB）
- SHA256：`c5d2a6dd1d8d89df67bd3ce5de299188bb7cf305f9174846f82c7c3c66f018fe`
- 采集日期：2026-11-24（Asia/Shanghai，UTC+8）

本 git 仓库只收录说明与许可文本，不存放精灵图等二进制。

## 收录的五只宠物

| slug | 显示名 | 类型 | 提交者 |
| --- | --- | --- | --- |
| boba | Boba | creature | railly |
| boxcat | Boxcat | creature | railly |
| byte-bunny | Byte Bunny | creature | railly |
| prompt-penguin | Prompt Penguin | creature | railly |
| scoop | Scoop | object | railly |

来源为公开 Petdex 图鉴，采集时均出现在官方 `commercial=1` 筛选结果中。各宠物的图鉴页、ZIP 与哈希见 [SOURCE-AND-LICENSES.txt](original/pets/SOURCE-AND-LICENSES.txt)。

## 拷贝位置

默认用户数据目录是 `%LOCALAPPDATA%\hermes`，通常为 `C:\Users\<用户名>\AppData\Local\hermes`。请把压缩包根目录下的 `pets\<slug>\` 整个文件夹拷到：

```text
%LOCALAPPDATA%\hermes\pets\<slug>\
```

例如：

```text
%LOCALAPPDATA%\hermes\pets\boba\pet.json
%LOCALAPPDATA%\hermes\pets\boba\spritesheet.webp
```

若设置了环境变量 `HERMES_HOME`，改放到 `%HERMES_HOME%\pets\<slug>\`。若使用命名配置档（`hermes -p <名称>` 或非默认 `active_profile`），应放到该配置档自己的目录，例如 `%LOCALAPPDATA%\hermes\profiles\<名称>\pets\<slug>\`。

不要把文件拷进应用安装目录或 MSIX 包内，不要覆盖整个 `config.yaml`，也不要拷贝密钥、`.env`、历史记录或会话文件。

## 离线启用

拷贝完成后，在已安装 Hermes 的机器上执行（不访问图鉴）：

```text
hermes pets list --installed
hermes pets select boba
```

将 `boba` 换成要启用的 slug。官方 0.22 中，`hermes pets select <slug>` 只检查本地已安装目录，并合并写入 `config.yaml` 里的 `display.pet.slug` 与 `display.pet.enabled`，不会整文件覆盖其余配置。

不要用 `hermes pets install <slug>` 或（不加 `--installed` 的）`hermes pets list` 来启用：前者会从图鉴下载，后者会请求 `https://petdex.dev/api/manifest`。

若不能运行命令，可手工合并（只改这两项，保留其余内容）：

```yaml
display:
  pet:
    enabled: true
    slug: boba
```

功能默认关闭，拷贝资源本身不会自动打开宠物。

## 许可（不要写成单一 MIT）

Petdex **源码**是 MIT，但宠物绘图版权归各提交者，按其自行声明的许可证授权。公开图鉴清单和每只宠物的 `pet.json` / ZIP 都不带具体 SPDX。本包只收入采集时出现在官方接口 <https://petdex.dev/api/pets/search?commercial=1> 中的条目；该筛选只保留作者已声明可用于商业用途的许可证：CC0、CC BY 或 CC BY-SA。具体是哪一种，公开页面没有写明，因此包内同时附上三份官方法律文本，并为每只宠物保留作者署名和来源地址。不能把“能公开下载”或“在本镜像合集中出现”当成单一 MIT 授权。

CC 许可证只覆盖提交者自己的绘图版权，不能授权第三方角色或商标。

## 测试限制

制作时用官方 0.22 的宠物加载规则和 Pillow 做了静态校验，并在隔离测试目录中跑过本地 store 加载逻辑。**没有在 Windows 上实际安装或打开过桌面端**，也没有连接任何模型或账号。未在 Windows 真机上验证桌面悬浮窗、漫游或弹出层。宠物只是外观，不影响对话能力。
