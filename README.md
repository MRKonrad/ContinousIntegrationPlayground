# Continous Integration Playground

| System        | Status        |
|:-------------:|:-------------:|
| Travis (OSX/Linux) | [![Travis (.org)](https://img.shields.io/travis/MRKonrad/ContinousIntegrationPlayground.svg?style=for-the-badge)](https://travis-ci.org/MRKonrad/ContinousIntegrationPlayground) | 
| AppVeyor (Windows) | [![AppVeyor](https://img.shields.io/appveyor/ci/MRKonrad/continousintegrationplayground.svg?style=for-the-badge)](https://ci.appveyor.com/project/MRKonrad/continousintegrationplayground) |
| Coveralls (test coverage) | [![Coveralls](https://img.shields.io/coveralls/github/MRKonrad/ContinousIntegrationPlayground.svg?style=for-the-badge)](https://coveralls.io/github/MRKonrad/ContinousIntegrationPlayground) |

# Inspiration
Based on [this repo](https://github.com/LearningByExample/ModernCppCI) and [this post](http://david-grs.github.io/cpp-clang-travis-cmake-gtest-coveralls-appveyor/).

# Notes

* entries in  `.gitmodules` are added automatically by calling for example  
 `git submodule add https://github.com/google/googletest.git ./thirdParty/googletest`
* to generate coverage `lcov --capture --directory . --output-file coverage.info`
* to generate coverage html report `genhtml coverage.info --output-directory out`


