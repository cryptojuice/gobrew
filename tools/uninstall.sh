echo "Removing ~/.gobrew"
if [ -d ~/.gobrew ]
then
  rm -rf ~/.gobrew
fi

echo "\n\033[0;32mThanks for using gobrew. It's been uninstalled.\033[0m"
