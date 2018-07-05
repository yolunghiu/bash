# Bash Learning Notes
> (link)[https://ryanstutorials.net/bash-scripting-tutorial/]

## Variable

### Special Variables
- $0 - The name of the Bash script.
- $1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
- $# - How many arguments were passed to the Bash script.
- $@ - All the arguments supplied to the Bash script.
- $? - The exit status of the most recently run process.
- $$ - The process ID of the current script.
- $USER - The username of the user running the script.
- $HOSTNAME - The hostname of the machine the script is running on.
- $SECONDS - The number of seconds since the script was started.
- $RANDOM - Returns a different random number each time is it referred to.
- $LINENO - Returns the current line number in the Bash script.

> If you type the command env on the command line you will see a listing of other variables which you may also refer to.

### Quotes

- Single quotes will treat every character literally.
`var='Hello World'`
- Double quotes will allow you to do substitution (that is include variables within the setting of the value).
`var2=$var Welcome`

### Export Variable

- `export var`

## IF Statement

```
if [ $1 -gt 100 ]
then
	echo Hey that\'s a large number.
fi
```
