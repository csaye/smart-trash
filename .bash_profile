function trash() {
  mkdir -p ~/.Trash # create trash directory if it does not exist
  mv $1 ~/.Trash/$1 # move file to trash
  echo "successfully trashed $1"
}

function empty() {
  # if no first argument
  if [ -z $1 ]
  then
    # empty with prompting
    read -p "empty the trash? " input
    case $input in
      # if input starts with y, empty
      [Yy]* ) rm -ir ~/.Trash; mkdir -p ~/.Trash; echo "trash emptied successfully";
    esac
  # if first argument --now
  elif [ $1 == "--now" ]
  then
    # empty immediately
    read -p "empty the trash immediately? " input
    case $input in
      # if input starts with y, empty
      [Yy]* ) rm -r ~/.Trash; mkdir -p ~/.Trash; echo "trash emptied successfully";
    esac
  fi
}
