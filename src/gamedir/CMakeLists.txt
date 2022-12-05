cmake_minimum_required (VERSION 3.0)
project(gamedir)

include(FindPkgConfig)
pkg_check_modules(MZIP minizip REQUIRED)

link_directories(
    ${MZIP_LIBDIR}
)

add_executable(${PROJECT_NAME}
    str_builder.c
    rw_files.c
    zipper.c
    main.c
)

target_include_directories(${PROJECT_NAME}
    PRIVATE ${CMAKE_CURRENT_BINARY_DIR}
            ${CMAKE_CURRENT_SOURCE_DIR}
            ${MZIP_INCLUDE_DIRS}
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE ${MZIP_LIBRARIES}
)