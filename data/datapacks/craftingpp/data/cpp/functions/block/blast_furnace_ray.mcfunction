execute if entity @s[distance=..6] if block ~ ~ ~ blast_furnace align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,DisabledSlots:7967,Tags:["cpp_blast_furnace","cpp_all_furnace"]}
execute if entity @s[distance=..6] unless block ~ ~ ~ blast_furnace positioned ^ ^ ^0.005 anchored feet run function cpp:block/blast_furnace_ray
