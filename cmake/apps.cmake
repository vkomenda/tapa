if(PROJECT_NAME STREQUAL "tapa")
  set(TAPA tapa)
  set(TAPAC PYTHONPATH=${CMAKE_SOURCE_DIR}/backend/python python3 -m tapa.tapac
            --cflags=-I${CMAKE_SOURCE_DIR}/src)
  set(TAPACC $<TARGET_FILE:tapacc>)
else()
  find_package(TAPA REQUIRED)
  set(TAPA tapa::tapa)
endif()

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wno-attributes")
set(TAPA_CFLAGS "${TAPA_CFLAGS} -Wno-attributes")
