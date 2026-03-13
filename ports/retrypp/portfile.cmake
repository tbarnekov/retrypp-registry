vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO tbarnekov/RetryPP
    REF "v${VERSION}"
    SHA512 b009e5ae02b9c90e57f8f784f049dcfe688e8c591e3214c5e5647e8018ce7de08d1e8f39b0f46e4df080aee1338abe1d0d7260352887903922626a6779c14ccf
    HEAD_REF main
)

# Install headers
file(INSTALL "${SOURCE_PATH}/include/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include"
    FILES_MATCHING PATTERN "**/*.h")

# Install copyright/license notice
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME "copyright")
