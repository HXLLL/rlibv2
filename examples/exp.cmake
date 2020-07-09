include_directories(./examples/gflags/include)

add_executable(pclient "${CMAKE_SOURCE_DIR}/examples/rc_pingpong/client.cc")
add_executable(pserver "${CMAKE_SOURCE_DIR}/examples/rc_pingpong/server.cc")

add_executable(uclient "${CMAKE_SOURCE_DIR}/examples/ud_pingpong/client.cc")
add_executable(userver "${CMAKE_SOURCE_DIR}/examples/ud_pingpong/server.cc")

add_executable(wclient "${CMAKE_SOURCE_DIR}/examples/rc_write/client.cc")
add_executable(wserver "${CMAKE_SOURCE_DIR}/examples/rc_write/server.cc")


target_link_libraries(pclient -lpthread ibverbs gflags)
target_link_libraries(pserver -lpthread ibverbs  gflags)

target_link_libraries(uclient -lpthread ibverbs gflags)
target_link_libraries(userver -lpthread ibverbs gflags)

target_link_libraries(wclient -lpthread ibverbs gflags)
target_link_libraries(wserver -lpthread ibverbs gflags)

