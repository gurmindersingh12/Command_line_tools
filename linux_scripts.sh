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

# `-size`: match files by size.
$ find ./data -size +1M
## the above code will find files greater than 1 Mb.

# `-mtime`: match files modified a certain number of days ago.
$ find ./data -mtime -7
## the above code will find files modified in last 7 days.

# `-user`: match files owned by a specific user.
$ find ./data -user username

# `-perm`: match files by permission.
$ find ./data -perm 644


## "644" represents the file permissions in the octal notation. In Linux, file permissions determine 
## who can read, write or execute a file. These are typically displayed in three groups:
## `owner`, `group`, and `others`.

## Understanding `644`

## Octal Notation breakdown: the `644` is a shorthand for the permissions:
## Owner: `6` = Read (4) + Write (2) = `6`
## Group: `4` = Read (4) = `4`
## Others: `4` = Read (4) = `4`

## Symbolic representation:
## `644` correspond to the symbolic format `rw-r--r--'
## `r`: Read permission
## `w`: Write permission
## `-`: No permission

## Breakdown of `rw-r--r--` (or we can say `644`)

## Owner: `rw-` (Read and Write)
## Group: `r--` (Read Only)
## Others: `r--` (Read Only)

### So, basically the meaning of `644` permission is that, it allows:

## Owner: Read and write access
## Group: Read-only access
## Others: Read-only access

## command to find files exactly with `644` permissions.

$ find ./data -perm 644
















