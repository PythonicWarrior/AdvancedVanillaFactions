################
# AS-AT Player #
################

tellraw @s {"text": "Creating Faction...", "color":"yellow"}

execute as @s[nbt={SelectedItem:{id:"minecraft:writable_book", tag:{pages:["faction"]}}}] run tag @s add AVF.CreatingFaction
execute as @s[tag=AVF.CreatingFaction] run tellraw @s {"text":"Creation process started! Please fill out the given book. Sign to complete", "color":"green"}
execute as @s[tag=AVF.CreatingFaction] run item replace entity @s weapon.mainhand with writable_book{Enchantments:[{}], pages:["Name:","Subtitle:","Color:"]}

execute unless entity @s[tag=AVF.CreatingFaction] run tellraw @s {"text": "Cannot create Faction! Please be holding a Book & Quill with the word 'faction' on the first page to create a Faction.", "color":"red"}

tag @s remove AVF.CreatingFaction
scoreboard players set @s f_create 0
scoreboard players enable @s f_create