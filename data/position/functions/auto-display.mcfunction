# Get the position
execute as @a store result score @s position_x run data get entity @s Pos[0]
execute as @a store result score @s position_y run data get entity @s Pos[1]
execute as @a store result score @s position_z run data get entity @s Pos[2]

# Display it
execute as @a run title @s actionbar ["", {"text": "x:", "color": "gold"}, {"score": {"name": "@s", "objective": "position_x"}, "color": "red"}, {"text": ", ", "color": "white"}, {"text": "y:", "color": "gold"}, {"score": {"name": "@s", "objective": "position_y"}, "color": "red"}, {"text": ", ", "color": "white"}, {"text": "z:", "color": "gold"}, {"score": {"name": "@s", "objective": "position_z"}, "color": "red"}]

# Schedule the next iteration
schedule function position:auto-display 10s
