# Bash-Quest
A text based adventure in your Shell!

## Your Task

Create a new adventure that can be run using the `play.sh` script.

*Requirements:*

1. Your adventure must contain at least 10 rooms
2. Your adventure must utilize at least 5 variables

### Getting Started

First, fork a copy of this repository. Then create a new branch:

`git checkout -b {USER_NAME}`

Next, add that branch to Github:

`git push -u origin {USER_NAME}`

### Sample Adventure

A sample adventure is available in the `cave` directory. To play it, run `bash
play.sh cave`.

### Comment `play.sh`

The Engine is currently not commented. To understand what it is doing, start by
completing the `#TODO` comments in that file. If you're not sure, try running
`man {command-name}` to view the manual page. Also, google can be quite helpful.
Also, ask your classmates / Mx. Collard if all else fails.

Once you've completed your comments. Add, commit, and push them.

Now, you're ready to create your own adventure!

### How it Works

Bash-Quest is simply a "Game Loop" that utilizes specific files in a directory
to create a text based adventure.

#### How Rooms Work

Each adventure is a series of Rooms that the player navigates between by enter
commands. A room is simply a directory on your computer that contains a
`description.txt` file and `handler.sh` file. When the player is in a room, the
`description.txt` will be printed to the terminal. The player will then be asked
to enter a command. After the command has been entered, it is stored in the
`$ACTION` shell variable and the `handler.sh` script runs. The `handler.sh`
script can use the `$ACTION` variable to make decisions about where to navigate
next.

#### Initializing the Adventure

Each adventure has an `init.sh` script which is executed once at the very
beginning of the adventure. This is used to create variables and utility
functions as well as move the player to the first room.