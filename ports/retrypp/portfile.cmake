vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO tbarnekov/RetryPP
    REF "v${VERSION}"
    SHA512 df9af89177b0c1a53c05f806c70ac93e8192e2ece83f068ca3ad8adf0bd87bc006673ed116f63f0447fca40459fe3155621786744a033790d26a94708ac33aa3
    HEAD_REF main
)

# Install headers
file(INSTALL "${SOURCE_PATH}/include/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include"
    FILES_MATCHING PATTERN "**/*.h")

# Install copyright/license notice
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME "copyright")
