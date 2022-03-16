getwd();
setwd("D:\\BEDU\\Modulo 2\\Proyecto_Economia Naranja")

df<- read.csv("orangeec.csv", header = TRUE)
df
str(df)
summary(df)

#El Producto Interno Bruto per cápita representa la cantidad de dinero que le correspondería a cada habitante del país si se repartiera a todos por igual el PIB generado en un año.

#Que paises tienen GPP.PC PIB mayor o igual a 15.000 USD

na.omit(df[df$GDP.PC>=15000,],select=c(Country,GDP.PC))

#Queremos saber que a que países la economía naranja (industrias creativas) portea el 2% a su PIB ( Aporte a la econimia naranja del PIB)

na.omit(df[df$Creat.Ind...GDP<=2,],select=c(Country,Creat.Ind...GDP))

#solo la penetracion de internet en la poblacion sea mayor al 80% y que la inversion en educacion del PIB sean mayor o igual a 4.5
na.omit(new_Orange <- subset(df,df$Internet.penetration...population>80 & df$Education.invest...GDP>=4.5))

#Quiero verlo desde la varible de la econoima naranja
#solo la penetracion de internet en la poblacion sea mayor al 80% y que la inversion en educacion del PIB sean mayor o igual a 4.5


na.omit(new_Orange <- subset(df,Internet.penetration...population>80 & Education.invest...GDP>=4.5,select=c(Country,Creat.Ind...GDP)))

#Ajustamos Los nombre de las columnas
library(plyr)
rename(df,c(Creat.Ind...GDP="apote_eco_Naranja"))
head(df)
tail(df)
library("dplyr")
glimpse(df)

#EDA 
#Scatter plot
plot(df$Unemployment ~ df$Education.invest...GDP,
     xlab="Inversion educación (%PIB)",
     ylab ="Desempleo",
     main= "Relación inversion en Educación y desempleo")

plot(df$GDP.PC ~ df$Creat.Ind...GDP,
     xlab="Aporte de economía naranja al PIB (%)",
     ylab ="PIB per cápita",
     main= "Relación entre econimía narnaja y PIB per cápita ")


#Hitogramas
library(ggplot)

ggplot()+geom_histogram(data=df, 
                        aes (x=GDP.PC), fill="blue", color="black", 
                        binwidth= 2000 )+
    labs(x="PIB pero cápita", y="Cantidad de paises",
       tittle="PIB per cápita en paises Latam")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())




ggplot()+geom_histogram(data=df, 
                        aes (x=Creat.Ind...GDP),  fill="blue", color="black", 
                        binwidth= 1 )+
  labs(x="Aporte economìa Narajana al PIB (%)", y="Cantidad de paises",
       tittle="Contribucion de Economia naranja al PIB en paises LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+geom_histogram(data=df, 
                        aes (x=Internet.penetration...population), fill="blue", color="black", 
                        binwidth= 5 )+
  scale_x_continuous(breaks = seq(40, max(100), 5))+
  labs(x="Penetración internet (%) de la población", y="Cantidad de paises",
       tittle="Penetración de internet en paises LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
        

#Grafico de Cajas


#Hacemos una clasificacion de los paises segun su PIB per capitá

(mediaPIB<-mean(df$GDP.PC))
library("dplyr")
library("ggplot2")
df <-df %>%
  mutate(Strong_economy = ifelse(GDP.PC < mediaPIB,
                                 "Por debajo promedio pib per capita",
                                 "Sobre-Arriba promedio pib per capita"))



ggplot(df,aes(x=Strong_economy, y=Creat.Ind...GDP, fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de País",y="Aporte de Economía Naranja la PIB",
       title="Aporte Ecomonía Naranja en PIB paises LATAM con alto y bajo PIB per cápita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())



#Hacemos una clasificacion de los paises segun su Penetracion de Internet


ggplot(df,aes(x=Strong_economy, y=Internet.penetration...population, fill=Strong_economy))+
  geom_boxplot(alpha=0.3)+
  #scale_y_continuous(breaks = seq(40, max(100), 10))+
  labs(x="Tipo de País",y="Penetración de Internet(%)",
       title="Penetración de Internet en PIB paises LATAM con alto y bajo PIB per cápita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

#Los paises que estan por debajo del promedio de tienen una penetracion de internet muy dispersa
#y los que estan por encima son mas homogenosy tienen una mayor penetracion y podemos decir que el 75% tiene una penetracion de internet del 70%



 
##Graficas de Dispersion

ggplot(df, aes(Internet.penetration...population,Creat.Ind...GDP))+
  geom_point(aes(color=factor(Strong_economy), size=GDP.Growth..))+
  labs(x="Penetracion Internet",y="Aporte econimia naranja al PIB (%)",
       Title="Penetracion de internet en la poblacion y aporte de la economia naranja al PIB")




my_graph<-ggplot(df, aes(Internet.penetration...population,Creat.Ind...GDP,label=row.names(df))) +
  geom_point(aes(color=factor(Strong_economy), size=GDP.Growth..))+
  labs(x="Penetracion Internet",y="Aporte econimia naranja al PIB (%)",
       Title="Penetracion de internet en la poblacion y aporte de la economia naranja al PIB")
my_graph
install.packages("plotly")
library("plotly")
p = ggplotly(my_graph)
p

#Correlacion de variables.
# si se acerca a 0 no hay correlacion si se acerca a 1 es correlacion es positiva y si acerca a -1 tienen una correlacion negativa



View(df)
pairs(df[,2:6])
newdata<-Subset(df,select(5,6,10,11,12,1))

pairs(df[,5:10])
#Compotamientos interensante
#Inflacion - aporte de la Ecomonia Naranja al PIB (entre menos inflacion mayor aporte)
#Desmpleo - aporte de la Ecomonia Naranja al PIB (entre menos desempleo mayor aporte)
#Penetracion de Internet - aporte de la Ecomonia Naranja al PIB (entre mayor desempleo mayor aporte)
#Desempleo - Poblacion por debajo de la linea de pobreza ( entre mayor desempleo mayor Poblacion por debajo de la linea de pobreza )


pairs(df[,2:13])
cor(df[,2:13])


#Como tenemos NA corregimos
cor(df[,5:10],use = "complete.obs")


# Ajustando datos para mejorar visualizaciones eficientes

df <- df %>% mutate(Crecimiento_GDP = ifelse(GDP.Growth.. >= 2.5, "2.5% ó más","Menos 2.5%"))

df <- df %>% mutate(Anaranjados=ifelse(Creat.Ind...GDP >= 2.5, "Mas anaranjados", "Menos anaranjados"))
#Para ver ranking, pedimos un orden en sentido descendente con arrange y desc 
df %>% arrange(desc(Creat.Ind...GDP))

#Buscando paises con nombres especificos con %in% 
library("dplyr")
TopNaranjas <- df %>% filter(Country %in% c("Mexico", "Panama", "Argentina", "Colombia", "Brazil","Paraguay"))

TopNaranjas

TopNaranjas %>% arrange(desc(Creat.Ind...GDP))
