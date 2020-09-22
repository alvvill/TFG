<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Vulnerabilidades </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style/bodyy.css">
         <link rel="shortcut icon" type="image/png" href="images/UVA.png"/>
    </head>
    <body >  
        <nav class="navbar navbar-inverse navbar-fixed-top">         
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"></button>
                    
                    <a class="navbar-left" href="#"><img src="images/UVA.png" witdth="10%" height="10%"></a>
                             
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav ">
                        <li><a data-toggle="modal" data-target="#myModal">Acerca de</a></li>
                    </ul>
                </div>
            </div>             
        </nav>        
        <br><br>
        
        <div class="container">
            <br>
            <h1>Vulnerabilidades</h1>
            <br>
            <div role="tabpanel">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="active" role="presentation"><a href="#estadoRed" data-toggle="tab" role="tab">Estado de la red</a></li>
                    <li role="presentation"><a href="#vulnerabilidades" data-toggle="tab" role="tab">Escaneo de vulnerabilidades</a></li>
                    <li role="presentation"><a href="#fuerzaBruta" data-toggle="tab" role="tab"> Fuerza Bruta</a></li>
                    <li role="presentation"><a href="#DoS" data-toggle="tab" role="tab"> Denegaci�n de servicio</a></li>
                    <li role="presentation"><a href="#escaneopuertos" data-toggle="tab" role="tab">Escaneo de puertos</a></li>
                    <li role="presentation"><a href="#spoofing" data-toggle="tab" role="tab">Spoofing</a></li>
                    <div class="clearfix"></div>
                    <li role="presentation"><a href="#fuerzaBrutaIn" data-toggle="tab" role="tab">Fuerza Bruta (Inal�mbrico)</a></li>
                    <li role="presentation"><a href="#dosUnDisp" data-toggle="tab" role="tab"> Ataque DoS: centrado en dispositivos</a></li>
                    <li role="presentation"><a href="#autMas" data-toggle="tab" role="tab">Autenticaci�n masiva</a></li>
                    <li role="presentation"><a href="#beaFlo" data-toggle="tab" role="tab">Beacon Flood Mode Attack</a></li>
                    <li role="presentation"><a href="#mac" data-toggle="tab" role="tab">Conocer MAC</a></li>
                </ul>
            
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="estadoRed">
                        <h2>Estado de la red</h2>
                        <iframe src="http://157.88.123.102:80/app/kibana#/dashboard/ca480720-2fdf-11e7-9d02-3f49bde5c1d5?embed=true&_g()"height="800" width="100%"></iframe>
                        <br>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                        
                    </div>
                    
                    <!--Escaneo Vulnerabilidades Sergio-->
                    <div role="tabpanel" class="tab-pane fade" id="vulnerabilidades">
                        <h2>Escaneo de vulnerabilidades</h2>
                        <br>
                        <p>Existen herramientas muy similares como OpenVas o Nessus que nos permiten hacer un escaneo automatizado de vulnerabilidades. En este caso nos centraremos en Nessus, aunque ambos son muy parecidos de utilizar. </p>
                        <br>                      
                        <p>Consideraremos este tipo de herramientas como una primera aproximaci�n a explotar un sistema o a auditar nuestra propia seguridad. Aunque en el resultado de este escaneo no se detecten vulnerabilidades, no quiere decir que no existan. Deberemos realizar an�lisis m�s complejos. </p>
                        <br>
                        <p>Los par�metros de configuraci�n de un escaneo Nessus son los siguientes </p>      
                        <p> 
                            <ul type="square">
                                <li>Basic: para especificar aspectos b�sicos organizativos, incluyendo nombre y descripci�n del escaneo. </li>
                                <li>Discovery: para establecer el descubrimiento y la exploraci�n de puertos, incluyendo los rangos y los m�todos. </li>
                                <li>Assessment: para identificar malware, vulnerabilidades de fuerza bruta, y la susceptibilidad de un sistema web. </li>
                                <li>Report: el procesamiento y la salida del escaneo. </li>
                                <li>Advanced: otros par�metros para hacer m�s eficiente un escaneo. </li>
                            </ul>
                        </p>
                        <br>
                        <h4>Metasploit</h4>                    
                        <p> Metasploit es un software gratuito y open-source que puede ser usado para automatizar tareas complejas. MSFConsole es la interfaz m�s popular de este framework y ser� con la que interactuemos para lanzar exploits aprovechando las vulnerabilidades. </p>
                        <br>
                        <p> Tras haber usado Nessus para realizar un escaneo de vulnerabilidades, Mestasploit nos ofrece la posibilidad de lanzar exploits para explotar esas vulnerabilidades.  El problema de lanzar todos estos exploits es que se generar� mucho ruido y se podr� detectar f�cilmente. Por ello, este tipo de ataques se suelen realizar cuando se dispone de poco tiempo o simplemente se quiere auditar la seguridad.</p>
                        
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Para lanzar el escaneo, lo primero que necesitaremos ser� disponer del software, el cu�l se puede descargar desde la <a href="https://www.tenable.com/downloads/nessus"> p�gina oficial</a>.
                                            <br><br>  
                                            Una vez instalado, seleccionaremos los plugings que deseemos. En este apartado tendremos una lista de vulnerabilidades, podremos habilitar familias de plugins o plugins individuales para llevar a cabo. 
                                           <br><br>                                       
                                            Una vez configurado todos los par�metros del escaneo, procedemos a definir cu�l ser� nuestro objetivo, en este caso la IP 157.88.123.102 y a lanzarlo. Cuando haya finalizado el escaneo, podremos encontrar en reports las principales vulnerabilidades del sistema objetivo que hemos incluido. Podremos exportarlo en varios formatos. Si estamos realizando un test de penetraci�n, es recomendable exportarlo en formato .nessus para despu�s poder importarlo, por ejemplo, en Metasploit.
                                            <br><br> 
                                            Para importar los resultados del escaneo a Metasploit usaremos  MSFConsole, que es la interfaz m�s popular de Metasploit y escribiremos:
                                            <br><br>                                            
                                            <code>msf > db_import ruta/.nessus #importa los resultados de Nessus<br>                                         
                                                msf > db_autopwn -x -p #lanzamiento de los exploits<br>                                         
                                                msf > sessions -l #consultar sesiones obtenidas<br></code>
                                            
                                            <br><br>
                                            De esta forma se lanzar�n todos los exploits disponibles para explotar las vulnerabilidades encontradas, aunque esto generar� mucho ruido. Si deseamos usar un exploit para explotar una vulnerabilidad concreta, a continuaci�n mostraremos un ejemplo de como lanzarlo:
                                            <br><br>
                                            <code>msf > search ssh #b�squeda de un exploit<br> 
                                                msf > use auxiliary/scanner/ssh/ssh_login #selecci�n de un exploit<br> 
                                                msf auxiliary(ssh_login) > show options #muestra los par�metros<br> 
                                                msf auxiliary(ssh_login)> set RHOSTS 157.88.123.102 #establecimiento de par�metros<br> 
                                                msf auxiliary(ssh_login)> set USERPASS_FILE /usr/share/metasploit-framework/data/wordlists/root_userpass.txt # establecimiento de par�metros<br>                                               
                                                msf auxiliary(ssh_login) > run #ejecuta exploit<br></code> 
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                            Podremos acceder a cada una de las vulnerabilidades, clasificadas seg�n el impacto que puedan tener en el sistema. Se incluye una descripci�n, referencias a otros documentos de inter�s y soluciones para mitigarlas. 
                                            <br><br>
                                            Es recomendable lanzar este tipo de escaneos cuando se haya dise�ado y levantado una nueva red. Esto servir� tanto para ataque como para conseguir informaci�n de las vulnerabilidades de nuestra red y poder protegernos ante ellas.   
                                            <br><br>
                                            Todo el tr�fico generado por este tipo de escaneos tiene su origen en el puerto 80. Esto es porque herramientas como Nessus u Openvas son usadas mediante la interfaz web. No quiere decir que siempre sea as�, si lo lanz�semos mediante Metasploit el origen de los puertos no ser�a el 80. A�n as� es un indicio de que se trata de un escaneo de vulnerabilidades. Las peticiones que se env�an son a m�ltiples puertos, aunque los puertos que se encuentran abiertos y presentan vulnerabilidades recibir�n m�s tr�fico que otros.
                                                                         
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <a href="https://www.varonis.com/blog/what-is-metasploit/" target="_blank">Conoce m�s acerca de Metasploit</a><br>
                                            <a href="https://securitytwins.com/2019/09/19/detectando-vulnerabilidades-con-nessus/" target="_blank">Gu�a de iniciaci�n a Nessus</a><br>
                                            <a href="https://www.welivesecurity.com/la-es/2014/11/18/como-utilizar-openvas-evaluacion-vulnerabilidades/" target="_blank">OpenVas</a><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                         
                    <!--Fuerza Bruta Inal�mbrica Alvaro-->
                    <div role="tabpanel" class="tab-pane fade" id="fuerzaBrutaIn">
                        <h2>Ataque de fuerza bruta</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="fuerzabruta-in.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Un ataque de fuerza bruta en redes inal�mbricas se considera al acto de intentar desencriptar un WPA Handshake una vez capturado. El WPA Handshake es el paquete resultado del protocolo WPA para autenticar dispositivos en una red, el cual contiene la contrase�a de acceso a la red inal�mbrica de manera encriptada. Este ataque que vamos a desarrollar quiere demostrar como se capta el WPA Handshake de una forma r�pida y sencilla, en vez de centrarnos en el proceso de desencriptado.</p>
                        <br>
                        <p>La causa de no entrar en materia en la tarea de desencriptaci�n es que existen multitud de herramientas de las que se sirven los atacantes y todas no pueden ser objeto de estudio en este proyecto. La mayor�a hacen uso de diccionarios, que son ficheros de texto con posibles contrase�as predeterminadas que normalmente se ponen en los dispositivos. Se tratar�a de probar con cada una de las posibles contrase�as contenidas en el fichero comparando con la que est� oculta en el WPA Handshake.</p> 
                        <br>
                        <img class="center-block" src="images/fuerzabruta.png" alt="Fuerza Bruta Inalambrico" width="55%" height="50%">
                        <br>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Primeramente, de manera opcional, se puede acabar con los procesos problem�ticos y cambiar el estado en el que se encuentra la tarjeta de red para poder escuchar el flujo de tr�fico de datos del entorno, pasando de un modo "Managed" a modo "Monitor". Hay que usar la herramienta airmon-ng para poder llevar a cabo la primera tarea del ataque. 
                                            <br> <br>
                                            Opcional: <code>$ airmon-ng check kill</code><br>
                                            <code>$ airmon-ng start wlan0</code><br>
                                            <br>
                                            A continuaci�n, es necesario hacer un proceso de monitorizaci�n del entorno para conocer todos los detalles de las redes que hay alrededor. Es esencial que el dispositivo actualice la informaci�n que ya posea acerca de esas redes cercanas a ella para evitar errores. Una vez obtenida la nueva informaci�n y ya teniendo las propiedades esenciales de la red que se quiere atacar, se hace una monitorizaci�n �nica y exclusivamente de dicha red. Para ello, hay que especificar el BSSID identificativo de la red, el canal donde opera y el nombre del fichero d�nde se quiere guardar la informaci�n recolectada si fuera necesario. Se utiliza la herramienta airodump-ng para todo proceso de monitorizaci�n del ataque que se est� desarrollando.
                                            <br> <br>
                                            <code>$ airodump-ng wlan0mon</code><br> 
                                            <code>$ airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 -w Captura wlan0mon </code><br>
                                            <br>
                                            Mientras se encuentra ejecutando ese proceso de control sobre la red en espec�fico, hay que forzar la desvinculaci�n del dispositivo (m�nimo uno) que est� conectado a la red. De tal manera, que una vez desvinculado, intente conectarse de nuevo y es ah� d�nde el atacante que est� escuchando captura el WPA Handshake. Esta tarea se ejecutar� con la herramienta aireplay-ng y sus respectivas opciones.
                                            <br> <br>
                                            <code>$ aireplay-ng -0 15 -a 00:23:04:B7:EF:D0 -c FF:FF:FF:FF:FF:FF wlan0mon</code><br> 
                                            <br>
                                            Entonces, una vez capturado el WPA Handshake, ya es el atacante el que decide el modo de desencriptaci�n que quiera implementar para conseguir la contrase�a de la red WiFi que se intenta conocer.                                     
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                           Debido a la gran dificultad de frenar este tipo de ataques, la mejor manera de reducir la probabilidad de �xito es tratar de dificultar al m�ximo posible la tarea de desencriptar. Es por ello que se recomienda hacer uso de "contrase�as seguras" en lugar de cualquier contrase�a que se crea que es segura porque seguramente no lo sea tanto como creemos.
                                           <br><br>
                                          Seg�n el INCIBE, se considera contrase�a segura  si cumple una serie de caracter�sticas que se indican a continuaci�n:
                                           <br><br>
                                           <ul type="square">
                                               <li>Una longitud m�nima de 8 car�cteres.</li> 
                                               <br>
                                               <li>Debe ser lo menos regular posible (evitar patrones t�picos y el uso de palabras propias de diccionarios).</li>
                                               <br>
                                               <li>Incluir car�cteres especiales, s�mbolos y n�meros.</li>
                                               <br>
                                               <li>Alternar el uso de letras en may�sculas y min�sculas.</li>
                                               <br>
                                           </ul>
                                           Si se consigue tener una contrase�a de las denominadas seguras, posiblemente el atacante tendr� que dar lo mejor de s� mismo para intentar desencriptar la contrase�a. Es posible que tenga el WPA Handshake, pero si no es capaz de averiguar la contrase�a que est� oculta no ser� capaz de acceder a la red que est� protegiendo dicha clave. A pesar de todos los intentos que realice la persona que est� atacando, existe la posibilidad de que nunca desencripte la contrase�a. Teniendo dos opciones: dar por finalizado el ataque sin �xito, o seguir intentando con los diferentes diccionarios y herramientas existentes.
                                           <br><br>
                                           A la vez, se puede implementar un IDS que monitorice todo lo que suceda en la red y detectar un posible patr�n de este ataque, como puede ser la expulsi�n forzada de alguno de los dispositivos conectados. Detectar el flujo de paquetes ARP (dificilmente con un �nico paquete se logra el objetivo) cuya meta es desasociar el dispositivo puede ser uno de los patrones que se podr�an implementar. Indicar que ese flujo no es adecuado para nuestra red y que lo catalogue como un posible ataque a la red.
                                           <br>                                                                                                 
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                        </div> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <a href="https://www.youtube.com/watch?v=zAWcu3NQLME" target="_blank">Ejemplo desencriptar WPA Handshake con aircrack-ng</a><br>
                                            <a href="https://www.incibe.es/protege-tu-empresa/blog/contrasenas-deben-ser-siempre-seguras" target="_blank">Uso de contrase�as seguras</a><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                    
                    <!--MAC (HECHO)-->
                    <div role="tabpanel" class="tab-pane fade" id="mac">
                        <h2>Conocer MAC de los dispositivos conectados</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="mac.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Cuando se est� realizando un proceso de monitorizaci�n de una red inal�mbrica, se pueden observar la cantidad de dispositivos que est�n conectados a dicha red mediante su direcci�n  MAC caracter�stica de ellos. Esa direcci�n MAC es indistinguible y �nica por cada dispositivo. Esas direcciones despu�s, al guardar los resultados del control de la red se podr� tratar con ellos.</p>
                        <br>
                        <img class="center-block" src="images/mac.png" alt="Direccion MAC" width="40%" height="30%">
                        <br>
                        <p>Antes de nada, hay que explicar que la direcci�n MAC est� compuesta de dos cadenas. La primera mitad se�ala el OUI que es el "Identificador �nico de Fabricante" y la segunda indica el UAA que es el "Identificador del Producto". La primera cadena de una misma fabrica no var�a entre dispositivos dado que es la misma siempre para dicho fabricante, mientras que la segunda es la que identifica realmente al propio dispositivo. Entonces, si conocemos la primera mitad, seremos capaces de conocer la naturaleza del dispositivo (su marca). El objetivo del ataque es averiguar las direcciones MAC de los dispositivos conectados a la red para un posterior tratamiento de datos si fuera posible. </p> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Este tipo de ataque se desarrolla a partir del fichero que registra los detalles de la monitorizaci�n que se ha realizado. Por lo tanto, hay que realizar antes de nada el control espec�fico sobre la red objetivo y guardar los resultados obtenidos en un fichero (en nuestro caso llamamos Captura). Este proceso crea una serie de archivos en diferentes formatos, pero el que nos interesa es el ".csv". Una vez obtenidos todos los detalles, comienza el proceso de tratamiento necesario para aislar �nica y exclusivamente las direcciones MAC de los dispositivos conectados.<br><br>
                                            <code>$ airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 -w Captura  wlan0mon</code><br><br>
                                            El archivo que guarda la informaci�n contiene cabeceras sin importancia para reconocer dichas direcciones MAC, es por ello que las eliminamos (las 5 primeras filas del archivo) guardando el resultado. De tal manera, que la parte del fichero que hemos aislado contiene las direcciones MAC de los dispositivos conectados m�s una cadena vac�a al final del fichero que viene del primer fichero. El siguiente paso necesario es calcular el n�mero de l�neas del fichero, dado que no siempre va a ser el mismo (var�a en funci�n del n�mero de dispositivos conectados a la red).<br><br>
                                            <code>$ sed '1,5d' Captura-01.csv > Captura</code><br>
                                            <code>$ var=$(wc -l Captura)</code><br><br>
                                            El problema de utilizar el comando "wc" es que no s�lo indica el n�mero de l�neas, sino que lo acompa�a el nombre del fichero. Se debe aislar el n�mero en la primera l�nea justamente para poder averiguar la correcta longitud del fichero, al cual se deber� restar 1 para evitar que coja el espacio final del archivo. Tenemos el n�mero de l�neas que nos interesa y s�lo quedar�a coger de ese fichero resultante las n primeras l�neas (n seg�n se haya calculado).<br><br>
                                            <code>$ echo $var > longitud | sed 's/ /\n/' longitud > longmejorada</code><br>
                                            <code>$ head -n 1 longmejorada > tamano</code><br>
                                            <code>$ tamanoReal=$(($tamano - 1))</code><br>
                                            <code>$ head -n $tamanoReal Captura > mac</code><br><br>
                                            Ya, por �ltimo, dividimos el documento por el separador "," para coger la primera columna que se refiere a las direcciones MAC completas y las guardamos en un fichero para despu�s mostrarlas. Por otra parte, en otro fichero distinto, se va a almacenar la primera mitad de la direcci�n MAC (OUI) por si el atacante deseara conocer el fabricante del dispositivo.<br><br>
                                            <code>$ cut -d ',' -f 1  mac > mac2</code><br>
                                            <code>$ cut -d ':' -f 1-3 mac2 >macDefinitiva</code><br><br>
                                            As� pues, la persona que realiza el ataque posee las direcciones MAC de los dispositivos y sus OUI. Para finalizar, se mostrar�a por pantalla dichas cadenas para que el usuario pueda verlas.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Una de las proposiciones que se hicieron para tratar de controlar la privacidad que merece el usuario en este �mbito fue que el dispositivo m�vil no hiciera broadcast de los mensajes "Probe Request" al menos que la red con la que se quiere interactuar se encuentre oculta y no aparezca realmente en el listado de redes disponibles. En el caso de que la red no sea visible, ser� necesario que el usuario se identifique en su empe�o en b�squeda de red inal�mbrica y ser� esencial identificarse mediante su direcci�n MAC propia. Ser�a el �nico caso d�nde el usuario har�a que su direcci�n MAC fuese p�blica y por obligaci�n, para que el access-point sepa de su presencia.<br><br>
                                            Otra de las v�as que se han planteado ha sido la de aleatorizar las direcciones MAC, mecanismo complejo que trata de ocultar al m�ximo posible su direcci�n. Por ejemplo, un dispositivo con iOS 8.1.3 es capaz de alterar su direcci�n MAC mientras se encuentra en estado inactivo para que cualquiera que est� escuchando el tr�fico del entorno no capte detalles propios del dispositivo; pero cuando se encuentra activo utiliza su direcci�n MAC correcta.<br><br>
                                            Aunque se piense lo contrario, el modo de detectar falsas direcciones MAC es sencillo y se puede desarrollar de diferentes maneras. Las empresas registran las OUI, ya explicadas anteriormente, gracias a "IEEE Mac Addresses Block Large" para que se conozca los identificadores �nicos bajo este est�ndar. Junto a esos OUI, se registra el derecho a poder crear varios identificadores extendidos basados en ese OUI. Ese derecho a extender el proceso de creaci�n sirve para la creaci�n de los UAA mencionados con anterioridad. Por lo tanto, si las direcciones MAC que se captan no se encuentran en este registro significa que la direcci�n MAC ha sido alterada o modificada para que sea falsa para cualquier cometido, normalmente maligno.<br><br>
                                            Por otra parte, si se hace un an�lisis exhaustivo de los n�meros de secuencia (SEQ) del flujo de tr�fico, es posible establecer la relaci�n de los paquetes enviados por un mismo dispositivo pero usando diferentes direcciones MAC. Si se detecta direcciones MAC aleatorias, y por ejemplo, aparecen tres veces con un n�mero de secuencia del paquete cercano al de una direcci�n MAC real, se podr� marcar como una direcci�n MAC aleatoria correspondiente a la direcci�n MAC real.                                                               
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                        </div> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                        <a href="https://www.xataka.com/basics/que-es-la-direccion-mac-de-tu-ordenador-del-movil-o-de-cualquier-dispositivo#:~:text=La%20direcci%C3%B3n%20MAC%20es%20un,y%20significan%20Media%20Access%20Control.
                                        " target="_blank">Direcci�n MAC</a><br>
                                        <a href="https://standards.ieee.org/products-services/regauth/oui/index.html" target="_blank">IEEE Mac Addresses Block Large</a>
                                       </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                    
                    <!--Ataque DoS centrado en dispositivos Alvaro-->
                    <div role="tabpanel" class="tab-pane fade" id="dosUnDisp">
                        <h2>Ataque DoS: centrado en dispositivos</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="dos-undisp.sh" class="btn btn-primary active">Lanzar ataque: un dispositivo</button></form>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="dos-vardisp.sh" class="btn btn-primary active">Lanzar ataque: varios dispositivo</button></form>
                        <br>
                        <p>En este bloque, se va a enfocar el ataque de denegaci�n de servicio en dos tipos de situaciones: cuando hay un �nico dispositivo conectado, y cuando hay varios. El objetivo de un ataque de denegaci�n de servicio a una red centr�ndose en el dispositivo trata de conseguir que �ste se vea incapaz de vincularse al punto de acceso de la red. Una de las maneras de conseguir la realizaci�n de este ataque viene ideado por la manera de desvincular dispositivos en un ataque de fuerza bruta como hemos visto. Consiguiendo dicho objetivo, el usuario no ser� capaz de tener conexi�n a la red mientras se siga recibiendo el punto de acceso esos paquetes de desvinculaci�n.</p>
                        <br>
                        <p>Se utiliza como base del ataque la herramienta aireplay-ng, la cual permite desasociar cualquier dispositivo en funci�n de la direcci�n MAC aportada como par�metro a la orden de ejecuci�n. En funci�n de la meta que se proponga el atacante, se indicar� un n�mero de paquetes u otro. En este proyecto, no se busca conseguir la inoperancia de la red; simplemente demostrar los efectos producidos en ella. Para mostrar dichos efectos, vamos a enviar un n�mero grande de paquetes pero no infinito. Si pusieramos infinito, ser�a el caso en el que un atacante quiere dejar la red inutilizada por tiempo indeterminado.</p> 
                        <br>
                        <img class="center-block" src="images/DoS-undisp.png" alt="Denegaci�n de Servicio" width="55%" height="50%">
                        <br>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Como en todo ataque inal�mbrico, el primero de los pasos a seguir para realizar este ataque puede ser acabar con todos los procesos que puedan dar problemas en un futuro a la tarjeta de red, y, �ste ya s� es necesario, cambiar su estado para que �ste pase a un modo "Monitor" en el cual se pueda captar el tr�fico externo. Este proceso no ser�a posible sin la herramienta airmon-ng, clave en los inicios de estas ofensivas. 
                                            <br> <br>
                                            Opcional: <code>$ airmon-ng check kill</code><br>
                                            <code>$ airmon-ng start wlan0</code>
                                            <br><br>
                                            Realizar el proceso de monitorizaci�n con la herramienta airodump-ng es sencillo y eficaz. El atacante debe disponer de la informaci�n actualizada de las redes del entorno, y en concreto, de la red que quiere atacar. Seguidamente, despu�s de haber esperado un tiempo determinado y habiendo recogido alguna novedad si la hubiera, se lleva a cabo el proceso de monitorizar la red espec�fica. Para ello, en los par�metros de la orden a ejecutar se debe indicar el m�ximo de detalles posible. 
                                            <br> <br>
                                            <code>$ airodump-ng wlan0mon</code> <br>
                                            <code>$ airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 wlan0mon</code>
                                            <br><br>
                                            <b>�Qu� var�a?</b><br> <br>
                                            Ambos casos van a usar la herramienta aireplay-ng para desvincular los dispositivos del punto de acceso. Decir que el n�mero de paquetes para conseguir dicho fin no var�a en funci�n de los dispositivos conectados a la red, as� que en nuestro caso ser� el mismo en ambas circunstancias. El detalle que se debe apreciar que produce el cambio del ataque es la direcci�n MAC destino del paquete.
                                            <br> <br>
                                            Un dispositivo: <code>$ aireplay-ng -0 150 -a 00:23:04:B7:EF:D0 -c B8:27:EB:F0:37:FB wlan0mon</code>   <br>
                                            Varios dispositivos: <code>$ aireplay-ng -0 150 -a 00:23:04:B7:EF:D0 -c FF:FF:FF:FF:FF:FF wlan0mon</code>   <br>
                                            <br>
                                            En la opci�n de lanzar el ataque contra un �nico dispositivo en concreto, como se puede observar, se indica la direcci�n MAC del dispositivo que se quiere expulsar de la red y que no pueda volver a conectarse. Mientras que si quisieramos dejar la red inoperante durante un tiempo, ser�a el caso de desvincular a todos los dispositivos y no permitiendo su conexi�n de nuevo durante un tiempo. En este �ltimo caso, hacemos uso de la direcci�n MAC broadcast (FF:FF:FF:FF:FF:FF) para que afecte a todos y cada uno de los dispositivos conectados. De esta manera, se logra conseguir el ataque DoS con �xito sin estar conectado a la red, simplemente estando en su entorno.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                        Una de las posibles v�as para mitigar este tipo de ataques es quiz�s bloquear el tratamiento de todos los paquetes provenientes del exterior con direcci�n de destino FF:FF:FF:FF:FF:FF. De esta manera, se consigue lograr al menos que el atacante no consiga expulsar a todos los usuarios de manera instant�nea. Si intentase conseguir esa meta, deber�a conocer todas las direcciones MAC de los dispositivos e ir desasociando uno por uno hasta que alcance el objetivo. Si hay un gran n�mero de dispositivos, habr�a un margen de tiempo para asegurarnos de que nuestra red est� siendo objetivo de un ataque.<br><br>                                                                                            
                                        Otra manera eficaz es la instalaci�n de un Sistema de Detecci�n de Intrusos (IDS), haciendo uso de dos maneras posibles de configuraci�n que deseemos: por patr�n o por heur�stica. Cada uno de estos modos debe ser implementado por el administrador de la red en el IDS. Decimos por patr�n al modo de defensa que es capaz de detectar patrones de comportamiento de la red frente a ataques. Estos patrones pueden ser ya existentes o pueden ser desarrollados por el administrador para frenar ataques nuevos que no sean conocidos por la comunidad de la ciberseguridad. El hecho es que estos sistemas no detectan los ataques nuevos dado que no est� implementado que reconozca esos patrones porque se desconocen.<br><br>
                                        La otra modalidad que se puede implementar en el IDS es el m�todo heur�stico: recoge datos del comportamiento normal de la red y cuando este comportamiento se vea alterado o modificado, ya sea por la causa que sea, reconoce que la red tiene unos par�metros an�malos a los que normalmente tiene y da la alerta al administrador para que investigue si est� frente a un ataque de red. De esta manera, este m�todo de prevenci�n frente a ataques puede dar falsas alarmas, algo que el usuario administrador debe tener en cuenta.
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                        </div> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                        <a href="https://www.osi.es/es/actualidad/blog/2018/08/21/que-son-los-ataques-dos-y-ddos" target="_blank">�Qu� son los ataques DoS y DDoS?</a><br>
                                        <a href="https://www.incibe.es/protege-tu-empresa/blog/medidas-prevencion-ataques-denegacion-servicio" target="_blank">Prevenci�n contra ataques DoS seg�n INCIBE</a><br>
                                        <a href="https://www.incibe-cert.es/sites/default/files/contenidos/guias/doc/certsi_diseno_configuracion_ips_ids_siem_en_sci.pdf" target="_blank">IPS, IDS y SIEM: dise�o y configuraci�n</a><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                    
                    <!--Ataque de autenticacion masiva Alvaro-->
                    <div role="tabpanel" class="tab-pane fade" id="autMas">
                        <h2>Ataque de Autenticaci�n Masiva</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="aut-masiva.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Otra de las opciones para conseguir un ataque de denegaci�n de servicio puede ser la realizaci�n de un ataque de "Autenticaci�n Masiva". Llamamos a dicho ataque as� porque consiste en producir una gran cantidad de falsos usuarios que se intentan conectar a la red todos a la vez, con el fin de buscar la saturaci�n del punto de acceso. Con esto se lograr�a que si existiera un usuario real conectado a la red, �ste ver�a mermado las capacidades de la red hasta el punto de no tener conectividad. Esos usuarios creados son totalmente ficticios y no buscan conectarse. En realidad, buscan saturar la red para conseguir la denegaci�n de servicio que el atacante desea.</p>
                        <br>
                        <img class="center-block" src="images/Autenticacionmasiva.png" alt="Ataque de Autenticacion Masiva" width="55%" height="50%">
                        <br>
                        <p>Existen diferentes maneras de usar este ataque en funci�n del "mal" que quiera realizar el atacante. El primero de ellos, como se ha dicho, es un simple ataque de denegaci�n de servicio para que el usuario real no pueda hacer uso de la red a la que quiere acceder. Por otra parte, se puede buscar que el usuario se desconecte para posteriormente conectarse de nuevo, y mientras la persona que ataca escucha, capte el WPA Handshake para despu�s descifrar la contrase�a de la red.</p> 
                        <br>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Para llevar a cabo los procesos de monitorizaci�n es necesario realizar el cambio de estado de la tarjeta para que sea posible captar el tr�fico existente en los alrededores, pasando de un modo "Managed" a modo "Monitor".
                                            <br> <br>
                                            Opcional: <code>$ airmon-ng check kill</code><br>
                                            <code>$ airmon-ng start wlan0</code>
                                            <br> <br>
                                            Se necesita realizar un control sobre todas las redes existentes alrededor que capte la tarjeta de red de la persona atacante. Una vez que se ha obtenido la informaci�n necesaria sobre la red objetivo, hay que llevar a cabo una monitorizaci�n sobre dicha red para conocer si existe alg�n usuario real vinculado al punto de acceso que se quiere atacar. Como en otras ocasiones, estos procesos de control se realizan con la herramienta airodump-ng que debe estar instalada en el sistema atacante. 
                                            <br> <br>
                                            <code>$ airodump-ng wlan0mon</code><br>
                                            <code>$ airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 wlan0mon</code>
                                            <br><br>
                                            Se usa la herramienta mdk3 para realizar diferentes tipos de ataque. El tipo de ataque se indica en el par�metro que se a�ada a la orden que se va a ejecutar. En este caso, el par�metro "a" indica este tipo de ataque que se quiere conseguir. Se incrementar� el n�mero de usuarios ficticios a medida que pasa el tiempo y todos ellos intentar�n conectarse a la red.
                                            <br> <br>
                                            <code>$ mdk3 wlan0mon a -a 00:23:04:B7:EF:D0</code> 
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                            Una clara opci�n de evitar este posible ataque es limitar el n�mero m�ximo de usuarios que se puedan conectar a la red simult�neamente, evitando claras aglomeraciones de usuarios que pueden dar que pensar que puede estar relacionado con este ataque. El gran inconveniente es averiguar cual es el l�mite claro de clientes a las que se puede dar conectividad debido al grado de incertidumbre de ese n�mero. Se debe tener en cuenta el tipo de uso que se va a dar a la red y realizar unas estimaciones de cuantos usuarios leg�timos van a poder conectarse.<br><br>
                                            Otra de las posibles v�as para reducir las probabilidades de �xito de este tipo de ataques es el uso de listas de direcciones MAC. Estas listas pueden desarrollarse en funci�n del punto de vista de defensa que se quiera implementar. Existen dos tipos: whitelist y blacklist.
                                        <p> 
                                        <ul type="square">
                                            <li>Whitelist: se introducen las direcciones MAC que s� van a tener permiso de acceso a la red que se est� administrando. Cualquier dispositivo con direcci�n MAC diferente le ser� denegado el acceso al punto de acceso. </li>
                                            <li>Blacklist: hay que indicar las direcciones MAC de dispositivos que van a tener prohibido el acceso a la red. Si se intenta acceder con una direcci�n MAC que no se encuentra en la lista, el dispositivo podr� conectarse si lo desea. </li>
                                       </ul>
                                        </p>
                                        Cada uno tiene sus propias ventajas y desventajas que se comentan a continuaci�n. Con respecto a las "Whitelist", podemos decir que son las que m�s protecci�n ofrecen porque s�lo van a poder acceder a la red aquellos dispositivos cuyas direcciones MAC est�n incluidas en la lista. Con esto se puede lograr una mayor protecci�n del interior de la red con respecto a la gente que va a poder acceder, pero quiz�s el inconveniente que nos presenta es que sean demasiado restrictivas. Decimos que puede llegar a ser inconveniente porque cada vez que un usuario leg�timo quiera acceder a la red y no est� incluido en la whitelist, el administrador deber� configurarlo de tal manera que la direcci�n MAC de dicha persona aparezca en la lista.<br><br>
                                        Por otra parte, con las "Blacklist" se permite una mayor conectividad de usuarios a la red dado que solo se imponen restricciones de no acceso. Normalmente en estos listados aparecen direcciones MAC ya conocidas por experiencia que han sido relacionadas con acciones peligrosas contra una red o simplemente, por el hecho de no querer dejar acceder al dispositivo que tenga esa direcci�n. Pueden llegar a ser insuficientes quiz�s por la existencia de herramientas que permiten el cambio de direcci�n MAC precisamente para esto, para evitar ser bloqueados en ataques.
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                        </div> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                        <a href="https://kali-linux.net/article/mdk3/" target="_blank">Informaci�n de la herramienta mdk3</a><br>
                                        <a href="https://www.manageengine.com/application-control/whitelisting-vs-blacklisting.html" target="_blank">Blacklist vs Whitelist</a><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                    
                    <!--Beacon Flood Mode Attack-->
                    <div role="tabpanel" class="tab-pane fade" id="beaFlo">
                        <h2>Beacon Flood Mode Attack</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="beacon-flood.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <p>Una de las variantes del ataque de denegaci�n de servicio (DoS) trata de centrarse en el punto de acceso en vez de los dispositivos que se encuentran conectados a ese. Este enfoque lleva al ataque "Beacon Flood Mode Attack", que a diferencia del ataque de autenticaci�n masiva, �ste consiste en la creaci�n de puntos de acceso falsos que sean capaces de generar beacon frames. Todos los canales ser�n creados y operar�n en el mismo canal que la red objetivo a la que se quiere atacar. De esta forma, gracias a la formaci�n de muchos beacon frames en el mismo canal, se corromper� la integridad del canal impidiendo que siga desarrollando su funcionalidad de manera correcta. </p>
                        <br>
                        <p>Recordamos que un beacon frame no es m�s que un paquete que se transmite desde un punto de acceso inal�mbrico para mostrar al resto sus par�metros, como puede ser nombre de la red, canal en el que trabaja y dem�s datos de inter�s. Se env�an peri�dicamente cada cierto tiempo para que todos los dispositivos del entorno sepan de su existencia. Entonces, el objetivo del ataque es buscar la acumulaci�n de muchos beacon frame en el mismo canal que la red atacada para que se da�e el entorno del AP. Si el canal es da�ado, el verdadero access-point dejar� de ofrecer conectividad a los dispositivos que estaban conectados.</p> 
                        <br>
                       <img class="center-block" src="images/BeaconFloodModeAttack.png" alt="Beacon Flood Mode Attack" width="55%" height="50%">
                        <br>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Antes de comenzar con la ejecuci�n del ataque, se puede precisar si existe alg�n proceso que pueda ser problem�tico al intentar cambiar el modo de la tarjeta de red, y es por ello que se puede decidir matar esos procesos peque�os. Seguidamente, hay que modificar el modo de la tarjeta de red a un modo "Monitor".
                                            <br> <br>
                                            Opcional: <code>$ airmon-ng check kill</code><br>
                                            <code>$ airmon-ng start wlan0</code>
                                            <br><br>
                                           Adem�s, como en el resto de ataques inal�mbricos, se producen los procesos de monitorizaci�n del entorno, y una vez recogida toda la informaci�n al respecto, hacer un control del tr�fico sobre la red que se quiere atacar. De igual manera, se realiza con la herramienta airodump-ng para averiguar todos los detalles de la red que se quiere atacar.
                                            <br> <br>
                                            <code>$ airodump-ng wlan0mon</code><br>
                                            <code>$ airodump-ng -c 1 --bssid 00:23:04:B7:EF:D0 wlan0mon</code>
                                            <br><br>
                                            El paso que se realiza ahora es totalmente opcional. Se decidi� llevar a cabo para darle m�s valor al ataque y su demostraci�n. El fichero "redes" va a contener los nombres que son generados a partir de un bucle iterativo que formular� los nombres desde MiRed1 hasta MiRed30. As� pues, los puntos de acceso falsos creados van a tener los nombres que est�n incluidos en la lista aportada.  
                                            <br> <br>
                                            <code>$ for i in $(seq 1 30) ; do echo "MiRed$i" >> redes ; done</code><br><br>
                                            La herramienta usada va a ser mdk3, cambiando uno de los par�metros para indicar que el ataque se va a tratar de un Beacon Flood Mode Attack. Una de las opciones que se pueden aportar es indicar los nombres de los access-point que van a ser creados. Se a�ade el fichero creado con anterioridad como uno de los par�metros y se debe indicar el tipo de ataque que se quiere llevar a cabo con la herramienta que se est� utilizando.
                                            <br><br><code>$ mdk3 wlan0mon b -f redes -a -s 1000 -c 1</code>
                                         
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                            Como en otras ocasiones hemos visto, una manera sencilla de evitar este tipo de ataques (DoS o DDoS) es implementando un Sistema de Detecci�n de Intrusos. Mediante este mecanismo seremos capaces de captar cualquier posible movimiento existente en la red que pueda afectarla en su correcto funcionamiento. Es posible, que la mejor forma de orientar el enfoque de mitigaci�n se deba al modelo heur�stico.<br><br>
                                            El modelo heur�stico, si recordamos, recog�a todas la variables del entorno y cuando se alterar� alguno de los valores considerados normales, se dar� la se�al de posible alteraci�n de comportamiento debido a un probable ataque. Entonces, cuando el atacante intentase este ataque los par�metros que se recogen salen de ese intervalo considerado "normal" y seguramente, mientras se alarme al administrador encargado de la red se recojan en logs todo lo que est� sucediendo en la propia red.<br><br>
                                            Espec�ficamente con este ataque, puede estar la posibilidad de pensar en otro mecanismo que frene estas ofensivas. Por ejemplo, implementando nuevos protocolos que tengan en cuenta esta vulnerabilidad, haciendo que no sea posible la creaci�n de tantas redes inal�mbricas en un mismo canal. Habr�a que establecer un l�mite superior m�ximo de redes que se permitan estar para evitar corromper el entorno del canal y as�, estropear las conexiones establecidas en ese canal.
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                        </div> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <a href="https://es.wikipedia.org/wiki/Beacon_frame#:~:text=Los%20Beacon%20frames%20contienen%20toda,presencia%20de%20la%20red%20WLAN.&text=Un%20Beacon%20frame%20consiste%20de,un%20cuerpo%20y%20un%20FCS.
                                       " target="_blank">Estructura de los beacon frames</a><br>
                                        <a href="https://mundo-hackers.weebly.com/beacon-flood.html" target="_blank">�C�mo desarrollar un Beacon Flood Mode Attack?</a><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                    
                    
                    
        
                    <!--Fuerza Bruta Sergio-->
                    <div role="tabpanel" class="tab-pane fade" id="fuerzaBruta">
                        <h2>Fuerza bruta</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="fuerzabruta.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Un ataque de fuerza bruta consiste en que un atacante configure valores predeterminados, realice solicitudes a un servidor, utilizando esos valores y finalmente analice la respuesta. Hydra junto con Medusa son las dos herramientas que m�s se utilizan para realizar este tipo de ataques, ambos son crackeadores de contrase�as. Para realizar este ataque se usar� un diccionario de contrase�as que se generar� mediante la herramienta Crunch.</p>
                        <br>
                        <p>No solo existen diccionarios de contrase�as, tambi�n podremos encontrar diccionarios de usuarios o puertos. Cuanto menos espec�ficos seamos, m�s tiempo llevar� el ataque e incluso se podr�a no llegar a completar en un per�odo de tiempo aceptable.</p> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Para poder realizar un ataque de estas caracter�sticas, lo primero que supondremos es el formato de la contrase�a. Existen multitud de diccionarios con las contrase�as por defecto de muchos sistemas y las m�s usadas por la gente, que en ciertos casos nos puede ahorrar mucho tiempo a la hora de llevar este tipo de ataques. 
                                            <br> <br>
                                            No solo existen diccionarios de contrase�as, tambi�n podremos encontrar diccionarios de usuarios o puertos. Cuanto menos espec�ficos seamos, m�s tiempo llevar� el ataque e incluso se podr�a no llegar a completar en un per�odo de tiempo aceptable.
                                            <br> <br>
                                            Mediante la herramienta Crunch generaremos diccionarios contemplando todas las posibilidades. Si no usa una contrase�a muy robusta, ser� efectivo en un tiempo m�s o menos razonable.
                                            <br> <br>
                                            Una vez que tenemos el diccionario de posibles contrase�as, podemos proceder a lanzar el ataque de fuerza bruta hacia un servicio. Supondremos tambi�n que el usuario ser� root, aunque tambi�n se podr�a hacer un diccionario de usuarios. Para lanzar el ataque, usaremos la herramienta Hydra.
                                            <br> <br>
                                            <code>$ hydra -l root -P diccionario.txt 157.88.123.102 ssh</code>                                          
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>                                      
                                           Lo primero que debemos tener en cuenta es que estos ataques se realizan mediante diccionarios de usuarios y contrase�as. Muchos de estos diccionarios suelen ser muy completos y se incluyen contrase�as por defecto de dispositivos y contrase�as habituales.
                                           <br><br>
                                           Por lo tanto un primer paso es tener una contrase�a que no sea tan d�bil ante estos ataques. Es recomendable usar contrase�as largas, con letras, n�meros y otros caracteres. Llevar a cabo un ataque por fuerza bruta con una contrase�a as�, llevar�a varios d�as y ser�a f�cilmente detectable.
                                           <br><br>
                                           Otra de las medidas que ayudan a mitigar este tipo de ataques, es cambiar el puerto defecto. As� pues, ciertos servicios como SSH, que por defecto corren en el 22, son usualmente atacados por ataques automatizados. Aunque con un escaneo de puertos, se podr�a ver cu�les son los puertos que est�n abiertos y los servicios que corren, muchos de estos ataques son ejecutados mediante scripts, que a menos que sean dirigidos, no utilizar�n otro tipo de herramientas. Cambiar el puerto, por lo tanto, aumentar�a el tiempo para que tuviera �xito el ataque.
                                           <br><br>
                                           Al igual que con el resto de ataques, los IDS/IPS nos ayudar�n en la detecci�n de estos ataques. La monitorizaci�n de la red nos permitir� identificar los ataques, viendo picos donde se registran m�s peticiones a un puerto determinado. Al contrario que en un escaneo de puertos, se puede observar que el ataque va dirigido a un puerto en concreto y que muchas de las peticiones van dirigidas.
                                           <br><br>
                                           Posibilidades para mitigar este tipo de ataques:
                                           <br><br>
                                           <ul type="square">
                                               <li>Edici�n del archivo de configuraci�n para el demonio /etc/ssh/sshd_config:
                                                   <ul>
                                                       <li>No permitir el acceso mediante root. Esto nos permitir� que cuando usen un diccionario para los usuarios, no puedan usar root. Para ello escribiremos en el fichero: <code>PERMITROOTLOGIN NO</code></li>
                                                       <li>Usar versiones seguras de los servicios. En el caso de SSH, la versi�n 1 del protocolo tiene muchas vulnerabilidades conocidas, por lo que debemos usar la 2. Escribimos en el fichero: <code>PROTOCOL 2</code></li>
                                                       <li>Modificar el n�mero de segundos que la pantalla de login est� activa, para que pasado el tiempo se cierre. Escribimos en el fichero: <code>LOGINGRACETIME 30</code></li>
                                                       <li>Modificar el n�mero de intentos m�ximos que podemos fallar el login, despu�s de estos intentos fallidos se cerrar� la conexi�n. Escribimos en el fichero: <code>MAXAUTHTRIES 3</code></li>
                                                   </ul>
                                                     
                                                   
                                               </li> 
                                               <br>
                                               <li>Desactivar contrase�as, uso de RSA, clave p�blica y privada.</li>
                                               <br>
                                               <li>Monitorizaci�n y bloqueo de IP mediante ACL</li>
                                               <br>
                                               <li>Portknocking. Consiste en esconder un puerto hasta que una secuencia de puertos ocurra. En Linux, el software m�s utilizado es knockd. Un servidor knockd escucha todo el tr�fico que pasa por una interfaz Ethernet, buscando secuencias de puertos <br><br>El cliente enviar� paquetes UDP o TCP a unos puertos espec�ficos del servidor. No necesariamente tienen que estar esos puertos abiertos, ya que knockd escucha en la capa de enlace y ve todo el tr�fico. Cuando se detecta que la secuencia de puertos ocurre, knockd abrir� el puerto del servicio que deseemos. Adem�s, en knockd.conf se puede configurar para que pasado un cierto tiempo, se vuelva a cerrar el puerto o que para una secuencia incorrecta tambi�n se cierre. Un ejemplo de port knocking ser�a el siguiente:<br><br>923:tcp, 8902:udp, 5558:tcp, 1099:udp, 68543:udp<br><br>Tras realizar esta secuencia de puertos, el puerto deseado se abrir�a.
                                                   Si esta secuencia no cambia, cualquiera que utilice un sniffer, puede descubrirla. Es recomendable utilizar un generador pseudoaleatorio de n�meros.</li>
                                               <br>
                                               <li>M�dulos PAM. Son una suite de librer�as compartidas que permiten administrar la autenticaci�n de los usuarios. Podremos aplicar mecanismos de seguridad sin tener que aplicar los cambios y modificar cada aplicaci�n. Las configuraciones se pueden a�adir a los ficheros del directorio /etc/pam.d. En ese directorio encontramos ficheros para los diferentes servicios.</li>
                                           </ul>                                                                                                              
                                           
                                           <br><br>
                                                                                                                                                             
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                        </div>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <a href="https://securitytutorials.co.uk/brute-forcing-passwords-with-thc-hydra/" target="_blank">Herramienta Hydra</a><br>
                                            <a href="https://wiki.archlinux.org/index.php/Port_knocking_(Espa%C3%B1ol)" target="_blank">Informaci�n acerca del Portknocking</a><br>
                                            <a href="https://likegeeks.com/es/linux-pam/" target="_blank">M�dulos PAM: que son y m�s detalles.</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                            <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>

                    <!--DoS Sergio (Con Links)-->
                    <div role="tabpanel" class="tab-pane fade" id="DoS">
                        <h2>Denegaci�n de servicio </h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="dos.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>En seguridad inform�tica, un ataque de denegaci�n de servicio, tambi�n llamado ataque DoS (por sus siglas en ingl�s, Denial of Service), es un ataque a un sistema de computadoras o red que causa que un servicio o recurso sea inaccesible a los usuarios leg�timos.
                           Normalmente provoca la p�rdida de la conectividad con la red por el consumo del ancho de banda de la red de la v�ctima o sobrecarga de los recursos computacionales del sistema atacado.</p>
                        <br>
                        <h4>TCP SYN Flood</h4>
                        <p>Es un m�todo de denegaci�n de servicio que afecta a hosts que corren procesos TCP. El ataque aprovecha el tiempo de espera despu�s de recibir un segmento SYN en un puerto que est� en estado de escucha. Para entender c�mo funciona un ataque de este tipo, necesitamos entender c�mo se establece una conexi�n TCP. Una conexi�n TCP se establece con lo que com�nmente se conoce como un "three-way handshake":</p>                        
                        <br>
                        <ul type="square">
                            <li>1� El cliente env�a un paquete SYN para establecer una conexi�n TCP.</li>   
                            <li>2� El servidor recibe el paquete SYN, pasa a estado de SYN-RCVD y responde con un SYN+ACK.</li>       
                            <li>3� Finalmente, el cliente responde con un ACK.</li>
                        </ul>
                        <br>
                        <p>Sin embargo, si no se realiza el tercer paso, el servidor seguir� esperando un ACK en estado de SYN-RCVD. Existe la posibilidad de no responder al SYN+ACK o de hacer "spoofing" de la direcci�n de origen como se muestra en la siguiente figura.</p>
                        <br>
                        <p>El ataque por inundaci�n SYN explota este comportamiento. El pr�sito de este ataque es enviar muchas paquetes SYN al servidor e ignorar los paquetes SYN+ACK devueltos. Esto provoca que el servidor se quede esperando por m�ltiples peticiones durante el tiempo configurado de esperay produce una sobrecarga en el servidor, ya que hay un n�mero limitado de conexiones TCP concurrentes. Si el servidor llega al l�mite, no se podr�n aceptar nuevas conexiones.</p>
                        <br>
                        <img class="center-block" src="images/SYNFlood.jpeg" alt="SYN Flood" width="37%" height="30%">
                        <br>
                   
                        <h4>UDP/ICMP Flood</h4>
                        <p>UDP, al contrario que TCP, no necesita crear una sesi�n entre cliente y servidor, es decir, no hay ning�n handshake. ICMP es otro caso en el que no se necesita crear una sesi�n. Suele ser usado para mandar mensajes de error e informaci�n operacional desde los dispositivos de red. </p>
                        <br>
                        <p>Ambos protocolos no explotan ninguna vulnerabilidad. Este ataque consiste simplemente en mandar paquetes continuamente a puertos aleatorios hasta que el servidor se sobrecargue intentando procesar todas las peticiones. Tambi�n se puede usar en combinaci�n con "spoofing". </p>
                        <br>
                        <p>Cuando se env�a un paquete UDP en el cu�l no hay aplicaciones escuchando, como hemos visto anteriormente, el servidor tendr� que responder con numerosos paquetes ICMP. </p>
                        <br>
                        <p>En un ataque de inundaci�n ICMP, se intercambiaran dos tipos de mensajes entre el cliente y el servidor, un ICMP Echo Request y un ICMP Echo Reply.</p>
                        <br>
                        
                        <h4>Ataque SMURF</h4>
                        <p>Un atacante elige un intermediario como amplificador. Env�a una gran cantidad de paquetes ICMP a la direcci�n IP de broadcast de esos sitios intermediarios. La direcci�n sobre la que haremos "spoofing" es la de la v�ctima. Esto provocar� que todos los dispositivos de la red manden ICMP Echo Replies a la v�ctima para sobrecargarla.</p>
                        <br>
                      
                        <img class="center-block" src="images/smurf.jpg" alt="SMURF" width="27%" height="40%" >
                   
                        
                        <br>
                        
                        <div class="table-responsive">          
                            <table class="table">
                              <thead>
                                <tr>
                                  <th>Lanzamiento</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                      Para poder probar este tipo de ataques utilizaremos "hping3". Consiste en una herramienta de red capaz de enviar paquetes TCP/IP personalizados y de mostrar las r�plicas del objetivo. Es �til para poder probar firewalls, esc�neos de puertos, fragmentaci�n... Lanzaremos un TCP SYN DoS mediante:
                                      <br><br>
                                      <code>$ hping3 -S --flood -V  -p 80 157.88.123.102</code>
                                  </td>                        
                                </tr>           
                              </tbody>
                            </table>
                        </div>
                        
                        <div class="table-responsive">          
                            <table class="table">
                              <thead>
                                <tr>
                                  <th>Detecci�n y defensa</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                      Hay muchas estrategias para la mitigaci�n de este tipo de ataques, aunque ninguna es totalmente efectiva. Por supuesto, la mejor manera de ver estos ataques, que pueden ser identificados f�cilmente, son utilizando IDS/ISP o monitorizando la red y a�adiendo reglas de filtrado en el firewall, como por ejemplo evitando paquetes ICMP a nuestro servidor para evitar ICMP Flood o bloqueando una IP concreta. Podemos detectar un ataque de denegaci�n de servicio si encontramos un gran n�mero de peticiones cuyo origen es la misma IP en un corto per�odo de tiempo, el tr�fico que se produce es muy alto.
                                      <br><br>
                                      Es recomendable usar, proxies inversos o balanceadores de carga. El objetivo es, que aunque alg�n dispositivo de red o servidor se sobrecargue, se pueda seguir utilizando. Para ello tambi�n ser� efectivo a�adir redundancia en nuestra red y usar protocolos como HSRP o RSTP para alta disponibilidad. Tambi�n es importante la correcta configuraci�n de los servicios que ofrezca el servidor.
                                      <br><br>
                                      Existen ciertas configuraciones del kernel de Linux que nos permitir� proteger nuestro servidor. Para ello modificaremos par�metros del fichero /etc/sysctl.conf, desde el cu�l sirve para pasar configuraciones al kernel en tiempo de ejecuci�n. Realizaremos estas modificaciones:
                                      <br>
                                      <ul type="square">
                                          <li>tcp_syncookies: para evitar ataques TCP SYN Flood. Cuando la cola de peticiones SYN se completa, el servidor responder� con un paquete SYN-ACK como hace normalmente, pero creando un n�mero de secuencia codificado con la IP de origen, la IP de destino, el puerto y un timestamp. As� pues, la cola ya no ser� necesaria ya que podr� reconstruirse mediante el n�mero de secuencia. Se activar� esto mediante:<br><code>sysctl -w net.ipv4.tcp_syncookies=1</code></li>
                                          <li>ignore_broadcasts: para evitar ataques SMURF. Se desactivar� la respuesta a las peticiones boradcast de tipo echo ICMP. Se activa:<br><code>sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1</code></li>
                                          <li>rp_filter: permite detectar el IP Spoofing comprobando que los paquetes que entran por una interfaz son alcanzables bas�ndose en la direcci�n de orgien. Se activa con:<br><code>sysctl -w net.ipv4.conf.all.rp_filter=1</code></li>                                       
                                      </ul>
                                      <br><br>
                                      An�logamente, se puede seguir la misma estrategia, realizando las configuraciones correspondientes en los routers de Cisco, bas�ndose en los mismos principios que nos hemos basado antes.
                                      <br>
                                      <ul type="square">
                                          <li>Para evitar ataques ataques TCP SYN FLOOD usaremos TCP intercept. Es utilizado para interceptar y validar las solicitudes de conexi�n TCP. Se establece una conexi�n con el cliente en nombre del servidor de destino, si tiene �xito se establece una conexi�n en nombre del cliente y se unen las dos conexiones. As�, se evitan los intentos de conexi�n de hosts inalcanzables. Se utilizar�n adem�s umbrales de tiempo de espera para detectar conexiones ileg�timas. </li>
                                          <li>Para evitar ataques SMURF, seleccionamos la interfaz del router por la que pueden llegar estos ataques y escribiremos el siguiente comando:<br><code>no ip directed-broadcast</code></li>
                                          <li>Reverse Path Forwarding para verificar que el origen de las peticiones es accesible. Evita las direcciones falsificadas, si la direcci�n de origen es falsa, el paquete se descarta.</li>
                                      </ul>
                                  </td>                        
                                </tr>           
                              </tbody>
                            </table>
                        </div>
                           <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <a href="https://www.imperva.com/learn/application-security/syn-flood/" target="_blank">TCP Syn Flood</a><br>
                                            <a href="https://www.sonicwall.com/support/knowledge-base/udp-and-icmp-flood-protection/170503279224098/" target="_blank">Protecci�n frente a UDP/ICMP Flood</a><br>
                                            <a href="https://elrincondebackbone.blogspot.com/2013/05/ataque-smurf-saturando-las-redes-lan.html" target="_blank">Blog con informaci�n del ataque SMURF.</a><br>                                         
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>

                       <!--Escaneo Puertos Sergio (Con Links)-->
                    <div role="tabpanel" class="tab-pane fade" id="escaneopuertos">
                        <h2>Escaneo de puertos</h2>
                        <br>
                        <form method="post" action="Controlador"><button name="lanzar" type="submit" value="nmap.sh" class="btn btn-primary active">Lanzar ataque</button></form>
                        <br>
                        <p>Nmap es una herramienta open-source cuyas  utilidades principales son el descubrimiento de redes y auditor�as de seguridad. Es �til tambi�n para administradores de redes y sistemas para mantener el inventario de los dispositivos, o monitorizaci�n de servicios y actividades de los hosts.Lo interesante de esta herramienta es la tabla de puertos que nos muestra la salida. Esta tabla muestra el estado, el n�mero de puerto, el protocolo, el nombre de servicio y el estado.El estado puede ser:</p>
                        <ul type="square">
                            <li>Open: una aplicaci�n est� escuchando en ese puerto</li>
                            <li>Filtered: un firewall, filtro  u otro obst�culo de red est� bloqueando ese puerto, por tanto Nmap no puede indicarnos si est� abierto o est� cerrado</li>
                            <li>Unfiltered: cuando responde a Nmap, pero no puede determinar si el puerto est� abierto o cerrado</li>
                            <li>Closed: no hay aplicaciones escuchando en el puerto</li>
                        </ul>
                        <br>
                        <h4>TCP Syn Scan</h4>
                        <p>Es la t�cnica m�s utilizada. Se activa con la opci� -sS. Escanea miles de puertos por segundo y es relativamente discreto, ya que nunca completa las conexiones TCP. Env�a un paquete SYN, como si fuera a abrir una conexi�n real y luego espera la respuesta. Un SYN o ACK indica que el puerto est� abierto, mientras que un RST(reinicio) indica que no se escucha. Si no se ha recibido nada o se ha recibido un paquete ICMP, indica que el puerto est� filtrado.</p>
                        
                        <br>
                        <h4>UDP Scan</h4>
                        <p>La mayor�a de los servicios de Internet se ejecutan a trav�s del protocolo TCP. Pero existen servicios muy importantes y vulnerables como DNS, SNMP o DHCP que utilizan el protocolo UDP. Este escaneo se activa con la opci�n -sU y se puede combinar con el escaneo TCP. Se env�a un paquete UDP, normalmente con contenido vac�o, a menos que se especifique. Si devuelve un c�digo ICMP(tipo 3, c�digo 3) el puerto est� cerrado. Otros errores ICMP indican el puerto como filtrado. Si no se recibe nada, significa que el puerto est� abierto o que se ha bloqueado la comunicaci�n.La dificultad de este escaneo es hacerlo r�pidamente, ya que los puertos abiertos o filtrados no mandan respuesta y deja a Nmap en espera.</p>
                        
                        <br>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            La sintaxis de Nmap es:
                                            <br>
                                            nmap [Scan Type...] [Options] {target specification}
                                            <br><br>
                                            Lanzaremos un escaneo TCP SYN con la opci�n -A, que nos mostrar� el SO, la versi�n detectada y la traceroute:
                                            <br>
                                            <code>$ nmap -sS -A 157.88.123.102</code> 
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            La �nica forma de evitar un escaneo de puertos es bloquear todo el tr�fico que llega a la red desde el exterior. En nuestro caso, no podemos bloquear todo el tr�fico, estamos ofreciendo servicios al exterior y si lo bloqueamos no podr�n ser usados. En cualquier entorno de laboratorio, esto es una situaci�n que no se va a dar.
                                            Por lo tanto, estamos expuestos a recibir constantemente escaneos de puertos. No nos tendremos que centrar en evitar estos, nos centraremos en proteger el acceso a los servicios.
                                            <br><br>
                                            Existe la posibilidad de monitorizar continuamente el estado de la red y tener un IDS para detectar este tipo de ataques. Cuando observemos actividad malicioso y continuada por parte de una o varias IPs, podremos bloquear esta IP en el firewall y evitar que puedan continuar haci�ndolo.
                                            <br><br>
                                            Al lanzar el ataque se puede observar en el estado de la red un pico de peticiones que provienen del mismo origen. En este tipo de ataques se observar� que las peticiones se realizar�n a m�ltiples puertos, en vez de a un puerto concreto, como puede ocurrir en un ataque de fuerza bruta. Es una distribuci�n uniforme y no se ha dirigido a ning�n puerto en concreto. Podremos analizar los logs para ver que puertos ha detectado como abiertos. Para ello, nos fijaremos en los flags de los paquetes TCP. Como hemos visto en la descripci�n del ataque, seg�n el tipo de flag visto en los logs, podremos detectar si un puerto est� abierto, cerrado, filtrado o sin filtrar.
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>    
                       <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <a href="https://networkinferno.net/tcp-syn-scanning#:~:text=So%20what%20is%20a%20TCP,ACK%20or%20SYN%2CACK%20response." target="_blank">TCP Syn Scan</a><br>
                                            <a href="https://www.varonis.com/blog/nmap-commands/" target="_blank">Gu�a de iniciaci�n Nmap</a><br>
                                            <a href="https://nmap.org/book/scan-methods-udp-scan.html" target="_blank">Ejemplos UDP Scan</a><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                        <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
                    
                       <!--Spoofing Sergio-->
                    <div role="tabpanel" class="tab-pane fade" id="spoofing">
                        <h2>Spoofing</h2>
                        <br>
                        <h4>Man In The Middle</h4>
                        <p>El atacante se situar� en el medio de una comunicaci�n entre cliente y servidor. Por lo tanto, toda comunicaci�n entre ambos extremos ser� capturada por el atacante. Una vez situado en el medio, podr� llevar a cabo multitud de ataques. </p>
                        <br>
                        <h4>MAC Flooding</h4>                       
                        <p>Como ya sabemos, ARP es un protocolo de la capa de enlace. Su prop�sito general es resolver una IP en una direcci�n MAC. Un switch dispone de una memoria interna, conocida como CAM (Content-Adressable Memory) donde asigna puertos a direcciones MAC. Cuando llega una trama a un switch y se desconoce el destino, porque es la primera vez que llega, o ha expirado, se enviar� por todos los puertos de la VLAN excepto por el que fue recibido. Gracias a esto podr� enviar el paquete por un puerto �nico. </p>
                        <br>
                        <p>La idea de este ataque consiste en env�ar una gran cantidad de r�plicas de ARP para sobrecargarlo, llenando la tabla CAM del switch de asignaciones , y que pase a modo hub. Esto quiere decir que todo el tr�fico que le llegue, lo mandar� a todos los hosts de la red. Un atacante podr�a ahora escuchar todo el tr�fico de la red mediante un sniffer.</p>
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Lanzamiento</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            LLevaremos a cabo un ataque MITM mediante ARP Spoofing dentro de nuestra red local. Los equipos involucrados ser�n de la VLAN 30, es decir los de la subred 192.168.30.0/24. Estas ser�n las IPs de los equipos involucrados:
                                            <ul type="square">
                                                <li>Atacante: 192.168.30.10 </li>
                                                <li>V�ctima: 192.168.30.20</li>
                                                <li>Default Gateway: 192.168.30.1</li>
                                            </ul>
                                            <br>                                                                       
                                            Para realizar el spoofing usaremos la herramienta Arpspoof del paquete Dsniff. Inundar� la red con tramas ARP para que todas las maquinas actualicen su tabla. El objetivo es que la v�ctima en vez de enviar los paquetes al Default Gateway, los env�e a la m�quina del atacante. Para ello cambiaremos la direcci�n MAC asociada a la IP del Default Gateway por la direcci�n MAC del atacante.   
                                            <br><br>
                                            <code>$ arpspoof -I eth0 -t 192.168.30.20 192.168.30.1</code>
                                            <br>
                                            <code>$ arpspoof -I eth0 -t 192.168.30.1 192.168.30.20</code>
                                            <br><br>
                                            Una vez hecho el envenenamiento de su tabla ARP, podremos observar que ahora cada vez que la v�ctima env�a los datos, pasar�n por el atacante. Si consultamos la tabla ARP de la v�ctima observamos que ambas direcciones tienen la misma direcci�n MAC.
                                            
                                            
                                            <pre>? (192.168.30.1) at 00:1c:42:60:bc:a0  [ether] on eth0 
? (192.168.30.10) at 00:1c:42:60:bc:a0 [ether] on eth0</pre>
                                            
                                            Ahora podremos realizar otro tipo de ataques como es el de denegaci�n de servicio, DNS spoofing...La herramienta que se suele usar para realizar el ARP spoofing y posteriormente llevar a cabo los otros ataces es Ettercap. 
                                            <br><br>
                                            No podremos lanzar el ataque desde esta interfaz web, pues es un ataque que se realiza desde el interior y solo monitorizamos el tr�fico que proviene del exterior. A�n as� resulta interesante ananalizar el tr�fico que se genera.
                                            <br><br>
                                            <img class="center-block" src="images/arpspoof.png" alt="Spoofing" width="100%" height="60%">
                                            <br>
                                            De esta forma, la subred se inunda con paquetes ARP falsificados en los que la direcci�n MAC del default gateway ser� la del atacante y as� todo el tr�fico de la subred pasar� por este.
                                            <br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                          
                        </div>
                        
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Detecci�n y defensa</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>  
                                            La mejor forma de detectar este tipo de ataques es mediante un IDS o un IPS. Tambi�n es conveniente revisar las tablas ARP para ver si a dos IPs distintas le corresponde la misma direcci�n MAC y as� detectarlo.
                                            <br><br>
                                            Existen mecanismos de autenticaci�n para prevenirlo y as� tener a un usuario siempre identificado. Tambi�n puede ser usado ARP est�tico, de tal forma que sea imposible ninguna alteraci�n, pero no es recomendable para redes grandes. Sin duda, la t�cnica m�s usada en empresas u organizaciones con redes grandes es usar una VPN.
                                            <br><br>
                                            En algunos switches modernos de Cisco tambi�n existe el DAI (Dynamic ARP Inspection) para prevenir ataques relacionados con el protocolo ARP. Al activarlo, intercepta todas las peticiones y respuestas ARP y verifica la autenticidad antes de actualizar la tabla o de reenv�ar los paquetes a los destinos. Nosotros no podremos implementar este m�todo ya que el que hemos utilizado se trata de uno m�s antiguo, sin esta caracter�stica.
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table> 
                           
                        </div> 
                        <div class="table-responsive">  
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>�Quieres saber m�s?</th>                                
                                    </tr>   
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <a href="https://en.wikipedia.org/wiki/MAC_flooding" target="_blank">Mac Flooding (Wikipedia)</a><br>
                                            <a href="https://es.godaddy.com/blog/que-es-una-ataque-man-in-the-middle/" target="_blank">Tipos de ataque Man in The Middle</a><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>  
                        </div>
                       <footer class="panel-footer">Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez</footer>
                    </div>
            </div>
       
        
        </div>
        
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Acerca de</h4>
                </div>
                <div class="modal-body">
                  <p>Trabajo de fin de grado realizado por D. �lvaro Villa Corporales y D. Sergio Sanz Ferrero, coordinado por Dr. Jes�s M� Vegas Hern�ndez.</p>
                  <br>
                  <p>Esta interfaz web pretende ilustrar de una forma did�ctica las principales vulnerabilidades presentes en una infraestructura de red. Para ello, de cada ataque se incluye una descripci�n, pasos que se siguen para realizar su lanzamiento, varias soluciones para poder detectar y mitigar estos ataques, y enlaces para poder ampliar informaci�n. En esta nueva actualizaci�n, se han a�adido ataques que se realizan a las redes inal�mbricas (fila inferior). </p>
                  <br>
                  <p>Se podr�n lanzar estos ataques desde la interfaz web para analizar el tr�fico que se genera y su repercusi�n sobre la red 157.88.123.102 de nuestra maqueta de red.</p>
                  <br>
                  <p>�Universidad de Valladolid</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                </div>
              </div>

        </div>
  </div>
          
  </body>
</html>
