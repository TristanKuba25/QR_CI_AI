# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/gemmlowp-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${gemmlowp_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${gemmlowp_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET gemmlowp::gemmlowp)
    add_library(gemmlowp::gemmlowp INTERFACE IMPORTED)
    message(${gemmlowp_MESSAGE_MODE} "Conan: Target declared 'gemmlowp::gemmlowp'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/gemmlowp-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()