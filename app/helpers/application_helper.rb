
module ApplicationHelper

   def bootstrap_class_for(flash_type)
       case flash_type
       when "success"
         "alert-success"   # Green
       when "danger"
         "alert-danger"    # Red
       when "alert"
         "alert-warning"   # Yellow
       when "notice"
         "alert-info"      # Blue
       else
         flash_type.to_s
       end
    end

end


def options_for_country
 
 nombres = {'Afganistán'=>'Afganistán','Albania'=>'Albania', 'Alemania'=>'Alemania',
'Andorra'=>'Andorra','Angola'=>'Angola','Antártida'=>'Antartida',
'Antigua y Barbuda'=>'Antigua y Barbuda','Arabia Saudí'=>'Arabia Saudi',
'Argelia'=>'Argelia','Argentina'=>'Argentina', 'Armenia'=>'Armenia',
'Aruba'=>'Aruba','Australia'=>'Australia','Austria'=>'Austria',
'Azerbaiyán'=>'Azerbaiyan','Bahamas'=>'Bahamas','Bahráin'=>'Bahrain',
'Bangladesh'=>'Bangladesh','Barbados'=>'Barbados','Bélgica'=>'Belgica',
'Belice'=>'Belice','Bermudas'=>'Bermudas','Bielorrusia'=>'Bielorussia',
'Birmania'=>'Birmania','Bolivia'=>'Bolivia','Bosnia y Hercegovina'=>'Bosnia y Hercegovina',
'Botsuana'=>'Botsuana','Brasil'=>'Brasil','Brunéi'=>'Brunei','Bulgaria'=>'Bulgaria',
'Burkina Faso'=>'Burkina Faso','Burundi'=>'Burundi','Bután'=>'Butan',
'Cabo Verde'=>'Cabo Verde','Camboya'=>'Camboya','Camerún'=>'Camerun',
'Canadá'=>'Canada','Chad'=>'Chad','Chile'=>'Chile','China'=>'China',
'Chipre'=>'Chipre','Colombia'=>'Colombia','Congo'=>'Congo',
'Corea del Norte'=>'Corea del Norte','Corea del Sur'=>'Corea del Sur',
'Costa de Marfil'=>'Costa de Marfil','Costa Rica'=>'Costa Rica',
'Croacia'=>'Croacia','Cuba'=>'Cuba','Dinamarca'=>'Dinamarca','Dominica'=>'Dominica',
'Ecuador'=>'Ecuador','Egipto'=>'Egipto','El Salvador'=>'El Salvador',
'El Vaticano'=>'El Vaticano','Emiratos Árabes Unidos'=>'Emiratos Árabes Unidos',
'Eritrea'=>'Eritnea','Eslovaquia'=>'Eslovaquia','Eslovenia'=>'Eslovenia',
'España'=>'España','Estados Unidos'=>'Estados Unidos','Estonia'=>'Estonia',
'Etiopía'=>'Etiopia','Filipinas'=>'Filipinas','Finlandia'=>'Finlandia',
'Fiyi'=>'Fiyi','Francia'=>'Francia','Gabón'=>'Gabon','Gambia'=>'Gambia',
'Georgia'=>'Georgia','Ghana'=>'Ghana','Gibraltar'=>'Gibraltar','Granada'=>'Granada',
'Grecia'=>'Grecia','Groenlandia'=>'Groenlandia','Guam'=>'Guam','Guatemala'=>'Guatemala',
'Guinea'=>'Guinea','Guinea Ecuatorial'=>'Guinea Ecuatorial','Guyana'=>'Guyana',
'Haití'=>'Haiti','Honduras'=>'Honduras','Hong Kong'=>'Hong Kong',
'Hungría'=>'Hungria','India'=>'India','Indonesia'=>'Indonesia','Irán'=>'Iran',
'Iraq'=>'Iraq','Irlanda'=>'Irlanda','Islandia'=>'Islandia','Israel'=>'Israel',
'Italia'=>'Italia','Jamaica'=>'Jamaica','Japón'=>'Japon','Jordania'=>'Jordania',
'Kazajistán'=>'Kazajistan','Kenia'=>'Kenia','Kirguizistán'=>'Kirguizistán',
'Kiribati'=>'Kiribati','Kuwait'=>'Kuwait','Laos'=>'Laos','Letonia'=>'Letonia',
'Líbano'=>'Líbano','Liberia'=>'Liberia','Libia'=>'Libia','Liechtenstein'=>'Liechtenstein',
'Lituania'=>'Lituania','Luxemburgo'=>'Luxemburgo','Macao'=>'Macao','Macedonia'=>'Macedonia',
'Madagascar'=>'Madagascar','Malasia'=>'Malasia','Malaui'=>'Malaui','Maldivas'=>'Maldivas',
'Malí'=>'Malí','Malta'=>'Malta','Marruecos'=>'Marruecos','Mauricio'=>'Mauricio',
'Mauritania'=>'Mauritania','México'=>'México','Micronesia'=>'Micronesia',
'Moldavia'=>'Moldavia','Mónaco'=>'Mónaco','Mongolia'=>'Mongolia',
'Mozambique'=>'Mozambique','Namibia'=>'Namibia','Nepal'=>'Nepal',
'Nicaragua'=>'Nicaragua','Níger'=>'Níger','Nigeria'=>'Nigeria','Noruega'=>'Noruega',
'Nueva Caledonia'=>'Nueva Caledonia','Nueva Zelanda'=>'Nueva Zelanda',
'Omán'=>'Omán','Países Bajos'=>'Países Bajos','Pakistán'=>'Pakistán','Panamá'=>'Panamá',
'Papúa-Nueva Guinea'=>'Papúa-Nueva Guinea','Paraguay'=>'Paraguay','Perú'=>'Perú',
'Polinesia Francesa'=>'Polinesia Francesa','Polonia'=>'Polonia','Portugal'=>'Portugal',
'Puerto Rico'=>'Puerto Rico','Qatar'=>'Qatar','Reino Unido'=>'Reino Unido',
'República Centroafricana'=>'República Centroafricana','República Checa'=>'República Checa',
'República Democrática del Congo'=>'República Democrática del Congo',
'República Dominicana'=>'República Dominicana','Ruanda'=>'Ruanda',
'Rumania'=>'Rumania','Rusia'=>'Rusia','Sáhara Occidental'=>'Sáhara Occidental',
'Samoa'=>'Samoa','San Marino'=>'San Marino','Senegal'=>'Senegal',
'Seychelles'=>'Seychelles','Sierra Leona'=>'Sierra Leona','Singapur'=>'Singapur',
'Siria'=>'Siria','Somalia'=>'Somalia','Sri Lanka'=>'Sri Lanka',
'Sudáfrica'=>'Sudáfrica','Sudán'=>'Sudán','Suecia'=>'Suecia','Suiza'=>'Suiza',
'Tailandia'=>'Tailandia','Taiwán'=>'Taiwán','Tanzania'=>'Tanzania',
'Tayikistán'=>'Tayikistán','Timor Oriental'=>'Timor Oriental','Togo'=>'Togo',
'Tokelau'=>'Tokelau','Tonga'=>'Tonga','Trinidad y Tobago'=>'Trinidad y Tobago',
'Túnez'=>'Túnez','Turquía'=>'Turquía','Tuvalu'=>'Tuvalu','Ucrania'=>'Ucrania',
'Uganda'=>'Uganda','Uruguay'=>'Uruguay','Uzbekistán'=>'Uzbekistán',
'Venezuela'=>'Venezuela','Vietnam'=>'Vietnam','Yemen'=>'Yemen',
'Zambia'=>'Zambia', 'Zimbabue'=>'Zimbabue'}
end



