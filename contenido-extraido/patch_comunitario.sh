
#!/bin/bash

# Configurar banderas de ejecución
sed -i 's/^#!\/usr\/bin\/env python/#!\/usr\/bin\/python3/' opera-gx

# Inyectar librería 'libffmpeg.so' nativa de Linux
cp /path/to/libffmpeg.so ./opera-gx/libffmpeg.so
chmod 755 ./opera-gx/libffmpeg.so

# Crear archivo de configuración para inyectar librería
echo "[Component]\
<id>libffmpeg</id>\
<type>file</type>\
<path>./libffmpeg.so</path>" > ./opera-gx/manifest.json

# Aplicar parche
patch -p0 -i patch_comunitario.patch

