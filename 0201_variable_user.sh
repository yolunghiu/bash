# common variable
name=Zhangsan
age=23

echo $name: $age
echo

path=~/
ls $path
echo


# quotes
var='Hello World'
echo $var
echo

var2="$var Welcome"
echo $var2
echo


# commands
result=$( ls ~/)
echo $result
