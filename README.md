# cmake_fetch_content_and_generator_expressions
Repository to show usage of CMake fetch content with repo using generator expressions. Currently, the generating expressions don't expand. If a solution is found, this repository will be updated accordingly.

# Building

Run `./setup.sh`. Since this example uses `FetchContent`, it requires an external project. And so a makeshift repository is made (and previous one destroyed) for the nested `LibA` library.

# Output

Notice how the generator expressions are not expanded (search for **LibA Include Dir** lines in the following output):

```
Initialized empty Git repository in /home/samaursa/Repos/cmake_test/cmake_fetch_content_and_generator_expressions/LibA/.git/
[master (root-commit) aa119c6] LibA first commit
 3 files changed, 16 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 CMakeLists.txt
 create mode 100644 include/LibA/Include.cmake
-- The C compiler identification is GNU 5.4.0
-- The CXX compiler identification is Clang 3.8.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /home/samaursa/Repos/cmake_test/cmake_fetch_content_and_generator_expressions/LibA/build
k-- The C compiler identification is GNU 5.4.0
-- The CXX compiler identification is Clang 3.8.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- LibA NOT FOUND. Source now being downloaded...
-- LibA Include Dir: $<BUILD_INTERFACE:/home/samaursa/Repos/cmake_test/cmake_fetch_content_and_generator_expressions/include/>
-- LibA Include Dir: $<INSTALL_INTERFACE:install/>
-- Configuring done
-- Generating done
-- Build files have been written to: /home/samaursa/Repos/cmake_test/cmake_fetch_content_and_generator_expressions/build

```
