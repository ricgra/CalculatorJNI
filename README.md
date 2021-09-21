# CalculatorJNI
A simple C++ sum calculator executed from Java through JNI.

# Build and run using Docker

1. Change your local workspace directory
  
    `$ cd your-clone-path/CalculatorJNI`

2. Build Docker image from Dockerfile with tag `calculatorjni-docker`

    `$ docker build --tag calculatorjni-docker .`

3. Run Docker image and connect to bash

    `$ docker run -it calculatorjni-docker`

4. Start program in Docker shell

    `$ sh run.sh "8.5" "1.5"`
    
    Output:
    
    ```
    Execute program ...
    Sum (8.500000, 1.500000) = 10.000000
    ```
# Build

1. Compile Java code - [build.sh]
```
$ javac src/com/ricgra/Calculator.java

$ javac -h . src/com/ricgra/Calculator.java
```
2. Compile C++ code and create .so - [cpp/build.sh]
```
$ mv com_ricgra_Calculator.h cpp/

$ export JAVA_INCLUDE_PATH=/your/jdk/include/folder/path/

$ g++ -std=c++11 -shared -fPIC -I$JAVA_INCLUDE_PATH -I$JAVA_INCLUDE_PATH/linux src/CalculatorImpl.cpp -o libcalculator.so
```

# Run

Execute sum - [run.sh]

```
$ java -cp ./src/ -Djava.library.path=./cpp/ com/ricgra/Calculator "1" "2"
```

[build.sh]: <https://github.com/ricgra/CalculatorJNI/blob/main/build.sh>
[cpp/build.sh]: <https://github.com/ricgra/CalculatorJNI/blob/main/cpp/build.sh>
[run.sh]: <https://github.com/ricgra/CalculatorJNI/blob/main/run.sh>
