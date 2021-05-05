function trash() {
  mv $1 ~/.Trash/$1
  echo trashed $1
}
