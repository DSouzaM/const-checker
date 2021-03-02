add_executable(const-rewriter
  ConstRewriter.cpp
)

target_link_libraries(const-rewriter clang-cpp clangConstCheckerDatabase LLVM pq)

install(TARGETS const-rewriter DESTINATION bin)
