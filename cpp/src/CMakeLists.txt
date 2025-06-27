add_library(calc 
    calc.cpp
)

target_include_directories(calc
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
)

add_executable(cpp-sample
    main.cpp
)

target_link_libraries(cpp-sample
    PRIVATE calc ${AWSSDK_LINK_LIBRARIES}
)

set_target_properties(cpp-sample
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
)
