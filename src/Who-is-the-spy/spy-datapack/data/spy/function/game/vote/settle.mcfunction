# 古法计算 
# 票数最多者淘汰，最多者不唯一，不淘汰
scoreboard players set #Game G_VoteCount 0

kill @e[type=marker,tag=marker_vote]
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_1","marker_vote"]}
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_2","marker_vote"]}
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_3","marker_vote"]}
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_4","marker_vote"]}
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_5","marker_vote"]}
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_6","marker_vote"]}
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_7","marker_vote"]}
execute at @r run summon marker ~ ~10 ~ {Tags:["vote_8","marker_vote"]}

# 第一
scoreboard players operation @e[type=marker,tag=vote_1] Vote > @a Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_1,limit=1] Vote run tag @s add vote_1
# 第二
scoreboard players operation @e[type=marker,tag=vote_2] Vote > @a[tag=!vote_1] Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_2,limit=1] Vote run tag @s add vote_2
# 第三
scoreboard players operation @e[type=marker,tag=vote_3] Vote > @a[tag=!vote_1,tag=!vote_2] Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_3,limit=1] Vote run tag @s add vote_3
# 第四
scoreboard players operation @e[type=marker,tag=vote_4] Vote > @a[tag=!vote_1,tag=!vote_2,tag=!vote_3] Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_4,limit=1] Vote run tag @s add vote_4
# 第五
scoreboard players operation @e[type=marker,tag=vote_5] Vote > @a[tag=!vote_1,tag=!vote_2,tag=!vote_3,tag=!vote_4] Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_5,limit=1] Vote run tag @s add vote_5
# 第六
scoreboard players operation @e[type=marker,tag=vote_6] Vote > @a[tag=!vote_1,tag=!vote_2,tag=!vote_3,tag=!vote_5] Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_6,limit=1] Vote run tag @s add vote_6
# 第七
scoreboard players operation @e[type=marker,tag=vote_7] Vote > @a[tag=!vote_1,tag=!vote_2,tag=!vote_3,tag=!vote_5,tag=!vote_6] Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_7,limit=1] Vote run tag @s add vote_7
# 第八
scoreboard players operation @e[type=marker,tag=vote_8] Vote > @a[tag=!vote_1,tag=!vote_2,tag=!vote_3,tag=!vote_5,tag=!vote_6,tag=!vote_7] Vote
execute as @a if score @s Vote = @e[type=marker,tag=vote_8,limit=1] Vote run tag @s add vote_8

tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a {text:"========投票结果========\n"}
tellraw @a [{text:"1. "},{selector:"@a[tag=vote_1]"}," - ",{score:{"name":"@a[tag=vote_1,limit=1]",objective:"Vote"}}]
tellraw @a [{text:"2. "},{selector:"@a[tag=vote_2]"}," - ",{score:{"name":"@a[tag=vote_2,limit=1]",objective:"Vote"}}]
tellraw @a [{text:"3. "},{selector:"@a[tag=vote_3]"}," - ",{score:{"name":"@a[tag=vote_3,limit=1]",objective:"Vote"}}]
execute if score #Game G_PlayerCount matches 4.. run tellraw @a [{text:"4. "},{selector:"@a[tag=vote_4]"}," - ",{score:{"name":"@a[tag=vote_4,limit=1]",objective:"Vote"}}]
execute if score #Game G_PlayerCount matches 5.. run tellraw @a [{text:"5. "},{selector:"@a[tag=vote_5]"}," - ",{score:{"name":"@a[tag=vote_5,limit=1]",objective:"Vote"}}]
execute if score #Game G_PlayerCount matches 6.. run tellraw @a [{text:"6. "},{selector:"@a[tag=vote_6]"}," - ",{score:{"name":"@a[tag=vote_6,limit=1]",objective:"Vote"}}]
execute if score #Game G_PlayerCount matches 7.. run tellraw @a [{text:"7. "},{selector:"@a[tag=vote_7]"}," - ",{score:{"name":"@a[tag=vote_7,limit=1]",objective:"Vote"}}]
execute if score #Game G_PlayerCount matches 8.. run tellraw @a [{text:"8. "},{selector:"@a[tag=vote_8]"}," - ",{score:{"name":"@a[tag=vote_8,limit=1]",objective:"Vote"}}]
tellraw @a {text:"\n===================="}

kill @e[type=marker,tag=marker_vote]

scoreboard players set #Game G_VoteCount1st 0
scoreboard players set @a Vote 0
execute as @a[tag=vote_1] run scoreboard players add #Game G_VoteCount1st 1
execute if score #Game G_VoteCount1st matches 1 run function spy:game/vote/out
execute if score #Game G_VoteCount1st matches 2.. run title @a subtitle [{text:"很遗憾,"},{text:"本轮无人淘汰..."}]
execute if score #Game G_VoteCount1st matches 2.. run function spy:game/speak/continue

tag @a remove vote_1
tag @a remove vote_2
tag @a remove vote_3
tag @a remove vote_4
tag @a remove vote_5
tag @a remove vote_6
tag @a remove vote_7
tag @a remove vote_8