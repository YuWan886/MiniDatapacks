# 红队
$setblock $(redx) 100 $(redy) chest{CustomName:[{translate: "game.event.airdrop.chest"}],LootTable:"th:chests/airdrop/common"} destroy

$tellraw @a[team=Red] [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.event.airdrop.tellraw.2",color: "green"},{translate: "game.event.airdrop.tellraw.pos",color: "white"},{text: "$(redx) 100 $(redy)"}]
