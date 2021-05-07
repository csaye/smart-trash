function trash() {
  mkdir -p ~/.Trash
  mv $1 ~/.Trash/$1
  echo "successfully trashed $1"
}

function empty() {
  read -p "empty the trash? " input
  case $input in
    [Yy]* ) rm -ir ~/.Trash; mkdir -p ~/.Trash; echo "trash emptied successfully";
  esac
}

function emptynow() {
  read -p "empty the trash? " input
  case $input in
    [Yy]* ) rm -r ~/.Trash; mkdir -p ~/.Trash; echo "trash emptied successfully";
  esac
}
