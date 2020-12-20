## This scripts contains common function

# create folder if don't exist
create_folder() {
  if [ ! -e $1 ]; then
    mkdir -p $1
  fi
}

command_exist() {
  type -t "$1" > /dev/null 2>&1;
}
