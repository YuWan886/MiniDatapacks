# 蓝队
$setblock $(bluex) 100 $(bluey) chest{CustomName:[{translate: "game.event.airdrop.chest"}],LootTable:"th:chests/airdrop/common"} destroy

$tellraw @a[team=Blue] [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.event.airdrop.tellraw.2",color: "green"},{translate: "game.event.airdrop.tellraw.pos",color: "white"},{text: "$(bluex) 100 $(bluey)"}]