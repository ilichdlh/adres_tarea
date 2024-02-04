# adres_tarea
 task for adres
# Para ejecutar la soluciones generales: 
Buscar el R script se llama p_adres y tiene la solución a las partes 1, 2 y 3 del reto. Para correrlo debe estar en la misma carpeta y nivel que la base de datos.

# Explicación de Contenido.
Una solución alternativa a los puntos 1 y 2 se encuentra en el archivo en rMarkdown .rmd y se llama explor_archivo2.Rmd
El archivo impreso de explor_archivo2.Rmd se llama explor_archivo2.html
El archivo Data Frame Summary_names_modified.webarchive es el archivo con un resumen gráfico y de frecuencias y presencia de datos.
El archivo DataDiagnosis_Report.pdf es una respuesta alternativa a los puntos 1 y 2
El archivo first_hypothesis es una respuesta alternativa a puntos a 1 y 2 con un detallado por niveles.
Como se construyeron dos variables para el modelo solicitado en la parte 3  únicamente partiendo de que la definición de calidad de vida:
La calidad de vida es fundamentalmente salud física y un factor clave para disfrutar el máximo de esa salud es el dinero.
Como la calidad de vida no depende de un modelo de vida ideal externo, sino de vivir en función de aquello que verdaderamente valoramos/amamos.
Calidad de vida (qol) = percepción de salud * percepción de suficiencia de dinero.
Las percepciones ya interiorizan y ponderan lo que es importante para cada individuo.
percepcion_suficiencia_ingresos_p9090 == "Alcanza para cubrir gastos mínimos"|
 percepcion_suficiencia_ingresos_p9090 == "Cubre más que gastos mínimos" ~ 1,
 percepcion_suficiencia_ingresos_p9090 == "No alcanza para cubrir gastos mínimos" ~ 0),
    p_healthy= dplyr::case_when(estado_salud_general_p6127 == "1. Muy bueno"|
                                estado_salud_general_p6127 == "2. Bueno"~1,
                              estado_salud_general_p6127 == "3. Regular"|
                                estado_salud_general_p6127 == "4. Malo"~0
La tabla 1 en el  archivo hypothe_a muesta la relación entre percepción de salud y percepción de suficiencia de dinero, y tiene  p<0.001
Ergo, significancia estadística entre las dos variables.
p_healthy_and_p_money.jpg y p_healthy_vs_p_money.jpg muestran las relaciones gráficas entre las dos variables agregadas.
Los archivos second_way.docx y third_way.docx es sólo para las variables que estaban expresadas de forma cuantitativa en el archivo original y revisa frecuencias, medias y outliers.
El archivo g.docx es la calidad de vida y su relación con p_healthy y p_money, como es el producto de los dos es autoevidente la endogeneidad y autoreferencia de los datos.
El archivo requirements.txt contiene la paquetería necesaria.
