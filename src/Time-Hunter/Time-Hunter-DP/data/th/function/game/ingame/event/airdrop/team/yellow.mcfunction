# 黄队
$setblock $(yellowx) 100 $(yellowy) chest{CustomName:[{translate: "game.event.airdrop.chest"}],LootTable:"th:chests/airdrop/common"} destroy

$tellraw @a[team=Yellow] [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.event.airdrop.tellraw.2",color: "green"},{translate: "game.event.airdrop.tellraw.pos",color: "white"},{text: "$(yellowx) 100 $(yellowy)"}]