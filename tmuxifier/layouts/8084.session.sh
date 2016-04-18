# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/8084"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "8084"; then

  # Create a new window inline within session layout definition.
  new_window "free-use"

  # Create a new window inline within session layout definition.
  new_window "vim"
  run_cmd "cd /wk/8084/build/20151117/frameworks/av/media"

  # Load a defined window layout.
  load_window "w2q"

  new_window "logcat"

  # Select the default active window on session creation.
  select_window 2

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session 
