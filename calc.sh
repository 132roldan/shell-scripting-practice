
echo " try add or subtract two numbers:"
echo " if do you wanna add type 'add'"
echo " if do you wanna subtract, type 'sub'"
read op
case $op in
	"add"|"+")
		echo "Ok,adding some numbers"
		fim=1
while [ 1 -eq $fim ];
do
echo "type the first number and press enter"
read fnumber
echo "now, type the second number and press enter"
read snumber
let total=$fnumber+$snumber
echo "result is $total"
echo "do you wanna do more math?"
echo " enter 1 for continue adding numbers or any number for exit"

read fim
done

		;;
	"subtract"|"s"|"sub")
		echo "Ok, subtracting some number"
		fim=1
while [ 1 -eq $fim ];
do
echo "type the first number and press enter"
read fnumber
echo "now, type the second number and press enter"
read snumber
let total=$fnumber-$snumber
echo "result is $total"
echo "do you wanna do more math?"
echo " enter 1 for continue subtracting numbers or any number for exit"

read fim
done

		;;
	*)
		echo "whoop, I only know how to add or subtract." >&2
		;;
esac
echo " Very impressive eh? enter 1 if you wanna go back or any number for exit"
read fim
done
