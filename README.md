# Continous Integration Playground

See the [DOCS PAGE](https://mrkonrad.github.io/ContinousIntegrationPlayground/html/).


![AppVeyor tests](https://img.shields.io/appveyor/tests/MRKonrad/continousintegrationplayground.svg)


| System        | Status        |
|:-------------:|:-------------:|
| Travis (OSX/Linux) | [![Travis (.org)](https://img.shields.io/travis/MRKonrad/ContinousIntegrationPlayground.svg?style=for-the-badge)](https://travis-ci.org/MRKonrad/ContinousIntegrationPlayground) | 
| AppVeyor (Windows) | [![AppVeyor](https://img.shields.io/appveyor/ci/MRKonrad/continousintegrationplayground.svg?style=for-the-badge)](https://ci.appveyor.com/project/MRKonrad/continousintegrationplayground) |
| Coveralls (test coverage) | [![Coveralls](https://img.shields.io/coveralls/github/MRKonrad/ContinousIntegrationPlayground.svg?style=for-the-badge)](https://coveralls.io/github/MRKonrad/ContinousIntegrationPlayground) |


# Inspiration
Based on 
* juan-medina's [this post](https://juan-medina.com/2017/07/01/moderncppci/) and [this repo](https://github.com/LearningByExample/ModernCppCI) about travis, appveyor, cmake and catch   
* david-grs' [this post](http://david-grs.github.io/cpp-clang-travis-cmake-gtest-coveralls-appveyor/) and [this repo](https://github.com/david-grs/clang_travis_cmake_gtest_coveralls_example) about travis, cmake, gtest, coveralls and appveyor
* vidavidorra's [this gist](https://gist.github.com/vidavidorra/7ed6166a46c537d3cbd2) about doxygen, travis and github 

# Notes
* entries in `.gitmodules` are added automatically by calling in console for example 
 `git submodule add https://github.com/google/googletest.git ./thirdParty/googletest`
 * to generate documentation we need to tell doxygen what dirs it should use as input (`INPUT` in Doxyfile). As in this Doxyfile I assigned it to env variable (`INPUT = $(INPUT_FOR_DOXY)`), we have to define the variable. This is done in `.travis.yml`, but if you want to do it **locally** type in console:  
     ```console
     export INPUT_FOR_DOXY=". ./app ./lib ./tests" # to define the env variable
     doxygen Doxyfile # to run doxygen
     ```
* to generate coverage **locally**: `lcov --capture --directory . --output-file coverage.info`, to generate coverage html report `genhtml coverage.info --output-directory out`
* to delpoy:
     ```console
     git commit -m 'my message'
     git tag v0.1
     git push origin v0.1
     ```
* tokens for deployment. Go to github/Settings/Developer settings/Personal access tokens. Generate a new one. To use in travis you have to have travis installed on your local system and encypt the token. To use in appveyor go to their website and encrypt the token.
 




