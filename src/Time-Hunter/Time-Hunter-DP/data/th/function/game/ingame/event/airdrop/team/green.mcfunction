# 绿队
$setblock $(greenx) 100 $(greeny) chest{CustomName:[{translate: "game.event.airdrop.chest"}],LootTable:"th:chests/airdrop/common"} destroy

$tellraw @a[team=Green] [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.event.airdrop.tellraw.2",color: "green"},{translate: "game.event.airdrop.tellraw.pos",color: "white"},{text: "$(greenx) 100 $(greeny)"}]