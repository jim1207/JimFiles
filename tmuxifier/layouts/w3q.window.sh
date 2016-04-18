# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/w3q"

WKDIR=/wk/8084/build/20151117
# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "w3q"

# Split window into panes.
split_h 40
split_v 50

# Run commands.
#run_cmd "top"     # runs in active pane
#run_cmd "date" 1  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
select_pane 0
run_cmd "cd $WKDIR"
run_cmd "source ./env.sh"
select_pane 1
run_cmd "cd $WKDIR"
select_pane 2
run_cmd "cd $WKDIR"
select_pane 0

