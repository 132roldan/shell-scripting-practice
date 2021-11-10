
echo " Hi stranger"
echo "Here you can add or subtract two number:"
verdade=1
while [ 1 -eq $verdade ] ;
do
echo " if you wanna add type 'add'"
echo " if you wanna subtract, type 'sub'"
read op
case $op in
	"add"|"+")
		echo "Ok,adding two numbers"
		fim=1
while  [ 1 -eq $fim ] ;
do
echo "type the first number and press enter"
read fnumber
echo "now, type the second number and press enter"
read snumber
let total="(( 10#$fnumber+10#$snumber ))"
echo "result is $total"
echo "do you wanna do more math?"
echo " enter 1 for continue adding numbers or any number for exit"

read fim
echo $fim
done

		;;
	"subtract"|"s"|"sub")
		echo "Ok, subtracting two number"
		fim=1
while  [ 1 -eq $fim ] ;
do
echo "type the first number and press enter"
read fnumber
echo "now, type the second number and press enter"
read snumber
let total="(( 10#$fnumber-10#$snumber ))"
echo "result is $total"
echo "do you wanna do more math?"
echo " enter 1 for continue subtracting numbers or any number for exit"

read fim
echo $fim
done

		;;
	*)
		echo "whoop, I only know how to add or subtract." >&2

		;;
esac

echo "if do you wanna continue doing math press 1 or any number to exit the program"
read verdade
done
echo "very impressive eh?"
