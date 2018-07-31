/*!
 * \file main.cpp
 * \brief A Documented file with main.
 * \details Details of the file should be here. LOL
 * \author Konrad Werys
 * \date 2018/08/24
 */

#include <iostream>
#include "mylib.h"
#include <vnl/vnl_cost_function.h>

using namespace std;

/**
 * main
 * @return always 0
 */
int main() {
    cout << "Hello, World!" << endl;
    cout << dummyFunction(4) << endl;

    vnl_cost_function aaa(2);

    return 0;
}