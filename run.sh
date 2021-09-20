#Execute the program, ex. sh run.sh "8.5" "1.5"
echo "Execute program ..."
java -cp ./src/ -Djava.library.path=./cpp/ com/ricgra/Calculator $1 $2