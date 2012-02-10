# Hago un merge de mis indices
indexer --merge user_data delta_user_data --rotate

# Actualizo la tabla de contadores para reflejar el merge
mysql -u***** -p**** -e'UPDATE app03_twSocial.sph_counter SET max_doc_id = last_doc_id WHERE counter_id = "user_data"' -hMYHOST

# Actualizo delta. Como la tabla de contadores esta actualizada, seguramente en esta actualizacion hayan
# muy pocos documentos
indexer delta_user_data --rotate
