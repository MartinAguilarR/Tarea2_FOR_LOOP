
listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

listaDocumentosfinal <- length(listaDocumentos)

print(listaDocumentosfinal)
print(listaDocumentos)

# Ejercicio 1 (3 ptos)

# Las mp tienen los nombres de las personas a las cuales están asociadas,
# realice una función que cuente cuántos niños hay por cada una, y entregue una estadística
# de cuántos niños hay por mp.




#  (1) Debo generar un condicional, tal que me reconozca el 1er elemento del vector; "mp" o "of"
# (2) A continuación, al generar un filtro, la maquina debe contabilizar el número de nombres dentro del vector
#     ¿2ble If?
# (3) Una vez tenga todo los "mp" identificados y el número de nombres, saco la estadística del total de "Mps y nombres"
#   , como el promedio de "nombres x mp"


contadormp <- 0

for(vectores in listaDocumentos){
  if(vectores[1]=="mp"){
    contadormp <- contadormp + 1
    vectores <- vectores[-1]
    print(paste("Se cuenta con 1 mp de", length(vectores), "niños"))
  }
}

  
print(paste("Se cuenta con una cantidad de mp igual a",contadormp))


# Ejercicio 2 (3 ptos)
# Los oficios están compuestos por el código al cual pertenecen, construya
# una función que almacene los códigos y las temáticas a las que están asociadas.
  
  
contadorof <- 0

for(vectores in listaDocumentos){
  if(vectores[1] == "of"){
    identificador <- vectores[-1]
    print(paste("Se cuenta con los archivos", identificador[-2], "tipo ;", identificador[-1]))
  }
}


# Ejercicio 3(2 ptos)
}
# Construya una función que actúe de juez y retorne aprobada o reprobada
# para los diferentes oficios, y entregue la cantidad que hay de cada una

contadorof <- 0
contadoraprobado <- 0
contadorreprobado <- 0

for (vectores in listaDocumentos){
  if(vectores[1]=="of"){
    contadorof <- contadorof +1
    nuevosvectores <- vectores[-1]
    if(nuevosvectores[2:3]=="ante"||nuevosvectores[2:3]=="meca"||nuevosvectores[2:3]=="arme"){
      contadorreprobado <- contadorreprobado +1
    }else if(nuevosvectores[2:3]=="dape"||nuevosvectores[2:3]=="ampr"){
      contadoraprobado <- contadoraprobado +1
    }
  }
}

print(paste("llegaron",contadorof,"oficios de los cuales:",contadorreprobado,"son reprobados", "y",contadoraprobado,"son aprobados"))








#RESTAR TAREA
rm(list=ls())
