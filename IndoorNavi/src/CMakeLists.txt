
set(SOURCES blescan.c data_connection.c FileHandler.c Odometrie.c ScanHandler.c wlanscan.c
    ../include/blescan.h  ../include/ConnectionHandler.h  ../include/data_connection.h  ../include/FileHandler.h  ../include/Odometrie.h  ../include/ScanHandler.h  ../include/wlanscan.h
    )

add_executable(${EXEC_NAME} main.c)
add_library(${LIB_NAME} ${SOURCES} )

target_link_libraries(${LIB_NAME} bluetooth iw m)
target_link_libraries(${EXEC_NAME} ${LIB_NAME} )
set_source_files_properties(${SOURCES} PROPERTIES LANGUAGE C )
#set_target_properties(${LIB_NAME} PROPERTIES LINKER_LANGUAGE C )
