# Create required scoreboards
scoreboard objectives add position_x dummy
scoreboard objectives add position_y dummy
scoreboard objectives add position_z dummy

# Clear schedule(s)
schedule clear position:auto-display

# Run required function(s)
function position:auto-display
