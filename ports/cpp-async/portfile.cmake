vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO adityarao2005/cpp-async
    REF "v${VERSION}"
    SHA512 232f756417d6ca66da67df62034bde38a9f6d5408b02348aeffebe0eb2696395d7939cc6510feac44ce8c1ff5f4aa43c8205d6127f77bb9f8bde3babf28a3ffd
    HEAD_REF main
)

file(COPY "${SOURCE_PATH}/include/async" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
