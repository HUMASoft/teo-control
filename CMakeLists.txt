##functions
function(echo_all_cmake_variable_values)
  message(STATUS "")
  get_cmake_property(vs VARIABLES)
  foreach(v ${vs})
    message(STATUS "${v}='${${v}}'")
  endforeach(v)
  message(STATUS "")
endfunction()

add_definitions(-std=c++0x -DYARP_NO_DEPRECATED_WARNINGS=ON)

##project code
project(teof-control)

cmake_minimum_required(VERSION 2.8)

set( CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake )

aux_source_directory(src SRC_LIST)



#teoMWI library
#add_subdirectory(${PROJECT_SOURCE_DIR}/lib/teoMWI)
#set(teoMWI_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/lib/teoMWI ${teoMWI_INCLUDE_DIR})


#find_package(YARP REQUIRED)

add_subdirectory(lib)
INCLUDE_DIRECTORIES(${SUBDIR_INCLUDE_DIRECTORIES})

#aux_source_directory(src SRC_LIST)

foreach( sourcefile ${SRC_LIST} )
    # I used a simple string replace, to cut off .cpp.
    string( REGEX REPLACE "[A-z]+[/]" "" name ${sourcefile} )
    string( REPLACE ".cpp" "" name ${name} )

    add_executable( ${name} ${sourcefile} )
    message ("Including executable: " ${name})
    # Make sure lib are linked to each app
    target_link_libraries( ${name} ${SUBDIR_LINK_NAMES} )
endforeach( sourcefile ${SRC_LIST} )

#add_executable(${PROJECT_NAME} ${SRC_LIST})

#link with libs
#target_link_libraries( ${PROJECT_NAME} LibraryInterface fpid teoMWI ${YARP_LIBRARIES})

#echo_all_cmake_variable_values()


