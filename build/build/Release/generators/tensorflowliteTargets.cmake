# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/tensorflowlite-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${tensorflow-lite_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${tensorflowlite_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET tensorflow::tensorflowlite)
    add_library(tensorflow::tensorflowlite INTERFACE IMPORTED)
    message(${tensorflowlite_MESSAGE_MODE} "Conan: Target declared 'tensorflow::tensorflowlite'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/tensorflowlite-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()