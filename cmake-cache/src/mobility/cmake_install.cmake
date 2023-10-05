# Install script for directory: /Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "default")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/build/lib/libns3.40-mobility-default.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-mobility-default.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-mobility-default.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/build/lib"
      -add_rpath "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-mobility-default.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-mobility-default.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/helper/group-mobility-helper.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/helper/mobility-helper.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/helper/ns2-mobility-helper.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/box.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/constant-acceleration-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/constant-position-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/constant-velocity-helper.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/constant-velocity-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/gauss-markov-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/geographic-positions.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/hierarchical-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/position-allocator.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/random-direction-2d-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/random-walk-2d-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/random-waypoint-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/rectangle.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/steady-state-random-waypoint-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/waypoint-mobility-model.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/mobility/model/waypoint.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/build/include/ns3/mobility-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/cmake-cache/src/mobility/examples/cmake_install.cmake")

endif()

