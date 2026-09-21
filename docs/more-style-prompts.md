# 三种新增类型：完整生成提示词

剪纸图前两次局部修正未完全解决重复手环；最终以文末的动作调整修正。图库仅保留检查后的成图。

2026-09-21，使用 bela-hand-comic 的结构图、时间线与单幅故事流程，在 Codex 中调用内置 image_gen。三张新图都传入 [贝拉角色参考](../assets/bela-character-reference.png)；局部修正传入上一版成图。提示词是生成要求，输出仍需检查，不保证再次运行得到相同图片。时间线使用灰阶衣服加青柠手环点色，是有意的画风转换。

## 剪纸拼贴结构图

```text
Use case: infographic-diagram. Create ONE landscape 16:9 handmade paper-collage STRUCTURE MAP,
titled in exact Chinese "角色设定的三个部分". Input image is the identity reference for Bela, NOT the
layout or cream watercolor style. The composition uses warm white space, tactile torn and
scissor-cut colored paper, matte fibers, hand-drawn graphite detail, very slight physical
paper-layer shadows, restrained muted burgundy, mustard, dusty blue, and lime green. Not
digital vector graphics, not an app screen, not dense decoration.
At top-center under the title a cut-paper root label "角色设定". From its bottom connect a single
thin black trunk to a horizontal branching line, and from it three equal vertical lines lead
to THREE aligned child clusters in the main middle row. Lines have NO arrowheads: they mean
composition, not sequence or causation. Three categories exactly left to right: "外形", "穿搭",
"感觉". Under each category one icon group and one single clear subordinate text: under 外形 a
cut-paper face and silhouette with text "脸型与发型"; under 穿搭 a burgundy top, charcoal shorts,
shoes and lime wristband with text "衣服与配饰"; under 感觉 a warmly smiling face and gently waving
hand with text "表情与姿态". These are three useful starting dimensions, no scoring or numbers.
Bela sits on a low stool in the lower-right margin actively arranging one small matching paper
silhouette beside scissors and a small sheet, with no obstruction of map or text. Keep her
recognizable short side-parted tousled black hair with crown tuft, round warm face, dark eyes,
burgundy sleeveless cropped athletic tank, charcoal shorts, gray-white sneakers, approximately
3.5-head body proportions. Her anatomical RIGHT wrist has one lime bracelet, LEFT wrist bare.
Show her almost front-on so her right wrist is on viewer LEFT, holding the paper silhouette in
that right hand. Turn entire character into coherent handmade paper collage with drawn facial
detail, NOT paste the reference illustration unchanged. The character is subordinate to the
map. Exact only text: "角色设定的三个部分", "角色设定", "外形", "穿搭", "感觉", "脸型与发型", "衣服与配饰", "表情与姿态". Large
irregular but clean dark handwritten Chinese. Generous margins and whitespace; no sparkles,
banners, extra icons, gradients, UI cards or extra words.
```

## 黑白漫画时间线

```text
Use case: infographic-diagram. Generate ONE finished landscape 16:9 black-and-white pen comic
TIMELINE illustration, with only the wristband in lime green as a tiny signature accent. Bela
identity reference is supplied; translate her burgundy shirt to medium gray tone in this
deliberately monochrome edition, keeping its sleeveless cropped sports cut, charcoal shorts,
white-gray sneakers, short black tousled hair, round expressive face, crown tuft, same
3.5-head proportions. ONE horizontal timeline with three equal milestones, a thin line across
the lower-middle width pointing right only at its far end. Above it three airy open vignettes,
NO panel borders. Left: Bela sits at a simple desk taking notes, caption above the milestone
"上午" and action below it "整理想法". Center: Bela stands by an easel drawing a sketch, milestone
"下午", action "画出草图". Right: Bela front-facing holds her drawing up in her anatomical RIGHT
hand on the VIEWER LEFT, lime bracelet on THAT wrist only, examines it with a thoughtful
expression; milestone "晚上", action "检查修改". All three vignettes are the SAME Bela at different
times, not three different people. Preserve wristband on her anatomical RIGHT wrist
throughout; left wrists bare. For side or desk poses the right wrist can naturally be
partially hidden, do not switch bracelet to whichever wrist is visible.
Title exact "创作日程示意". Bottom small but readable note "仅示意顺序，不代表耗时". Only these eight text
strings, each once. The time labels do not imply measured duration or actual autobiographical
schedule. Equal line spacing simply arranges the three milestones. Black crisp varied pen
strokes, controlled gray screentone hatching, small manga expression details, clean warm-white
background, no paper grain, no bright color except the lime wristbands. Editorial hand-inked
visual narrative, large legible Chinese lettering, clear timeline markers under each vignette,
left-to-right order, ample breathing room. No extra labels, stars, advertising rays, gradient,
UI, real data numbers or extra props.
```

## 水彩手账场景图

```text
Use case: illustration-story. Create one landscape 4:3 watercolor sketchbook scene using
supplied Bela identity reference. Bela sits on a park bench beside a quiet pond, drawing the
willow tree and small wooden bridge in front of her into an open sketchbook on her lap. The
visible sketch repeats that same willow and bridge. Single coherent scene. Bela has the same
short tousled black hair, round expressive warm face, 3.5-head proportions, burgundy cropped
sleeveless sports tank, charcoal shorts and white-gray sneakers. Three-quarter front view with
uncrossed arms: pencil in her anatomical right hand on viewer LEFT, ONE lime bracelet on that
wrist, other wrist bare. Natural hands. Transparent loose watercolor in sage green, teal, pale
lavender and peach light; delicate colored pencil for face, clothes and sketchbook; subtle
ivory paper. Substantial atmospheric scenery with only bench, pond, willow and bridge; leave
breathing room, no scattered props, no photorealism, no 3D, no diagrams. Exact sole Chinese
title at upper left "把路上的灵感画下来". Dark handwritten lettering, no banner, underline, extra text,
dates or place names. Preserve character identity but render the whole scene in this soft
observational watercolor style.
```

## 剪纸图修正：先调整手环位置

```text
Edit this collage image with ONE narrowly targeted correction: fix Bela's lime wristband
placement in BOTH human figure instances. In the bottom-right seated full-body Bela, REMOVE
the green bracelet from the wrist resting on her lap (viewer right, her anatomical left) and
ADD it to the wrist holding the paper silhouette (viewer left, her anatomical right). Preserve
fingers, arms, pose and silhouette. In the smiling waving upper-body Bela under the 感觉
category, REMOVE the green bracelet from the waving wrist (viewer right, anatomical left). Her
anatomical right wrist is hidden below the cropped portrait edge, so do not add a visible
second hand or bracelet. Keep the separate green bracelet object in the 穿搭 clothing group
unchanged. Preserve all Chinese text, paper texture, colors, proportions, composition, lines,
and every other detail. Do not redraw the whole design or change any lettering.
```

## 剪纸图修正：去掉重复手环

```text
Make ONE tiny local correction to this exact image. The seated full-body girl at the bottom
right currently wears TWO wristbands: one on the raised wrist holding the brown paper doll at
viewer-left, and one on the wrist resting on her thigh at viewer-right. ERASE ONLY the
lime-green bracelet on the wrist resting on her thigh at viewer-right; replace that band area
with natural bare skin continuous with hand and forearm. KEEP the bracelet on the
paper-doll-holding raised wrist at viewer-left. End result: one bracelet total on this seated
girl. Keep the smiling cropped girl's waving wrist bare as it already is. Change no other
pixels or details intentionally; preserve every Chinese word, all composition, linework and
paper collage textures.
```

## 剪纸图最终修正：调整手臂动作

```text
Edit ONLY the seated character in the lower-right corner of this collage. Redraw her ARM POSE:
her left hand (viewer right) should now hold a small pair of scissors beside her chest, with a
fully BARE wrist and bare forearm. Her right hand (viewer left) should still hold the brown
paper doll and wear ONE lime-green wristband. No hand resting on lap anymore. Ensure the left
scissors-holding wrist has skin only, no green band. Both hands clear and uncrossed. Keep same
face, hair, clothing, seated legs and stool, and same collage texture. Preserve the rest of
the entire image including all title and Chinese labels, map lines, three category
illustrations, the bare waving wrist in the smiling portrait, and layout exactly. The purpose
is a corrected final reference with exactly one wearable green bracelet on the seated girl.
```
