#Compile Java code
echo "Compile Java code ..."
javac src/com/ricgra/Calculator.java
javac -h . src/com/ricgra/Calculator.java
mv com_ricgra_Calculator.h cpp/
#Compile c++ code
echo "Compile c++ code and create .so ..."
cd cpp
./build.sh