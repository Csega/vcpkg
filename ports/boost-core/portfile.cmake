# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/core
    REF boost-1.67.0
    SHA512 3b00c5893012e420c0faf6de3b43c0c4ae4645ced19b7f10403c6a7cd194954df7a4462999ca78226b29858848690223657e4eef9b6cf36d92828d5642057381
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
