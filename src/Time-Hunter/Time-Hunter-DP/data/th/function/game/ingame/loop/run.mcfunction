#

# 开始倒计时
function th:game/ingame/loop/start_title
# 计时器
function th:game/ingame/loop/timer
# 动作栏显示剩余时间
function th:game/ingame/loop/actionbar
# 失去时间
function th:game/ingame/loop/subtract_time
# 击杀获得时间
execute if score @s KillCheck matches 1.. run function th:game/rewardtime/killedplayer
# 淘汰检测
function th:game/ingame/loop/out_check
# 胜利检测
function th:game/ingame/loop/win_check
# 事件
function th:game/ingame/event/run