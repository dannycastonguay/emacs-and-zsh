# Grep Sample Commands

## Text in subfolders	

`grep -r Walden ~/Documents/*`

Finds Walden in any file in any subfolder of ~/Documents. 

## Whole words only

`grep -w live`

Finds only live ; does not find liver , lives , lived , and so on.

## Case-insensitive text

`grep -i pond`

Finds pond , POND , or Pond .

## File names only

`grep -l Walden`

Finds files containing Walden , but returns only a list of file names.

## Number of occurrences only

`grep -c Walden`

Returns the names of files containing Walden and the number of hits in each file.

## Files containing both Walden and Pondon the same line

`grep Walden * | grep Pond`

or any lines with a e i o u

`grep a /usr/share/dict/words | grep e | grep i | grep o | grep u`

# Credits

[[http://www.macworld.com/article/1041504/jangeekfactor.html]]