# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/farmhash-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${farmhash_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${farmhash_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET farmhash::farmhash)
    add_library(farmhash::farmhash INTERFACE IMPORTED)
    message(${farmhash_MESSAGE_MODE} "Conan: Target declared 'farmhash::farmhash'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/farmhash-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()