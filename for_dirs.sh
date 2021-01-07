for dir in ~/workspaces/*;
  do
     [ -d "$dir" ] && cd "$dir" && ls -lart "$dir"
    
  done;
