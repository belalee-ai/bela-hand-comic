# 安装、环境与排错

第一次使用，先装 Skill，再检查出图能力。安装只是把说明、参考图和脚本放到助手能读取的位置。

可选择 Claude Code、Codex、Cursor、OpenCode、Gemini CLI、GitHub Copilot。下面按 Agent 给出命令；安装不附带图片模型，助手读取参考图与实际调用图片服务是两个需要分别检查的环节。

## 最省事：让助手帮你装

```text
请帮我安装 https://github.com/belalee-ai/bela-hand-comic 的 bela-hand-comic Skill。
先确认当前工具的安装位置，保留完整 Skill 文件夹。
如果已有同名 Skill，请说明差异并保留我的自定义内容，不要直接覆盖。
安装后读取 SKILL.md、风格指南和一张角色图，检查图片生成、参考图输入、编辑能力。
```

## 用命令安装

先检查 `node --version`、`npm --version`、`git --version` 是否能正常运行。建议使用仍受支持的 Node.js LTS；首次运行 `npx` 可能提示下载安装器。可先运行 `npx skills --help` 查看当前选项。

选择你正在使用的工具，只运行对应的一条：

```sh
# Codex
npx skills add belalee-ai/bela-hand-comic --skill bela-hand-comic --agent codex --global

# Claude Code
npx skills add belalee-ai/bela-hand-comic --skill bela-hand-comic --agent claude-code --global

# Cursor
npx skills add belalee-ai/bela-hand-comic --skill bela-hand-comic --agent cursor --global

# OpenCode
npx skills add belalee-ai/bela-hand-comic --skill bela-hand-comic --agent opencode --global

# Gemini CLI
npx skills add belalee-ai/bela-hand-comic --skill bela-hand-comic --agent gemini-cli --global

# GitHub Copilot
npx skills add belalee-ai/bela-hand-comic --skill bela-hand-comic --agent github-copilot --global
```

不确定工具名时，去掉 `--agent …`，跟随安装器选择。`--global` 表示用于当前用户的多个项目；只装当前项目则去掉它。安装器可能创建共享目录和链接，以实际提示为准，不要只复制 `SKILL.md`。

安装命令和参数依据 [Vercel Skills 官方说明](https://github.com/vercel-labs/skills)。以上客户端名称是安装器的目标名称，不是完整生图兼容性认证。

装好后开启新对话，告诉助手“使用 bela-hand-comic”。没有识别出来时，请它确认安装目录和文件是否齐全。你也可以运行 `npx skills list --global` 查看安装记录。

## 装好以后，确认 Agent 能做哪一步

先开启新对话，把这段发给 Agent：

```text
使用 bela-hand-comic。先不要生成图片。
读取 SKILL.md、风格指南，并打开一张随包角色参考图。
告诉我当前能否：写分镜、生成图片、传入参考图、编辑已有图片。
缺少哪个环节就说明哪个，不把看图能力当成出图能力。
```

检查通过后，再用首页的单图例子试一次。自然语言调用不依赖所有 Agent 都有相同快捷键；斜杠或 `$` 入口以当前客户端为准。

- 只有文字与文件能力：可以准备故事、分镜和提示词，暂时无法完成出图。
- 已接入图片生成：确认工具真的接收到参考图，再检查生成结果和保存位置。
- 还具备图片编辑：可以尝试只改文字或局部内容，但仍要检查其他区域是否变化。
- 需要七图拼版：当前 Agent 还要能运行 Bash 和 FFmpeg。

`agents/openai.yaml` 是供部分客户端读取的展示配置；通用执行内容在 `SKILL.md`。其他客户端不依赖这个 YAML 才能理解使用步骤。本包没有附带各 Agent 的图片服务连接配置，需要使用者自己的工具环境提供。

## 不用 Node.js 的备用办法

打开仓库的 **Code → Download ZIP**，解压，把包含 `SKILL.md` 的整个文件夹命名为 `bela-hand-comic`。请当前助手确认自己的 Skill 目录，再放进去。只下载一个说明文件会丢掉角色参考和拼版脚本。

也可以直接把完整仓库文件夹交给能读取本地文件的助手，请它按其中的 `SKILL.md` 工作；这是读取方法，不代表客户端已注册安装。

## 电脑和能力要求

| 项目 | 要求与说明 |
|---|---|
| macOS | 支持所选 AI 助手及其图片工具；本次检查在 macOS 完成 |
| Windows | 安装方式以所选助手为准；运行 `.sh` 拼版脚本需要 WSL 或能运行 Bash 的环境，FFmpeg 也要在该环境可用；未做 Windows 实测 |
| Linux | 支持所选助手，拼版时有 Bash 与 FFmpeg；未做 Linux 实测 |
| GPU / 显卡 | Skill 本身没有显卡要求。使用云端图片服务时，出图由服务端完成；本地模型要求由对应模型决定 |
| 网络 | 安装时能访问 GitHub；用 `npx` 时还需访问 npm，云端出图需访问对应服务 |
| 权限 | 安装目录可写，助手可读用户指定的素材目录；生成时可以保存文件 |
| 图片输入 | 需要能将本地参考图传给图片生成工具；上传数量与尺寸上限取决于实际工具 |
| 编辑 | 若只能生新图而不能编辑已有图，请先说明，不能承诺保留原图只改一处 |
| 额度和费用 | 仓库不附赠生成额度；按所选工具的账号、额度和收费规则使用，没有固定完成时间或单张价格承诺 |

图片可能交由你选择的云端工具处理；提供参考图前按该工具的数据规则判断是否适合上传。

## 可选：七张图拼成一张

让助手检查 `bash --version` 和 `ffmpeg -version`。都能运行后，在 Skill 文件夹中执行：

```sh
bash scripts/compose-seven-3x4.sh "组合图.png" \
  "01.png" "02.png" "03.png" "04.png" "05.png" "06.png" "07.png"
```

把文件名换成你实际的七张图。结果是 1536×2048，前六幅两列三行，第七幅底部居中。会等比例缩放和留边，不裁掉原图。输出目录要已经存在，输出文件不能重名。

这个脚本不生成故事、不画图，也不支持任意数量或任意网格。需要三张横排或四格漫画时，告诉助手另做拼版。

## 遇到问题怎么说

| 现象 | 处理方式 |
|---|---|
| 找不到 `npx` | 安装 Node.js/npm，或改用 ZIP 完整下载 |
| Git 命令报错 | 先让助手检查 Git 本身能否运行；macOS 可能需要处理开发工具安装或许可状态 |
| 下载失败 | 检查 GitHub / npm 网络访问；保留已安装内容，不反复覆盖 |
| 只输出了提示词 | 检查当前助手有没有可调用的图片工具；仅有文字能力时只能准备分镜和提示词 |
| 人物换脸或换衣服 | 确认参考图真的传给生成工具，逐张修正，不要一次重画整套 |
| 换成自己的角色后又变回阿朱阿兔 | 让助手重读本次角色设定；你的设定优先，默认示例不应覆盖它 |
| 中文有错字 | 给出准确原文，针对该处编辑，完成后逐字检查 |
| 拼版提示输出已存在 | 检查原文件；选一个新路径，或在确认覆盖范围后再处理旧文件 |

安装后先生成一张小图，能读取参考、实际出图并保存，再开始整套制作。[当前验证范围](TESTING.md)
