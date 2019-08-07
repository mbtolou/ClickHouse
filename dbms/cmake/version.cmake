# This strings autochanged from release_lib.sh:
set(VERSION_REVISION 54423)
set(VERSION_MAJOR 19)
set(VERSION_MINOR 11)
set(VERSION_PATCH 7)
set(VERSION_GITHASH 5b5f70aa653d184670a191e304b6f0b26280ea57)
set(VERSION_DESCRIBE v19.11.7.1-stable)
set(VERSION_STRING 19.11.7.1)
# end of autochange

set(VERSION_EXTRA "" CACHE STRING "")
set(VERSION_TWEAK "" CACHE STRING "")

if (VERSION_TWEAK)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_TWEAK})
endif ()

if (VERSION_EXTRA)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_EXTRA})
endif ()

set (VERSION_NAME "${PROJECT_NAME}")
set (VERSION_FULL "${VERSION_NAME} ${VERSION_STRING}")
set (VERSION_SO "${VERSION_STRING}")

math (EXPR VERSION_INTEGER "${VERSION_PATCH} + ${VERSION_MINOR}*1000 + ${VERSION_MAJOR}*1000000")

if(YANDEX_OFFICIAL_BUILD)
    set(VERSION_OFFICIAL " (official build)")
endif()
