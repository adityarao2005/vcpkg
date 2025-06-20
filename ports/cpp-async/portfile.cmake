vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO adityarao2005/cpp-async
    REF "v${VERSION}"
    SHA512 7f694618eea87cd44f6fbd4a69b243adae0e011169b619bf8a8d5fbaf65f5a6d8a7b0913a339551bf04a41fee00b49b73596d9b4d8e85a8caba17d7c4220db81
    HEAD_REF main
)

file(COPY "${SOURCE_PATH}/include/async" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
