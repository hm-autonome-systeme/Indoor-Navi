
set(SOURCES blescan.c data_connection.c FileHandler.c main.c Odometrie.h ScanHandler.c wlanscan.h blescan.h ConnectionHandler.h data_connection.h FileHandler.h Odometrie.c point.c ScanHandler.h wlanscan.c)

set_source_files_properties(${SOURCES} PROPERTIES LANGUAGE C )
add_library(indoornavi ${SOURCES})
