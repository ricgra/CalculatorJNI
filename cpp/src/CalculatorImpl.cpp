#include "CalculatorImpl.h"

#include <iostream>
#include <string.h>
#include <jni.h>
#include "com_ricgra_Calculator.h"

using std::cout;
using std::endl;
using std::string;

JNIEXPORT jdouble JNICALL Java_com_ricgra_Calculator_sum(JNIEnv *, jobject, jdouble a, jdouble b)
{
    return sum(a, b);
}

JNIEXPORT void JNICALL Java_com_ricgra_Calculator_printMessage(JNIEnv *env, jobject, jstring message)
{
    const char *inputMessage = env->GetStringUTFChars(message, nullptr);

    PrintMessage(inputMessage);
}

double sum(const double a, const double b)
{
    return a + b;
}

void PrintMessage(const string message)
{
    cout << message << endl;
}