/*!
 * \file main.cpp
 * \brief A Documented file with main.
 * \details Details of the file should be here. LOL
 * \author Konrad Werys
 * \date 2018/08/24
 */

#include <iostream>
#include "mylib.h"

#include "MyCmakeConfig.h"
#ifdef USE_ITK
#include "itkImage.h"
#endif

using namespace std;

/**
 * main
 * @return always 0
 */
int main() {
    cout << "Hello, World!" << endl;
    cout << dummyFunction(4) << endl;

#ifdef USE_ITK
    typedef itk::Image< unsigned short, 3 > ImageType;
    ImageType::Pointer image = ImageType::New();
    std::cout << "Hello ITK World !" << std::endl;
#endif

    return 0;
}