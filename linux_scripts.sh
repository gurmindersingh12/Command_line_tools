#######################################################################
#################  Finding Files: find and locate  ####################
#######################################################################


## General form of a `find` command:

$ find [location] [criteria] [actions]

### there are three classes of the arguments, each of which can be omitted.

## for example, if no location is given, then the current directory (.) is selected or sssumed.
## if no criteria is given, all the files are displayed; and if no actions are given,
## only a listing of the names is given.

## There are many logical expressions which can be used for criteria.

## For example, we can use
$ find
## this will give everything, all directories and its descendants. no need to run that, may not be very helpful;
## however using with criteria or action command will be a very powerful tool.

$ find /root_folder/home/username/directory_name -name "*.fasta"

## location = /root_folder/home/username/directory_name
## criteria = -name "*.fasta"

## the `*` is a wildcard, meaning it will match any string of characters.
## the above code will search through `directory_name` and all its sub-direactories for files with names ending in `.fasta'

## `.fasta` is the file extension commonly used for FASTA format files (biological sequence data files).

## we can also specify a simple action `ls`

$ find /root_folder/home/username/directory_name -name "*.fasta" -ls
## actions = -ls. it will print out a long listing, not just the names.

## We can divide usage of [location], [criteria], and [actions] further with different options,

## [location] - 3 different ways

# Absolute paths, (for example, find /root/home/user/data)
# Relative paths, (for example, find ./data)
# Multiple paths separated by spaces, (for example, find /home/user ./data)


## [criteria] - most commonly used.

# `-name`: match file names with a specific name
$ find ./data -name "*.txt"

# `-type`: specify the type of file to search for: `f`: regular files; `d`: directories

$ find ./data -type f
