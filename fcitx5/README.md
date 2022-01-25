# 介绍
这是一个用于安装 `fcitx5(输入法)` 的脚本  
它会复制我的配置文件到 `.config` 中, 随后:  
- 将 `fcitx5/conf/` 下的 `classicui.conf`, `pinyin.conf` 复制到 `~/.config/fcitx5/conf/`  
- 将 `fcitx5/` 下的 `config` 复制到 `~/.config/fcitx5/`  
- 将 `fcitx5/` 下的 `profile` 复制到 `~/.config/fcitx5/`  


## 详细说明
1. `conf/classicui.conf` :

```
# 垂直候选列表
Vertical Candidate List=False
# 按每个屏幕 DPI 显示
PerScreenDPI=True
# 使用鼠标滚轮翻页
WheelForPaging=True
# 字体
Font="Fira Code 14"
# 菜单字体
MenuFont="Fira Code 13"
# 托盘字体
TrayFont="Fira Code 11"
# 托盘标签轮廓颜色
TrayOutlineColor=#000000
# 托盘标签文本颜色
TrayTextColor=#ffffff
# 优先使用文字图标
PreferTextIcon=False
# 使用输入法的语言来显示文字
UseInputMethodLangaugeToDisplayText=True
# 主题
Theme=Material-Color-Pink
```

字体方面:  
我选择了 `Fira Code`, 它在 `manjaro-config/fcitx5/fcitx5-config.sh` 中已经安装  
你可以更改为其他字体(请先确保已经下载字体)  

主题方面:  
我选择了 `Material-Color-Pink`, 同样在 `fcitx5-config.sh` 已经安装
你可以更改为其他主题(请先确保已经下载主题)  

2. `conf/pinyin.conf` :

```
# 双拼方案
ShuangpinProfile=Ziranma
# 显示当前双拼模式
ShowShuangpinMode=True
# 页大小
PageSize=9
# 启用拼写检查
SpellEnabled=True
# 启用颜文字
EmojiEnabled=True
# 启用拆字
ChaiziEnabled=True
# 启用云拼音
CloudPinyinEnabled=False
# 云拼音位置
CloudPinyinIndex=2
# 在程序中显示预编辑文本
PreeditInApplication=True
# 固定嵌入预编辑文本光标在预编辑的开头
PreeditCursorPositionAtBeginning=True
# 在预编辑中显示完整拼音
PinyinInPreedit=False
# 启用预测
Prediction=False
# 预测个数
PredictionSize=10
# 选择第 2 个候选词
SecondCandidate=
# 选择第 3 个候选词
ThirdCandidate=
# 句子数量
Number of sentence=2
# 输入长于...时提示长词 (设置为 0 时禁用)
LongWordLengthLimit=4
# 快速输入的触发键
QuickPhraseKey=semicolon
# 使用 V 来触发快速输入
VAsQuickphrase=True
# FirstRun
FirstRun=False

#
# 省略了一部分
#
```

这一块我只更改了 `PageSize(页大小)`, 让拼音显示的结果变为九个一页

3. `/config`　：

```
[Hotkey]
# 反复按切换键时进行轮换
EnumerateWithTriggerKeys=True
# 临时在当前和第一个输入法之间切换
AltTriggerKeys=
# 向前切换输入法
EnumerateForwardKeys=
# 向后切换输入法
EnumerateBackwardKeys=
# 轮换输入法时跳过第一个输入法
EnumerateSkipFirst=False
# 向前切换输入分组
EnumerateGroupForwardKeys=
# 向后切换输入法分组
EnumerateGroupBackwardKeys=
# 激活输入法
ActivateKeys=
# 取消激活输入法
DeactivateKeys=

[Hotkey/TriggerKeys]
0=Control+space

[Hotkey/PrevPage]
0=Up
1=minus

[Hotkey/NextPage]
0=Down
1=equal

[Hotkey/PrevCandidate]
0=Shift+Tab

[Hotkey/NextCandidate]
0=Tab

[Hotkey/TogglePreedit]
0=Control+Alt+P

#
# 省略了一部分
#
```

我修改了 `[Hostkey/PrevPage]` , `[Hostkey/NextPage]`  
你可以通过 `上方向键` 或 `-` 切换至上一页  
也可以通过 `下方向键` 或 `=` 切换至下一页  
当然, 你也可以更改 `[Hotkey/TriggerKeys]`, 按Shft切换中英文 (有人习惯Windows系统下输入法热键, 因此特别说一下)  

`Ctrl + .`  开启/禁止全角字符, 来切换中英文的标点  

4. `/profile` :  
这个文件指定了输入法  

## 结语
这个脚本会在 `manjaro-config/base/config-1.sh` 中调用  
重启之后, 你就能够享受到开箱即用的输入法了  
Enjoy it !  
