include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Csega/wineditline
    REF WinEditLine-2.206
    SHA512 a817d9d525656f140e65e0ec013d5072aa11b183e47dd361a0d7b94fd7227590fbf917754ece5fdc31d3eadcc5644a4740a64370ef87e8680b360386bb8b96d1
    HEAD_REF master
)

message(STATUS ${SOURCE_PATH})

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    #OPTIONS
    #    -DBUILD_LOADLIBRARIES=OFF
    #    -DBUILD_EXAMPLES=OFF
    #    -DSUFFIX_LIB=
)

vcpkg_install_cmake()

# file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

file(INSTALL
        "${SOURCE_PATH}/LICENSE"
    DESTINATION
        ${CURRENT_PACKAGES_DIR}/share/wineditline/copyright
)

vcpkg_fixup_cmake_targets(CONFIG_PATH "CMake")

vcpkg_copy_pdbs()
