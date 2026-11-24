Hermes 0.22.0 离线宠物入门包说明
================================

本压缩包是给已经安装官方 Hermes Agent 0.22.0 桌面包
（NousResearch.HermesBundled，版本 2026.6864.2132.0）的内网机器准备的
小型宠物资源，不是安装程序，也不含模型、账号或密钥。

收录宠物（5 只，来自公开 Petdex 图鉴，均为当时官方 commercial=1 筛选结果）
------------------------------------------------------------------------
  slug             显示名           类型       提交者
  boba             Boba             creature   railly
  boxcat           Boxcat           creature   railly
  byte-bunny       Byte Bunny       creature   railly
  prompt-penguin   Prompt Penguin   creature   railly
  scoop            Scoop            object     railly

许可（请先读这一段）
--------------------
Petdex 源码是 MIT，但宠物绘图版权归各提交者，按其自行声明的许可证授权。
公开图鉴清单和每只宠物的 pet.json / ZIP 都不带具体 SPDX 字段。本包只收入
在采集时出现在官方公开接口

  https://petdex.dev/api/pets/search?commercial=1

中的宠物。Petdex 源码写明该筛选只保留作者已声明可用于商业用途的许可证：
CC0、CC BY 或 CC BY-SA（未声明的旧条目不会进入该列表，不能把“能公开
下载”当成授权）。具体是这三者中的哪一个，公开页面和清单没有写明，因此
包内同时附上三份官方法律文本（licenses/ 目录），并为每只宠物保留作者
署名和来源地址。详见 SOURCE-AND-LICENSES.txt。

CC 许可证只覆盖提交者自己的绘图版权，不能授权第三方角色或商标。本包
选择的是 Petdex curated、看起来为原创伙伴的条目，没有收入明显的第三方
角色同人图。

默认安装位置（Windows）
----------------------
默认用户数据目录是：

  %LOCALAPPDATA%\hermes

也就是通常的：

  C:\Users\<你的用户名>\AppData\Local\hermes

请把本包根目录下的 pets\<slug>\ 整个文件夹拷到：

  %LOCALAPPDATA%\hermes\pets\<slug>\

最终每个宠物目录里应有 pet.json 和一张 spritesheet/sprite 的 .webp 图，
例如：

  %LOCALAPPDATA%\hermes\pets\boba\pet.json
  %LOCALAPPDATA%\hermes\pets\boba\spritesheet.webp

若你设置了环境变量 HERMES_HOME，请改放到：

  %HERMES_HOME%\pets\<slug>\

若使用命名配置档（hermes -p <名称>，或已切换到非默认的 active_profile），
宠物是按配置档隔离的，应放到该配置档自己的目录，例如：

  %LOCALAPPDATA%\hermes\profiles\<名称>\pets\<slug>\

不要把文件拷进应用安装目录或 MSIX 包内。不要覆盖整个 config.yaml，
也不要拷贝任何密钥、.env、历史记录或会话文件。

离线启用（推荐，0.22 本地逻辑）
------------------------------
拷贝完成后，在已安装 Hermes 的机器上执行（不访问图鉴）：

  hermes pets list --installed
  hermes pets select boba

将 boba 换成你想启用的 slug。官方 0.22 中，hermes pets select <slug>
只会检查本地已安装目录，并把 config.yaml 里的 display.pet.slug 写成该
slug、把 display.pet.enabled 写成 true；它会合并写入这两项，不会整文件
覆盖其余配置。

不要用 hermes pets install <slug> 或 hermes pets list（不加 --installed）
来启用：前者会从图鉴下载，后者会请求 https://petdex.dev/api/manifest。
桌面端“设置 → 外观”或命令面板里的在线图鉴，在内网也可能先去拉清单；
离线时请优先用上面的 select 命令，而不是依赖图鉴界面。

若不能运行命令，可手工合并（只改这两项，保留其余内容）：

  display:
    pet:
      enabled: true
      slug: boba

config.yaml 位于对应的 HERMES_HOME 下（默认 %LOCALAPPDATA%\hermes\config.yaml）。
功能默认是关闭的，拷贝资源本身不会自动打开宠物。

校验
----
  hermes pets list --installed
  hermes pets doctor
  hermes pets show boba --once

本包在制作时用官方 0.22 的宠物加载规则（pet.json + 精灵图文件名/尺寸）
和 Pillow 做了静态校验，并在隔离的测试目录中跑过本地 store 加载逻辑。
没有在 Windows 上实际安装或打开过桌面端，也没有连接任何模型或账号。

限制
----
- 宠物只是外观，不影响对话能力；对话仍需要你已配置的模型接口。
- 图鉴浏览、在线安装、/hatch 生成新宠物，在没有外网或本地图像后端时不可用。
- 本仓库的 GitHub Release 不是官方自动更新源。
- 未在 Windows 真机上验证桌面悬浮窗、漫游或弹出层。

其他文件
--------
  SOURCE-AND-LICENSES.txt   每只宠物的来源、署名和许可依据
  licenses/                 CC0、CC BY 4.0、CC BY-SA 4.0 官方法律文本
  SHA256SUMS.txt            本包内文件的 SHA256

采集日期：2026-11-24（Asia/Shanghai，UTC+8）
