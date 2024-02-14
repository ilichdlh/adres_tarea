# Adres Test---------------
# Working directory---------------
script.path <-
  rstudioapi::getSourceEditorContext()$path # get actual wd
setwd(dirname(script.path)) # assign as wd.
# Packages and libraries-----------
if(!require("tidyverse")) install.packages("tidyverse")
if(!require("dlookr")) install.packages("dlookr")
if(!require("performance")) install.packages("performance")
if(!require("ISLR")) install.packages("ISLR")
if(!require("sjPlot")) install.packages("sjPlot")
if(!require("likert")) install.packages("likert")
if(!require("lme4")) install.packages("lme4")
if(!require("lmerTest")) install.packages("lmerTest")
if(!require("tidyr")) install.packages("tidyr")
if(!require("dplyr")) install.packages("dplyr")
if(!require("plyr")) install.packages("plyr")
if(!require("fs")) install.packages("fs")
if(!require("readxl")) install.packages("readxl")
if(!require("writexl")) install.packages("writexl")
if(!require("haven")) install.packages("haven")
if (!require ("DataExplorer")) install.packages("DataExplorer")
if (!require ("openxlsx")) install.packages("openxlsx")
if (!require ("ggplot2")) install.packages("ggplot2")
if (!require ("summarytools")) install.packages("summarytools")
if (!require ("stringr")) install.packages("stringr")
if (!require ("janitor")) install.packages("janitor")
if (!require ("broman")) install.packages("broman")
if (!require ("datatable")) install.packages("datatable")
if (!require ("lubridate")) install.packages("lubridate")
if (!require ("ff")) install.packages("ff")
if (!require ("dtplyr")) install.packages("dtplyr")
if (!require ("glue")) install.packages("glue")
if (!require ("dataMaid")) install.packages("dataMaid")
if (!require ("gt")) install.packages("gt")
if (!require ("gtsummary")) install.packages("gtsummary")
library(janitor)
library(summarytools)
library(ggplot2)
library (openxlsx)
library (tidyverse)
library(tidyr)
library(dplyr)
library(plyr)
library(fs)
library(readxl)
library(writexl)
library(haven)
library(DataExplorer)
library(stringr)
library (broman)
library(data.table)
library(lubridate)
library(ff)
library(dtplyr)
library(glue)
library(tidyfast)
library(dataMaid)
library(gtsummary)
library(gt)
library(readxl)
library(flextable)
library(ISLR)
library(sjPlot)
library(likert)
library(lme4)
library(lmerTest)
library(performance)
library(dlookr)

# selecting the file and cleaning names of the variables putting in snake format
db_archivo2 <- read_csv("archivo2.txt")|>
  janitor::clean_names()

# Part 1 and 2  Exploratory analysis & graphs ---------
## Method 1 --------------
db_arch2_summ <- summarytools::dfSummary(db_archivo2)
print(db_arch2_summ, method="browser")

##  Method 2 R markdown with Exploratory analysis & some graphs attached-----

## Method 3-----------------
name_of_variables<- data.frame(colnames(db_archivo2))

name_of_v <- name_of_variables|> dplyr::mutate(maria = paste("table", "(",
  "db_archivo2", "$", name_of_variables$colnames.db_archivo2., ")"))
write_xlsx(name_of_v, "name_of_v.xlsx") # here I am using this to build the table
# I do not like this method but some people do, so here it is.
table (db_archivo2 $ ano)
table (db_archivo2 $ clase)
table (db_archivo2 $ pertenencia_etnica, db_archivo2 $ ano)
table (db_archivo2 $ pertenencia_etnica_agregada)
table (db_archivo2 $ estrato)
table (db_archivo2 $ colegio_caracter)
table (db_archivo2 $ region)
table (db_archivo2 $ region_dane)
table (db_archivo2 $ departamento)
table (db_archivo2 $ cod_dpto)
table (db_archivo2 $ sexo)
table (db_archivo2 $ grupo_decenal_edad)
table (db_archivo2 $ regimen_afiliacion_p6100)
table (db_archivo2 $ departamento_co)
table (db_archivo2 $ quintil_ingreso_percapita)
table (db_archivo2 $ quintil_ingreso_percapita_clase)
table (db_archivo2 $ fex_c)
table (db_archivo2 $ accion_tratar_enfermedad_p8563)
table (db_archivo2 $ accion_tratar_enfermedad_agregada_p8563)
table (db_archivo2 $ no_asistencia_razon_p6153)
table (db_archivo2 $ no_asistencia_agregada_p6153)
table (db_archivo2 $ no_afiliacion_razon_p768)
table (db_archivo2 $ dias_incapacidad_p6134)
table (db_archivo2 $ ocupacion_p6240)
table (db_archivo2 $ ocupacion_posicion_p6435)
table (db_archivo2 $ estado_salud_general_p6127)
table (db_archivo2 $ calidad_atencion_prevencion_p8595)
table (db_archivo2 $ enfermedad_ultimo_mes_p5665)
table (db_archivo2 $ cubrir_costos_atencion_salud_eps_p8556s1)
table (db_archivo2 $ cubrir_costos_atencion_salud_seguro_voluntario_p8556s2)
table (db_archivo2 $ cubrir_costos_atencion_salud_seguro_obligatorio_p8556s4)
table (db_archivo2 $ cubrir_costos_atencion_salud_alcaldia_p8556s5)
table (db_archivo2 $ cubrir_costos_atencion_salud_propios_familiares_p8556s6)
table (db_archivo2 $ cubrir_costos_atencion_salud_otras_personas_p8556s9)
table (db_archivo2 $ cubrir_costos_atencion_salud_no_requiere_p8556s10)
table (db_archivo2 $ percepcion_calidad_entidad_p6181)
table (db_archivo2 $ percepcion_calidad_entidad_factor_p798)
table (db_archivo2 $ percepcion_calidad_prestacion_p8554)
table (db_archivo2 $ percepcion_calidad_prestacion_factor_p801)
table (db_archivo2 $ percepcion_pobreza_p5230)
table (db_archivo2 $ percepcion_suficiencia_ingresos_p9090)
table (db_archivo2 $ quejas_ultimo_ano)
table (db_archivo2 $ tutelas_ultimo_ano)
table (db_archivo2 $ tutelas_ultimo_ano_razon)
table (db_archivo2 $ cronica_diagnostico_p1930)
table (db_archivo2 $ cronica_tratamiento_p1930s1)
table (db_archivo2 $ discapacidad_oir_p1906s1)
table (db_archivo2 $ consulta_prevencion_medico)
table (db_archivo2 $ consulta_prevencion_odontologo)
table (db_archivo2 $ consulta_prevencion_medico_odontologo)
table (db_archivo2 $ discapacidad_hablar_p1906s2)
table (db_archivo2 $ discapacidad_ver_p1906s3)
table (db_archivo2 $ discapacidad_moverse_caminar_p1906s4)
table (db_archivo2 $ discapacidad_usar_manos_p1906s5)
table (db_archivo2 $ discapacidad_entender_p1906s6)
table (db_archivo2 $ discapacidad_comer_vestirse_banarse_solo_p1906s7)
table (db_archivo2 $ discapacidad_relacionarse_p1906s8)
table (db_archivo2 $ dias_cita_consulta_acudio_especialista_p6199)
table (db_archivo2 $ dias_cita_consulta_medico_p6199)
table (db_archivo2 $ dias_cita_consulta_odontologo_p6199)
table (db_archivo2 $ algun_miembro_hogar_no_consumio_ninguna_comida_un_dia_o_mas_p8706)
table (db_archivo2 $ controles_crecimiento_desarrollo_p6161)
table (db_archivo2 $ controles_crecimiento_desarrollo_numero_p6161)
table (db_archivo2 $ alfabeta_p6160)
table (db_archivo2 $ asiste_educacion_p8586)
table (db_archivo2 $ razon_no_estudio_p6218)
table (db_archivo2 $ razon_no_estudio_agregada_p6218)
table (db_archivo2 $ nivel_educativo_actual_p8587)
table (db_archivo2 $ nivel_educativo_alcanzado_p1088)
table (db_archivo2 $ anos_de_educacion)
table (db_archivo2 $ anos_de_educacion_jefe)
table (db_archivo2 $ analfabetismo_ipm)
table (db_archivo2 $ rezago_escolar_ipm)
table (db_archivo2 $ inasistencia_escolar_ipm)
table (db_archivo2 $ inasistencia_escolar_ipm, 
       db_archivo2 $ nivel_educativo_actual_p8587)

## Method 4-------------
db_arch2_a <- db_archivo2 |> dplyr::mutate(f_id = seq(from =
1, to= 504660, by = 1), new_id= paste("ilich","_", f_id))|> dplyr::select(-f_id)

first_way <- dlookr::diagnose_category(db_archivo2) |> flextable()

first_way |>
  save_as_docx(path = "first_way.docx")

second_way <- dlookr::diagnose_numeric(db_archivo2) |> flextable()
second_way |>
  save_as_docx(path = "second_way.docx")
third_way <- dlookr::diagnose_outlier(db_archivo2) |> flextable()
third_way |>
  save_as_docx(path = "third_way.docx")

plot_outlier(db_archivo2)
plot_na_pareto(db_archivo2)
plot_na_intersect(db_archivo2)
f <- diagnose_report(db_archivo2)

## Method 5-------------
SmartEDA::ExpData(data = db_archivo2, type = 1)
SmartEDA::ExpData(data = db_archivo2, type = 2)

## Some other graphs
plot(db_archivo2$ano)

                    
# PART 3------------

# we need to oversimplify and using only a 
# simple definition for quality of life:
#  quality of life does not depend on an external ideal model of life, 
# but on living according to what we value.so, only perception of health 
# and perception about if you have enough money or not.
# enough or more than enough money =1
# not enough money = 0.
# good or very good  health = 1,
# less than good health = 0.

# first applying the transformation to the proposed model of perception of health given
# perception of money.
db_archivo3 <- db_archivo2|> 
  dplyr::mutate( p_money = dplyr::case_when(
    percepcion_suficiencia_ingresos_p9090 == "Alcanza para cubrir gastos mínimos"|
      percepcion_suficiencia_ingresos_p9090 == "Cubre más que gastos mínimos" ~ 1,
    percepcion_suficiencia_ingresos_p9090 == "No alcanza para cubrir gastos mínimos" ~ 0),
    p_healthy= dplyr::case_when(estado_salud_general_p6127 == "1. Muy bueno"|
                                estado_salud_general_p6127 == "2. Bueno"~1,
                              estado_salud_general_p6127 == "3. Regular"|
                                estado_salud_general_p6127 == "4. Malo"~0))
db_archivo5 <- db_archivo3|>dplyr::select(c(p_money, p_healthy))
db_archivo6 <- db_archivo5|> dplyr::mutate(qol= p_healthy*p_money) # here a rough 
# approximation to a quality of life (qol) calculated as the product of health and money
# following the qol there are 269699 (53%) with good quality of life and 234888 (46.5%)with poor qol,
# and we do not know for 73 (0.014%) individuals .
db_archivo7 <- db_archivo3|>dplyr::select(c(p_money, p_healthy,ano))|>
                                            dplyr::mutate(qol= p_healthy*p_money)
table(db_archivo7$qol, db_archivo7$ano)

i<-tbl_summary(db_archivo7, by=qol)|>
  add_p()|>
  add_q()|>
  add_ci()|>
  modify_header(label ~ "**Variable**") |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**QoL**") |>
  modify_caption("**table2. QoL**") |>
  bold_labels()

g<- tbl_summary(db_archivo6, by=qol)|>
  add_p()|>
  add_q()|>
  add_ci()|>
  modify_header(label ~ "**Variable**") |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**QoL**") |>
  modify_caption("**table2. QoL**") |>
  bold_labels()

g |>
  as_flex_table() |>
  save_as_docx(path = "g.docx")

g |>
  as_flex_table() |>
  save_as_image(path = "g.png")

i |> 
  as_flex_table() |>
  save_as_image(path = "i.png")

table(db_archivo6$qol)
prop.table(db_archivo6$qol, margin = NULL)
table(db_archivo3$p_money)
table(db_archivo3$p_healthy)
table(db_archivo3$p_money, db_archivo3$p_healthy)



pv1 <- ggstatsplot::ggbetweenstats(data = db_archivo5,
                            x = p_healthy,
                            y = p_money,
                            type = "np",
                            title =" Non-parametric Test")

pv2 <- ggstatsplot::ggbetweenstats(data = db_archivo5,
                            x = p_healthy,
                            y = p_money,
                            type = "p",
                            title = "Parametric test")
### combining pv1 and pv2 ------------
pv_3 <- ggstatsplot::combine_plots(
  list(pv1, pv2),
  plotgrid.args = list(nrow =1),
  annotation.args = list(
    title = "Comparison between p_healthy and p_money",
    caption ="Source: prueba técnica Adres"
  ))


save_plot(
  filename = "Comparison between p_healthy and p_money.jpg",
  fig = pv_3,
  width = 30,
  height = 20
)

save_plot(
  filename = "p_healthy_vs_p_money.jpg",
  fig = hypoth_zero,
  width = 30,
  height = 20
)

hypoth_zero <- ggstatsplot::ggcorrmat(data = db_archivo5)

save_plot(
  filename = "p_healthy_vs_p_money.jpg",
  fig = hypoth_zero,
  width = 30,
  height = 20
)

db_archivo3|>
  plot_frq(p_money)

e_p <- db_archivo3 |>
  group_by(p_healthy) |>
  plot_frq(p_money) |>
  plot_grid()


save_plot(
  filename = "p_healthy_vs_p_money.jpg",
  fig = e_p,
  width = 30,
  height = 20
)

a_p <- plot_grpfrq(var.cnt = db_archivo3$p_healthy,
            var.grp = db_archivo3$p_money)

save_plot(
  filename = "p_healthy_and_p_money.jpg",
  fig = a_p,
  width = 30,
  height = 20
)


hypothe_a <-
  db_archivo3 |> dplyr::select(p_money, p_healthy) |>
  tbl_summary(by = p_money,
              missing = "no") |>
  add_p() |>
  add_overall() |>
  add_n()|>
  modify_header(label ~ "**Variable**") |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**p_money**") |>
  modify_caption("**table1. salud y dinero**") |>
  bold_labels()


hypothe_a |>
  as_flex_table() |>
  save_as_docx(path = "hypothe_a.docx")

hypothe_a |>
  as_flex_table() |>
  save_as_image(path = "hypothe_a.png")

hypoth_lm_a <-
  lm(p_healthy ~ p_money,
     data =  db_archivo3,
     na.action = na.exclude)
summary(hypoth_lm_a)
predict(hypoth_lm_a)



hist(db_archivo3$p_money, col = "red")
money_like_dens <- density(db_archivo3$p_money, na.rm = TRUE)
plot(money_like_dens)
lines(money_like_dens)
hist(db_archivo3$p_money,
     col = "blue",
     freq = FALSE)

boxplot(p_healthy ~ p_money, data = db_archivo3, range = 0)

plot(p_healthy ~ p_money, data = db_archivo3)

with(db_archivo3, cor(p_healthy, p_money))
with(db_archivo3, table(p_healthy, p_money))

u_h <-
  table(db_archivo3$p_healthy, db_archivo3$p_money)
u_h_total <- addmargins(u_h, margin = 2)
prop.table(u_h)



wilcox.test(db_archivo3$p_healthy)
t.test(p_healthy ~ p_money, data = db_archivo3)
chisq.test(u_h)
aov_hypoth <- aov(p_healthy ~ p_money, data = db_archivo3)
summary(aov_hypoth)
model.tables(aov_hypoth, type = "effects")
model.tables(aov_hypoth, type = "means")
# comparing_hypoth <- TukeyHSD(aov_hypoth)
# plot(comparing_hypoth, las = 1)
mod_hyp <- lm(p_healthy ~ p_money, data = db_archivo3)
coef.hyp <- coef(mod_hyp)
plot(
  p_healthy ~ p_money,
  data = db_archivo3,
  main = "salud dado que dinero",
  col = "red",
  pch = 11
)
abline(coef = coef.hyp)
summary(mod_hyp)
anova(mod_hyp)
predict(mod_hyp, interval = "confidence")
predict(mod_hyp, newdata = , interval = "prediction")