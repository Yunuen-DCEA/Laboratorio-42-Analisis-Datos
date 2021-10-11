###################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Yunuén Hernández Álvarez (UAEH)
#V9
# LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
# editar con temas de ggplot2



#instalando paquete con los datos
#install.packages("gapminder")
#install.packages("ggplot2")


# cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)


# cargando datos a entorno
data("gapminder")


# filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]


# haciendo grafica de puntos
p1 <- ggplot(data = gapminder2007,
             mapping = aes(x = gdpPercap,
                           y = lifeExp,
                           color = continent)) +
  geom_point()


#ver p1
p1


# temas básicos
p1 + theme_bw()
p1 + theme_minimal()


# mas temas
install.packages('ggthemes')
library(ggthemes)


# temas y colores
p1 + theme_economist() + scale_color_economist()
p1 + theme_excel_new() + scale_color_excel_new()
p1 + theme_calc() + scale_color_calc()
p1 + theme_excel() + scale_color_excel()
p1 + theme_few() + scale_color_few()
p1 + theme_fivethirtyeight() + scale_color_fivethirtyeight()
p1 + theme_gdocs() + scale_color_gdocs()
p1 + theme_hc() + scale_color_hc()
p1 + theme_pander() + scale_color_pander()
p1 + theme_solarized() + scale_color_solarized()
p1 + theme_stata() + scale_color_stata()
p1 + theme_wsj() + scale_color_wsj()


