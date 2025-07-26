message(STATUS "Conan: Using CMakeDeps conandeps_legacy.cmake aggregator via include()")
message(STATUS "Conan: It is recommended to use explicit find_package() per dependency instead")

find_package(OpenCV)
find_package(ZXing)
find_package(tensorflowlite)

set(CONANDEPS_LEGACY  opencv::opencv  ZXing::ZXing  tensorflow::tensorflowlite )