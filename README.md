# Continuous Integration Playground

See the [DOCS PAGE](https://mrkonrad.github.io/ContinuousIntegrationPlayground/html/).

| System   |      Badge      |
|----------|:---------------:|
| [OSX/Linux build - Travis][travis_link]   | [![Travis (.org)][travis_badge]][travis_link]                      |
| [Windows build - AppVeyor][appveyor_link] | [![AppVeyor][appveyor_badge]][appveyor_link]    
| [Test coverage][codecov_link]               | [![codecov][codecov_badge]][codecov_link] |
| [Downloads][downloads_link]               | [![GitHub Releases (by Release)][downloads_badge]][downloads_link] |

# Inspiration
Based on
* juan-medina's [this post](https://juan-medina.com/2017/07/01/moderncppci/) and [this repo](https://github.com/LearningByExample/ModernCppCI) about travis, appveyor, cmake and catch   
* david-grs' [this post](http://david-grs.github.io/cpp-clang-travis-cmake-gtest-codecov-appveyor/) and [this repo](https://github.com/david-grs/clang_travis_cmake_gtest_codecov_example) about travis, cmake, gtest, codecov and appveyor
* vidavidorra's [this gist](https://gist.github.com/vidavidorra/7ed6166a46c537d3cbd2) about doxygen, travis and github

# Notes
* entries in `.gitmodules` are added automatically by calling in console for example
 `git submodule add https://github.com/google/googletest.git ./thirdParty/googletest`
* to generate documentation we need to tell doxygen what dirs it should use as input (`INPUT` in Doxyfile). As in this Doxyfile I assigned it to env variable (`INPUT = $(INPUT_FOR_DOXY)`), we have to define the variable. This is done in `.travis.yml`, but if you want to do it **locally** type in console:  
  ```console
  export INPUT_FOR_DOXY=". ./app ./lib ./tests" # to define the env variable
  doxygen Doxyfile # to run doxygen
  ```
* to generate coverage **locally**:
  * `cmake . -DCMAKE_CXX_FLAGS="-fprofile-arcs -ftest-coverage"`
  * `lcov --no-external --capture --directory . --output-file coverage.info`
  * `lcov --remove coverage.info 'thirParty/*' 'tests/*' -o coverage_filtered.info`
  * to generate coverage html report `genhtml covercoverage_filteredage.info --output-directory out`
* to delpoy:
  ```console
  git commit -m 'my message'
  git tag v0.1
  git push origin v0.1
  ```
* to delete tag:
  ```console
  git push --delete origin v0.1
  git tag --delete v0.1
  ```
* tokens for deployment. Go to `github/Settings/Developer settings/Personal access tokens`. Generate a new one. To use in travis you have to have travis installed on your local system and encypt the token. To use in appveyor go to their website and encrypt the token.

* Slack notifications:
  * appveyor - add from repo setting at their webpage using this token: https://api.slack.com/custom-integrations/legacy-tokens
  * travis - install travis integration in slack

[travis_badge]: https://img.shields.io/travis/MRKonrad/ContinuousIntegrationPlayground/master.svg?style=flat-square
[travis_link]: https://travis-ci.org/MRKonrad/ContinuousIntegrationPlayground
[appveyor_badge]: https://img.shields.io/appveyor/ci/MRKonrad/ContinuousIntegrationPlayground/master.svg?style=flat-square
[appveyor_link]: https://ci.appveyor.com/project/MRKonrad/continuousintegrationplayground
[codecov_badge]: https://img.shields.io/codecov/c/github/MRKonrad/ContinuousIntegrationPlayground.svg?style=flat-square
[codecov_link]: https://codecov.io/gh/MRKonrad/ContinuousIntegrationPlayground
[downloads_link]: https://github.com/MRKonrad/ContinuousIntegrationPlayground/releases
[downloads_badge]: https://img.shields.io/github/downloads/MRKonrad/ContinuousIntegrationPlayground/total.svg?style=flat-square
