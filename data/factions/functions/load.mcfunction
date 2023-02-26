#################################
#                               #
#   Advanced Vanilla Factions   #
#                               #
#################################

tellraw @a [{"text":"Thank you ", "color":"gold"}, {"text":"for downloading "}, {"text":"Advanced Vanilla Factions!", "color":"dark_green"}]


################
# Data Storage #
################

scoreboard objectives add faction_count dummy
scoreboard objectives add faction_id dummy
scoreboard objectives add joined_faction dummy


############
# Commands #
############

# General
# Create Faction
scoreboard objectives add f_create trigger
scoreboard players enable @a f_create
# Disband or delete Faction
scoreboard objectives add f_disband trigger
scoreboard players enable @a f_disband
# Join Faction
scoreboard objectives add f_join trigger
scoreboard players enable @a f_join
# Leave Faction
scoreboard objectives add f_leave trigger
scoreboard players enable @a f_leave
# Get Faction info
scoreboard objectives add f_info trigger
scoreboard players enable @a f_info
# Open Factions help menu
scoreboard objectives add f_help trigger
scoreboard players enable @a f_help
# Configure your Faction
scoreboard objectives add f_configure trigger
scoreboard players enable @a f_configure

# Members
# Open Member configuration menu
scoreboard objectives add f_members trigger
scoreboard players enable @a f_members
# Promote Member
scoreboard objectives add f_members_promote trigger
scoreboard players enable @a f_members_promote
# Demote Member
scoreboard objectives add f_members_demote trigger
scoreboard players enable @a f_members_demote
# Invite player with default permissions
scoreboard objectives add f_members_invite trigger
scoreboard players enable @a f_members_invite
# Kick player from Faction
scoreboard objectives add f_members_kick trigger
scoreboard players enable @a f_members_kick
# Ban player from Faction
scoreboard objectives add f_members_ban trigger
scoreboard players enable @a f_members_ban
# Forgive banned player from Faction
scoreboard objectives add f_members_forgiveban trigger
scoreboard players enable @a f_members_forgiveban

# Claim Management
# Open Claim management menu
scoreboard objectives add f_claims trigger
scoreboard players enable @a f_claims
# Claim current chunk
scoreboard objectives add f_claims_add trigger
scoreboard players enable @a f_claims_add
# Unclaim current chunk
scoreboard objectives add f_claims_remove trigger
scoreboard players enable @a f_claims_remove
# Configure current chunk
scoreboard objectives add f_claims_configurechunk trigger
scoreboard players enable @a f_claims_configurechunk

# Permissions
scoreboard objectives add f_permissions trigger
scoreboard players enable @a f_permissions