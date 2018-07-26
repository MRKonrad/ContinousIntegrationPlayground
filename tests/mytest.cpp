/*!
 * \brief A Documented test file.
 * \details Details of the file should be here. LOL
 * \author Konrad Werys
 * \date $Date: 2018/08/24 $
 */

#include "gtest/gtest.h"
#include "mylib.h"

/**
 * Dummy test compares 1 with 1
 */
TEST(ContinousIntegrationPlayground, DummyTest) {
    EXPECT_EQ(1, 1);
}

/**
 * Dummy test of a dummyFunction
 */
TEST(ContinousIntegrationPlayground, DummyFunctionTest) {
    int dummyVariable = 4;
    EXPECT_EQ(dummyVariable, dummyFunction(dummyVariable));
}