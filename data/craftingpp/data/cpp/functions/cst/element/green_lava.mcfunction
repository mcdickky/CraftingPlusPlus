setblock ~ ~ ~ lava
execute store result storage cpp:temp green.Item.tag.cppLiquid.lava int 1 run scoreboard players remove #lava cppValue 1

setblock ~ 255 ~1 oak_sign
data modify block ~ 255 ~1 Text1 set value '[{"color":"red","italic":false,"translate":"block.minecraft.lava"}," ",{"italic":false,"score":{"name":"#lava","objective":"cppValue"}}]'
data modify storage cpp:temp green.Item.tag.display.Lore[1] set from block ~ 255 ~1 Text1

setblock ~ 255 ~ shulker_box
data modify storage cpp:temp green.Item.Slot set value 0b
data modify block ~ 255 ~ Items append from storage cpp:temp green.Item
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.offhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
fill ~ 255 ~ ~ 255 ~1 air
