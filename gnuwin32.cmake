IF (NOT GNUWIN32_ROOT_DIR)
IF (WIN32)
  FIND_PATH(GNUWIN32_ROOT_DIR 
    NAMES gnuwin32
    PATHS
      $ENV{gnu_ROOT_DIR}
      $ENV{ProgramFiles}
      C:/
      D:/
    DOC "gnu base/installation directory?" 
    )
ENDIF (WIN32)
ENDIF (NOT GNUWIN32_ROOT_DIR)

IF (WIN32)
  SET (GNU_INCLUDE_DIR
    ${GNUWIN32_ROOT_DIR}/gnuwin32/include
)
ENDIF (WIN32)

FIND_LIBRARY (ZLIB_LIBRARIES 
  NAMES zlib libzlib
  PATHS
    ${GNUWIN32_ROOT_DIR}/gnuwin32/lib
    $ENV{LIBRARY_PATH}
    ${DEFAULT_LIB_PATH}
)
MARK_AS_ADVANCED(ZLIB_LIBRARIES)

FIND_LIBRARY(LIBXML2_LIBRARIES 
  NAMES libxml2 xml2
  PATHS
    ${GNUWIN32_ROOT_DIR}/gnuwin32/lib
    $ENV{LIBRARY_PATH}
    ${DEFAULT_LIB_PATH}   
  REQUIRED
)
MARK_AS_ADVANCED(LIBXML2_LIBRARIES)

FIND_LIBRARY(TIFF_LIBRARIES 
  NAMES tiff libtiff
  PATHS
    ${GNUWIN32_ROOT_DIR}/gnuwin32/lib
    $ENV{LIBRARY_PATH}
    ${DEFAULT_LIB_PATH}   
  REQUIRED
)
MARK_AS_ADVANCED(TIFF_LIBRARIES)

FIND_LIBRARY(JPEG_LIBRARIES 
  NAMES jpeg libjpeg
  PATHS
    ${GNUWIN32_ROOT_DIR}/gnuwin32/lib
    $ENV{LIBRARY_PATH}
    ${DEFAULT_LIB_PATH}   
  REQUIRED
)
MARK_AS_ADVANCED(JPEG_LIBRARIES)

FIND_LIBRARY(EXPAT_LIBRARIES 
  NAMES expat libexpat
  PATHS
    ${GNUWIN32_ROOT_DIR}/gnuwin32/lib
    $ENV{LIBRARY_PATH}
    ${DEFAULT_LIB_PATH}   
  REQUIRED
)
MARK_AS_ADVANCED(EXPAT_LIBRARIES)
