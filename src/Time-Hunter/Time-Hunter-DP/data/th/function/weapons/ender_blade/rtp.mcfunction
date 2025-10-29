# 随机传送

# 对末影人造成双倍基础伤害 （ps:会吞伤害）
damage @s[type=enderman] 12 player_attack
# 0.4 概率将最近目标随机传送
execute if predicate th:weapons/ender_blade/rtp_0.4 run function th:weapons/ender_blade/rtp1
