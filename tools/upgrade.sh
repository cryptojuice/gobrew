cd "`dirname $0`"

if git pull --rebase --stat origin master
then
  printf '\033[0;34m%s\033[0m' 'Hooray! Gobrew has been updated and/or is at the current version.'
else
  printf '\033[0;31m%s\033[0m' 'There was an error updating. Try again later?'
fi
