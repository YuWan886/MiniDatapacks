# 分散队伍

# 传送玩家到以(0,0)为中心，大小为1,024×1,024的区域中的一个随机的地点，同队的玩家聚集在一起，且每队之间最小的间隔为$(x)格
$spreadplayers 0 0 $(x) 512 true @a[tag=ingame]

tp @a[tag=spectator] @r[tag=ingame]

# 设置出生点
function th:game/ingame/spread_teams/set_spawnpoints
