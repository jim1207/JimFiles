# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/s1"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "s1"; then

  # Create a new window inline within session layout definition.
  new_window 

  new_window
  run_cmd "cd /opt/Transcoder3"

  # Create a new window inline within session layout definition.
  new_window "vim"
  run_cmd "cd /opt/Transcoder3; vim"

  # Load a defined window layout.
  load_window "w3t"

  # Load a defined window layout.
  load_window "w2"

  # Select the default active window on session creation.
  select_window 2

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session 
