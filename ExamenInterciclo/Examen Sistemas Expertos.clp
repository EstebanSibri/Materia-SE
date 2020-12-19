
(defrule nitrogeno-1
(or(planta-crece-poco)
   (planta-amarillo-palido)
   (hojas-pardo-rojizo))

=>
(assert(deficiencia-nitrogeno))
(printout t "La planta tiene una deficiencia de nitrógeno." crlf)
)

(defrule fosforo-1
(or(raiz-crece-poco)
   (planta-tallo-fusiforme)
   (planta-color-purpura)
   (planta-retraso-madurez))
=>
(assert(deficiencia-fosforo))
(printout t "La planta tiene una deficiencia de fosforo." crlf)
)

(defrule potasio-1
(or(bordes-hojas-chamuscados)
   (planta-tallos-debilitados)
   (frutas-semillas-marchitas))
=>
(assert(deficiencia-potasio))
(printout t "La planta tiene una deficiencia de Potasio." crlf)
)

(defrule error
(or(bordes-hojas-chamuscados)
   (planta-tallos-debilitados)
   (frutas-semillas-marchitas)
   (raiz-crece-poco)
   (planta-tallo-fusiforme)
   (planta-color-purpura)
   (planta-retraso-madurez)
   (planta-crece-poco)
   (planta-amarillo-palido)
   (hojas-pardo-rojizo))
=>
(assert(error-ingresado ))
(printout t "No se reconocen los sintomas." crlf)
)




(defrule pregunta1
(respuesta1 la-planta-crece-muy-poco)
=>
(assert (planta-crece-poco))
)

(defrule pregunta2
(respuesta1 la-planta-tiene-color-amarillo-palido)
=>
(assert (planta-amarillo-palido))
)

(defrule pregunta3
(respuesta1 las-hojas-tiene-un-color-pardo-rojizo)
=>
(assert (hojas-pardo-rojizo))
)

(defrule pregunta4
(respuesta1 la-raiz-de-la-planta-tiene-poco-crecimiento)
=>
(assert (raiz-crece-poco))
)

(defrule pregunta5
(respuesta1 la-planta-tiene-un-tallo-fusiforme)
=>
(assert (planta-tallo-fusiforme))
)

(defrule pregunta6
(respuesta1 la-planta-es-de-color-purpura)
=>
(assert (planta-color-purpura))
)

(defrule pregunta7
(respuesta1 la-planta-tiene-un-retrazo-de-madurez)
=>
(assert (planta-retraso-madurez))
)

(defrule pregunta8
(respuesta1 los-bordes-de-las-hojas-de-la-planta-estan-chamuscados)
=>
(assert (bordes-hojas-chamuscados))
)

(defrule pregunta9
(respuesta1 la-planta-tiene-tallos-debilitados)
=>
(assert (planta-tallos-debilitados))
)

(defrule pregunta10
(respuesta1 la-planta-tiene-semillas-o-frutas-marchitas)
=>
(assert (frutas-semillas-marchitas))
)

(defrule pregunta11
(respuesta1 )
=>
(assert (frutas-semillas-marchitas))
)

