library(agricolae)


# DCA ---------------------------------------------------------------------
ds <- agricolae::AMMI
#Definir los niveles de la dosis de fertilización
dosis <- c(0, 50, 100)

# Número de repeticiones
repeticiones <- 5

# Generar el diseño completamente al azar
dca <- design.crd(trt = dosis,r = repeticiones,seed = 123)

# Mostrar el diseño generado
print(dca$book)

#visualizar la estructura del diseño
dca$book

# DBCA --------------------------------------------------------------------
# Definir los factores
fertilizacion <- c(0, 50, 100)  # Dosis de fertilización nitrogenada (kg/ha)
cultivares <- c("Peruanita", "Canchan")  # Cultivares de papa

# Crear una combinación de todos los tratamientos
tratamientos <- expand.grid(Fertilizacion = fertilizacion, Cultivar = cultivares)

# Definir el número de bloques (repeticiones)
repeticiones <- 4

# Crear el diseño en bloques completamente al azar (DBCA)
diseño_dbca <- design.ab(rcbd, treatments=list(fertilizacion, cultivares), r=repeticiones, serie=2)

# Mostrar el diseño experimental
print(diseño_dbca$book)

# Graficar el diseño experimental
plot(diseño_dbca)

