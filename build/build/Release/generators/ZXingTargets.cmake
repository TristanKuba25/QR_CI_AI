# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/ZXing-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${zxing-cpp_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${ZXing_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET ZXing::ZXing)
    add_library(ZXing::ZXing INTERFACE IMPORTED)
    message(${ZXing_MESSAGE_MODE} "Conan: Target declared 'ZXing::ZXing'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/ZXing-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()