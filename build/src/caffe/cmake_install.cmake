# Install script for directory: /home/zhangyan/icaffe/src/caffe

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/zhangyan/icaffe/build/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zhangyan/icaffe/include/caffe")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/caffe/proto" TYPE FILE FILES "/home/zhangyan/icaffe/build/include/caffe/proto/caffe.pb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe.so.1.0.0-rc3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "/home/zhangyan/icaffe/build/install/lib:/usr/local/cuda/lib64:/usr/local/lib")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/zhangyan/icaffe/build/lib/libcaffe.so.1.0.0-rc3"
    "/home/zhangyan/icaffe/build/lib/libcaffe.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe.so.1.0.0-rc3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcaffe.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/usr/local/cuda/lib64:/usr/local/lib::::::::::::::::::::::::::::::::::::::::"
           NEW_RPATH "/home/zhangyan/icaffe/build/install/lib:/usr/local/cuda/lib64:/usr/local/lib")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/zhangyan/icaffe/build/lib/libproto.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/python/caffe/proto" TYPE PROGRAM FILES
    "/home/zhangyan/icaffe/build/include/caffe/proto/caffe_pb2.py"
    "/home/zhangyan/icaffe/build/__init__.py"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/zhangyan/icaffe/build/src/caffe/test/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

