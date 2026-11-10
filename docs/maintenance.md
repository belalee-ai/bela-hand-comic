# Bela Hand Comic 功能与维护

GitHub 首页由 [README.md](../README.md) 渲染。功能说明、图库和安装说明采用 Markdown，插图是仓库中的 PNG。实际执行入口是 [SKILL.md](../SKILL.md)，由使用者的 Agent 调用可用的图片工具。七图拼版由仓库中的 Bash 脚本和 FFmpeg 执行。

## 页面内容改哪里

| 页面或区域 | 源文件 | 更新时一起检查 |
| --- | --- | --- |
| 首页、功能概览、首次试用 | [README.md](../README.md) | 描述与 Skill 当前支持的场景一致，链接能直接打开 |
| 效果图库 | [docs/diagram-demos.md](diagram-demos.md)、[docs/images/](images/) | 首页缩略图、图库原图、说明和示例请求对应同一作品 |
| 角色设计 | [docs/character-design.md](character-design.md) | 材料清单、角色模板和确认步骤与 Skill 的角色设计分支一致 |
| 自定义与提示词 | [docs/usage.md](usage.md)、[docs/prompt-examples.md](prompt-examples.md) | 用户设定优先，示例写清角色、画风、画幅和原文 |
| 安装和验证记录 | [INSTALL.md](../INSTALL.md)、[TESTING.md](../TESTING.md) | 分别记录文件安装、客户端识别和完整出图的验证结果 |
| 已有图片与页面截图 | [docs/screenshots.md](screenshots.md) | 标明是生成效果、参考素材还是 GitHub 页面截图 |

## Skill 功能如何执行

| 功能 | 输入与行为 | 维护入口 |
| --- | --- | --- |
| 简约知识卡 | 输入定义、步骤或比较。保留关键解释和必要例子，减轻纸纹、色框和重复标签 | [简约知识卡规则](../references/simple-knowledge-card.md) |
| 手绘故事和概念绘本 | 输入主题、脚本或已有图片。先查素材，再梳理因果、拆分画面，按确认的角色与构图逐张生成 | [Skill 流程](../SKILL.md)、[风格指南](../references/style-guide.md) |
| 流程图、对比表、结构图和时间线 | 输入步骤、比较项、层级或时间节点。检查箭头方向、标签、顺序和对应关系 | [图示规则](../references/diagrams-and-charts.md) |
| 真实数据图表 | 输入原始数据、单位和来源。由可计算绘图工具确定图形位置和比例 | [数据图表规则](../references/diagrams-and-charts.md#有真实数字的图表) |
| 角色定制 | 输入照片、参考图或文字设定。先确认主形象，再补所需视角和动作，保持同一组图的服装与配饰一致 | [角色设计指南](character-design.md)、[随包角色与画风参考](../assets/) |
| 复用和局部改图 | 输入已有成图与明确改动。检查旧图能否复用，定点编辑后核对文字、构图和角色连续性 | [Skill 流程](../SKILL.md)、[使用与自定义](usage.md#只改一张图) |
| 七图拼版 | 按阅读顺序输入七张 PNG。前六张排成三行两列，第七张居中。保留原图比例，输出 1536×2048 PNG。脚本会拒绝覆盖已存在的目标文件 | [拼版脚本](../scripts/compose-seven-3x4.sh) |

[agents/openai.yaml](../agents/openai.yaml) 保存 Agent 展示配置。改功能名称或入口文案时，核对它和 Skill 的名称、用途是否一致。

## 提交前检查

1. 修改执行规则时，先更新对应的 Skill 或参考文档，再同步 README、使用示例和相关图库说明。
2. 替换图片时，打开实际页面确认图片加载、原图链接、替代文字和图注。若修改运行时参考图，也要确认 [assets/](../assets/) 下的文件名与 Skill 引用一致。
3. 修改拼版脚本时，执行 `bash -n scripts/compose-seven-3x4.sh`，再用七张图实际合成，检查 1536×2048、阅读顺序、边缘和输出防覆盖行为。
4. 在 [TESTING.md](../TESTING.md) 记录本次验证范围。推送后回读 GitHub 的提交、README、维护页和涉及的图片。
