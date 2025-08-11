# 跳过淘汰玩家
$execute as @a[team=Out,tag=player_$(num)] store result storage spy:game speak.num int 1 run scoreboard players add #Game G_SpeakPlayer 1
$execute as @a[team=Out,tag=player_$(num)] if score #Game G_SpeakPlayer <= #Game G_IngameCount run return run function spy:game/speak/main with storage spy:game speak
$execute as @a[team=Out,tag=player_$(num)] if score #Game G_SpeakPlayer > #Game G_IngameCount run return run schedule function spy:game/vote/dialog 2.5s

# 玩家发言 给道具
title @a title {text:"玩家发言",color:"gold",bold:true}
$title @a subtitle ["",{text:"现在是 "},{selector:"@a[tag=player_$(num)]",color:"aqua"}]

$give @a[tag=player_$(num)] poppy[custom_name={text:"结束发言",italic:false},consumable={animation:"none",consume_seconds:0,has_consume_particles:false,sound:"ui.button.click"}] 1

# 加队伍，给发光
$team join Speak @a[tag=player_$(num)]
$effect give @a[tag=player_$(num)] glowing infinite 0 true