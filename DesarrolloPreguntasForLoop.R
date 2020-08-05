#TAREA N°2 - FOR LOOP

  # Dada la siguiente lista:


listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

largodocs<- length(listaDocumentos)

print(listaDocumentosfinal)
print(listaDocumentos)

# EJERCICIO 1 

 # Las mp tienen los nombres de las personas a las cuales están asociadas,
  # realice una función que cuente cuántos niños hay por cada una, y entregue una estadística
   # de cuántos niños hay por mp.

#PROCEDIMIENTO    

    #(1) Generar un loop, tal que reconozca al 1er elemento del vector; "mp" o "of".
      # (2) A continuación, al generar un filtro, la maquina debe contabilizar el número de nombres dentro del vector.
        # (3) Una vez tenga todo los "mp" identificados y el número de nombres, saco la estadística del total de "Mps y nombres",
           # como el promedio de "nombres x mp".
              # (4) Arrojar mensaje.


contadormp <- 0

for(mp in listaDocumentos){
  if(mp[1] == "mp"){
    contadormp <- contadormp + 1
    identificador <- mp[-1]
    print(paste("Se cuenta con 1 mp de", length(identificador), "niñx(s)"))
}else{
  next()
  }
}

#RESULTADO ESTADÍSTICO  

print(paste("Se cuenta con una cantidad de",contadormp, "archivos mp"))




# EJERCICIO 2

  # Los oficios están compuestos por el código al cual pertenecen, construya
    # una función que almacene los códigos y las temáticas a las que están asociadas.
  

#PROCEDIMIENTO
    #(1) Generar un loop, tal que reconozca al 1er elemento del vector; "mp" o "of".
      # (2) Una vez identifique el archivo tipo "of",debe identificar su contenido.
        # (3) Arrojar mensaje.



contadorof <- 0

for(of in listaDocumentos){
  if(of[1] == "of"){
    identificador <- of[-1]
    print(paste("Se cuenta con los archivos", identificador[-2], "tipo ;", identificador[-1]))
  }else{
    next()
  }
}





# Ejercicio 3

# Construya una función que actúe de juez y retorne aprobada o reprobada
# para los diferentes oficios, y entregue la cantidad que hay de cada una



# RESOLUCIÖN
  # (1) Debo generar un loop que identifique los valores "Of" de la lista; usaremos condicional if.
    # (2) Una vez se identifica el documento, se debe aplica otro filtro if, en pro de categorizar 
      #    el tipo de documentos aprobado y reprobado.
        # (3) El juez-bot aplicará su objetividad, rechazando el documento, si este posee antecedentes y medidas cautelares;
        #  Aprobará si este sólo posee datos personales y ampliación medidas de protección,
        #   en sentido contrario, el Juez-bot reprobará el documento.

contarof <- 0
contarReprob <- 0
contarAprob <- 0


for(Documento in listaDocumentos){
  if(Documento[1] == "of"){
    contarof <- contarof + 1
    identificador <- Documento[-1]
    if(identificador[2:3] == "ante" || identificador[2:3] == "meca" || identificador[2:3] == "ampr"){
      contarReprob <- contarReprob + 1
    }else if(identificador[2:3] == "dape" || identificador[2:3] == "arme"){
      contarAprob <- contarAprob + 1
    }
  }
}
print(paste("Del total de", contarof, "documentos;", "Se Aprueban", contarAprob,";","y se Reprueban", contarReprob))



#RESTAR TAREA
rm(list=ls())
