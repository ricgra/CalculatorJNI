#export JAVA_INCLUDE_PATH=/your/jdk/include/folder/path/
export JAVA_INCLUDE_PATH=/usr/lib/jvm/java-8-openjdk-amd64/include/

g++ -std=c++11 -shared -fPIC -I$JAVA_INCLUDE_PATH -I$JAVA_INCLUDE_PATH/linux src/CalculatorImpl.cpp -o libcalculator.so