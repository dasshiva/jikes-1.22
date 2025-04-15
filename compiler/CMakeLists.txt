cmake_minimum_required(VERSION 3.20)
project(jikes VERSION 1.22)
find_library(ICONV iconv)

if (${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
	message(FATAL_ERROR "In-source builds are not allowed")
endif()

add_executable(jikes src/ast.cpp       
	src/diagnose.cpp  
	src/long.cpp      
	src/set.cpp           
	src/body.cpp      
	src/double.cpp    
	src/lookup.cpp    
	src/stream.cpp        
	src/bytecode.cpp  
	src/dump.cpp      
	src/lpginput.cpp  
	src/symbol.cpp        
	src/case.cpp      
	src/error.cpp     
	src/modifier.cpp  
	src/system.cpp        
	src/class.cpp     
	src/expr.cpp      
	src/op.cpp        
	src/tab.cpp           
	src/code.cpp      
	src/incrmnt.cpp   
	src/option.cpp    
	src/unparse.cpp       
	src/control.cpp   
	src/init.cpp      
	src/parser.cpp    
	src/unzip.cpp         
	src/decl.cpp      
	src/javaact.cpp   
	src/platform.cpp  
	src/zip.cpp           
	src/definite.cpp  
	src/jikes.cpp     
	src/scanner.cpp
	src/depend.cpp    
	src/jikesapi.cpp  
	src/segment.cpp)
target_link_libraries(jikes iconv)
