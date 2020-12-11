(defrule querobot
      (initial-fact)
=>
      (printout t "¿El robot es chofer? ")
      (assert (es-chofer (read)))
)

(defrule eschofer
      (es-chofer si)
=>
      (assert (chofer robot))
      (printout t "El robot es conductor" crlf)
)

(defrule espeaton
      (es-chofer ~si)
=>
      (assert (peaton robot))
      (printout t "El robot es peaton" crlf)
)


(defrule estarojopeatones
      (peaton robot)
=>
      (printout t "¿Esta rojo el semaforo de peatones? ")
      (assert (esta-rojo-peatones (read)))
)

(defrule estaverdepeatones
      (peaton robot)
      (esta-rojo-peatones ~si)
=>
      (printout t "¿Esta verde entonces? ")
      (assert (esta-verde-peatones (read)))
)

(defrule peatonesroto
      (peaton robot)
      (esta-rojo-peatones ~si)
      (esta-verde-peatones ~si)
=>
      (printout t "El semaforo de peatones debe estar averiado, pase con cuidado" crlf)
)

(defrule peatonesrojo
      (peaton robot)
      (esta-rojo-peatones si)
=>
      (printout t "El semaforo esta rojo, espere a que cambie a verde para cruzar" crlf)    
)

(defrule peatonesverde 
      (peaton robot)
      (esta-verde-peatones si)
=>
      (printout t "El semaforo esta verde, el robot puede pasar" crlf)
)


(defrule estarojocoches
      (chofer robot)
=>
      (printout t "¿Esta rojo el semaforo de los coches? ")
      (assert (esta-rojo-coches (read)))
)

(defrule estaverdecoches
      (chofer robot)
      (esta-rojo-coches ~si)
=>
      (printout t "¿Esta verde entonces? ")
      (assert (esta-verde-coches (read)))
)

(defrule estaambarcoches
      (chofer robot)
      (esta-rojo-coches ~si)
      (esta-verde-coches ~si)
=>
      (printout t "¿No?, ¿Tal vez este en ambar? ")
      (assert (esta-ambar-coches (read)))
)

(defrule estaintermitentecoches
      (chofer robot)
      (esta-rojo-coches ~si)
      (esta-verde-coches ~si)
      (esta-ambar-coches ~si)
=>
      (printout t "¿Tampoco?, A ver si esta intermitente ")
      (assert (esta-intermitente-coches (read)))
)

(defrule cochesroto
      (chofer robot)
      (esta-rojo-coches ~si)
      (esta-verde-coches ~si)
      (esta-ambar-coches ~si)
      (esta-intermitente-coches ~si)
=>
      (printout t "El semaforo debe estar averiado, pase con cuidado" crlf)
)

(defrule cochesverde
      (chofer robot)
      (esta-verde-coches si)
=>
      (printout t "Tienes el semaforo verde, puedes pasar" crlf)
)

(defrule cochesrojo
      (chofer robot)
      (esta-rojo-coches si)
=>
      (printout t "Tienes el semaforo rojo, espera a que cambie" crlf)
)

(defrule cochesambar
      (chofer robot)
      (esta-ambar-coches si)
=>
      (printout t "¡Te va a cambiar a rojo!... ¡¡¡ACELERA!!!" crlf)
)

(defrule cochesintermitente
      (chofer robot)
      (esta-intermitente-coches si)
=>
      (printout t "Hay peatones cruzando, pasa con cuidado" crlf)
)
(deffacts estado-inicial
      (initial-fact)
)