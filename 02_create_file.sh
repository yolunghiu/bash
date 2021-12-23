if test $# -ne 2
then
	echo 'Usage: ./run [index] "[filename]"'
else
	index=$1
	name="$(echo -e "$2" | tr -d '[:space:]')"".cpp"
	echo $name
	touch $name
	echo "add_exe($index $name)" >> CMakeLists.txt
fi
