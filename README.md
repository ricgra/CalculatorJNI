# CalculatorJNI
A simple C++ calculator executed from Java through JNI.

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
