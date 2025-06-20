vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO adityarao2005/cpp-async
    REF "v${VERSION}"
    SHA512 dbbeb4211f36ed5a4c0cc3a4a065f2fcd222058e
    HEAD_REF main
)

file(COPY "${SOURCE_PATH}/include/async" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
