set(BUILD_ONLY "s3")
set(ENABLE_TESTING OFF)
set(CPP_STANDARD "17" CACHE STRING "The minimum is 17.")

FetchContent_Declare(
    aws-sdk-cpp
    GIT_REPOSITORY    https://github.com/aws/aws-sdk-cpp.git
    GIT_TAG           1.11.596
) 

FetchContent_MakeAvailable(aws-sdk-cpp)
