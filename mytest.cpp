#include "gtest/gtest.h"
#include "mylib.h"

TEST(ContinousIntegrationPlayground, DummyTest) {
    EXPECT_EQ(1, 1);
}

TEST(ContinousIntegrationPlayground, DummyFunctionTest) {
    int dummyVariable = 4;
    EXPECT_EQ(dummyVariable, dummyFunction(dummyVariable));
}