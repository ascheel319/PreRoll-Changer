# PreRoll-Changer
This bash script is to be used to change which prerolls are in the "active" directory without having to change the names in the Plex settings. The prerolls get named preroll-#.mp4 in the active directory where the # is the number is the count that it is, starting at 0. EX: if 4 files are wanted then they will be preroll-0.mp4 preroll-1.mp4 preroll-2.mp4 preroll-3.mp4

# Usage
  ./activePreRollChanger.sh activeDirectory collectionDirectory numberOfFilesToPutIntoActive
  
      activeDirectory: the directory that the prerolls will be put into
      collectionDirectory: the directory that all the prerolls sit in
      numberOfFilesToPutIntoActive: the number of prerolls to be put into the activeDirectory
  
# NOTES:
  -All files in the collection directory MUST be in one word, no spaces
  
  -This script also assumes that all the files in the directories are in the .mp4 format
