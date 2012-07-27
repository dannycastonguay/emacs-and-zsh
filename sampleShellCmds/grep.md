# Grep Sample Commands

## Text in subfolders	

`grep -r Walden ~/Documents/*`

finds Walden in any file in any subfolder of ~/Documents. 

## Whole words only

`grep -w live`

finds only live ; does not find liver , lives , lived , and so on.

## Case-insensitive text

`grep -i pond`

finds pond , POND , or Pond .

## File names only

`grep -l Walden`

finds files containing Walden , but returns only a list of file names.

## Number of occurrences only

`grep -c Walden`

returns the names of files containing Walden and the number of hits in each file.

## Files containing both Walden and Pondon the same line

`grep Walden * | grep Pond`

or any lines with a e i o u

`grep a /usr/share/dict/words | grep e | grep i | grep o | grep u`

## Mix it with regular expressions

`grep ^sep.r.te /usr/share/dict/words`

for a list of words that includes separate, separately, separately, separateness, and separates.

`grep [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] phonebook.txt`

for a list of phone numbers in the 555-1234 format

# Credits

[Macworld](http://www.macworld.com/article/1041504/jangeekfactor.html)