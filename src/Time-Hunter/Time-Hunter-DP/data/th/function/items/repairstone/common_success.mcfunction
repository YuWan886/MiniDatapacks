# 成功 普通修复石 1/4 
execute store success storage th:repair check.success int 1 run item modify entity @s weapon.mainhand th:item/repairstone/common
tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.item.repairstone.used.tellraw.4",color: "green"}]

scoreboard players set @s RepairItemCommon 0

advancement revoke @s only th:items/rapairstone/common