# nx_bootcamp_nix_diary

Nx_boorcamp_nix_diary is an easy cli-app for creating also by patterns and managing diary notes.

## Installation

Get this repo and change .bashrc-file by specifying the location of the files.

## Usage

To create a new note with title ~/diary/year/month/ID__yyyy-mm-dd_HH-MM.md, where ~/diary is the default directory to save from the config file `.diaryrc`.

```bash shell
createnote
```

An example of the config file:

```bash shell
ED=nano
WAY=/home/sasha/diary
PATTERN=/home/sasha/pattern.md
```

After creating a note it opens via a default text editor from the config file `.diaryrc`. On subsequent openings of the note via the command `opennote [fullpath to the note]` it is opened via a default text. To change it use the command (variable ED will be changed):

```bash shell
changeeditor
```

To change a default path use the command (variable WAY will be changed):

```bash shell
changepath
```

A note opens in a default pattern `pattern.md`, which is wrote in the config file. For setting a pattern function `settemplate()` is used. To change a patter use the command (variable PATTERN will be changed): 

```bash shell
changepattern
```

To delete a note from template use the command:

```bash shell
delete [fullpath to the note or or its name when deleting from the its parent directory]
```

After using this command, a note move to the notebin, where a note is temporarily stored in `~/notebin/files` and its full parh info  in `~/notebin/info`. To restore a note from the bin:

```bash shell
restore [fullpath to the note in the notebin or its name when restoring from ~/notebin/files]
```

After restoring all note info deleting from the notebin and move to its former path due to info from ~/notebin/info.

To get some statisctics (the count of all diary notes, date of the last note creation, the biggest note in the diary) use the command: 

```bash shell
getstatisctics
```

The example of command result:

```bash shell
Total count of notes: 54
Date of the last creation: 2021-05-04_23-53
The biggest file: FgDh3yDo_2021-05-04_00-54.md
```
