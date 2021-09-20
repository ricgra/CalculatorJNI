package com.ricgra;

public class Calculator {

    static {
        // loads libcalculator.so
        System.loadLibrary("calculator");
    }

    private native double sum(double a, double b);
    private native void printMessage(String message);

    public static void main(String[] args) {
        Calculator calculator = new Calculator();

        double a = Double.parseDouble(args[0]);
        double b = Double.parseDouble(args[1]);
        double result = calculator.sum(a, b);

        String message = String.format("Sum (%f, %f) = %f", a, b, result);
        calculator.printMessage(message);
    }

}
