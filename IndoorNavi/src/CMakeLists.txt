
set(SOURCES blescan.c 
	data_connection.c 
	FileHandler.c 
	main.c 
	Odometrie.h 
	ScanHandler.c 
	blescan.h 
	ConnectionHandler.h 
	data_connection.h 
	FileHandler.h 
	Odometrie.c 
	point.c 
	ScanHandler.h)

# create library
#add_library(indoornav ${SOURCES})
#target_link_libraries(indoornav)
#set_target_properties(indoornav PROPERTIES LINKER_LANGUAGE C )

add_executable(IndoorNavi main.c)
target_link_libraries(IndoorNavi iw)
set_source_files_properties(${SOURCES} PROPERTIES LANGUAGE C )
