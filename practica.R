# Librerías necesarias
library(dplyr)
library(ggplot2)
library(agricolae)  # Para ANOVA y Tukey

# =============================
# LIBRO DE CAMPO - Diseño experimental
# =============================
tratamientos <- c("Testigo", "ProtecSea", "Barrera", "Timorex Gold", "Vacun Q Pro")
repeticiones <- 5

# Crear dataframe vacío para ingresar datos de inhibición
campo_data <- data.frame(
  Tratamiento = rep(tratamientos, each = repeticiones),
  Crecimiento = NA  # Ingresar aquí los datos reales de % inhibición
)

# Resumen del diseño experimental
summary_design <- campo_data %>%
  group_by(Tratamiento) %>%
  summarise(Repeticiones = n())
print("Resumen del diseño experimental (DCA in vitro):")
print(summary_design)
str(campo_data)

# =============================
# DATOS REALES DE EJEMPLO
# =============================
# Puedes reemplazar estos valores por los exactos de tu PDF
campo_data$Crecimiento <- c(
  0,0,0,0,0,          # Testigo
  65,64,66,63,65,     # ProtecSea
  100,100,100,100,100,# Barrera
  100,100,100,100,100,# Timorex Gold
  100,100,100,100,100 # Vacun Q Pro
)

