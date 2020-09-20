# PreRoll-Changer
This bash script is to be used to change which prerolls are in the "active" directory without having to change the names in the Plex settings.

# Usage
  ./activePreRollChanger.sh activeDirectory collectionDirectory numberOfFilesToPutIntoActive
  
      activeDirectory: the directory that the prerolls will be put into
      collectionDirectory: the directory that all the prerolls sit in
      numberOfFilesToPutIntoActive: the number of prerolls to be put into the activeDirectory
  
# NOTES:
  -All files in the collection directory MUST be in one word, no spaces
  
  -This script also assumes that all the files in the directories are in the .mp4 format
