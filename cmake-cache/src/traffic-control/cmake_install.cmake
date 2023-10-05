# Install script for directory: /Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/build/lib/libns3.40-traffic-control-default.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-traffic-control-default.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-traffic-control-default.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/build/lib"
      -add_rpath "/usr/local/lib:$ORIGIN/:$ORIGIN/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-traffic-control-default.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.40-traffic-control-default.dylib")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/helper/queue-disc-container.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/helper/traffic-control-helper.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/cobalt-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/codel-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/fifo-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/fq-cobalt-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/fq-codel-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/fq-pie-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/mq-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/packet-filter.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/pfifo-fast-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/pie-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/prio-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/red-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/tbf-queue-disc.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/src/traffic-control/model/traffic-control-layer.h"
    "/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/build/include/ns3/traffic-control-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/bharadwajanandivada/Downloads/ns-allinone-3.40/ns-3.40/cmake-cache/src/traffic-control/examples/cmake_install.cmake")

endif()

