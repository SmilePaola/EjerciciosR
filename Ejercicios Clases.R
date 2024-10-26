---EJERCICIO 1---
  
  numeros <- numeric(10)
  for (i in 1:10) {
    numeros[i] <- as.numeric(readline(prompt = paste("Ingrese el nUmero", i, ": ")))
  }
  
  for (num in numeros) {
    if (num > 0) {
      cat(num, "es positivo\n")
    } else if (num < 0) {
      cat(num, "es negativo\n")
    } else {
      cat(num, "es cero\n")
    }
  }
  
  
---EJERCICIO 2---
    
  set.seed(Sys.time())  
  numeros_aleatorios <- sample(1:1000, 100) 
  clasificacion <- vector("character", length(numeros_aleatorios))
  for (i in 1:length(numeros_aleatorios)) {
    if (numeros_aleatorios[i] %% 2 == 0) {
      clasificacion[i] <- "Par"
    } else {
      clasificacion[i] <- "Impar"
    }
  }
    resultados <- data.frame(Números = numeros_aleatorios, Clasificación = clasificacion)
    print(resultados)
    pares <- sum(clasificacion == "Par")
    impares <- sum(clasificacion == "Impar")
    
  cat("Cantidad de nUmeros pares:", pares, "\n")
  cat("Cantidad de nUmeros impares:", impares, "\n")
  
  
  
  
    
---EJERCICIO 3---
    
    n <- 10
    suma <- n * (n + 1) / 2
    print(suma)
    
    --VERSION 2---
      
n <- 10
suma <- 0
for (i in 1:n) {
  suma <- suma + i
  }
print(suma)


---EJERCICIO 4---
  
n <- 20
secuencia <- numeric(n)
secuencia[1] <- 0
secuencia[2] <- 1

i <- 3
while (i <= n) {
  secuencia[i] <- secuencia[i - 1] + secuencia[i - 2]
  i <- i + 1
}
print(secuencia)

  
---EJERCICIO 5---
  
num = as.integer(readline(prompt="Ingrese Numero: "))
factorial = 1
if(num < 0) {
  print("es un numero negativo")
} else if(num == 0) {
  print("el factorial d 0 es 1")
} else {
  for(i in 1:num) {
    factorial = factorial * i
  }
  print(paste("EL FACTORIAL DEL:", num ,"ES",factorial))
}


---EJERCICIO 6---
  
set.seed(Sys.time())
numero_secreto <- sample(1:100, 1)
intentos <- 0
adivinado <- FALSE

cat("Adivina el numero entre 1 y 100.\n")

while (adivinado == FALSE) {
  cat("Ingresa tu numero: ")
  intento <- as.numeric(readLines(con = stdin(), n = 1))
  intentos <- intentos + 1
  
  if (is.na(intento)) {
    cat("Por favor, ingresa un numero valido.\n")
  } else if (intento < 1 || intento > 100) {
    cat("El numero debe estar entre 1 y 100. Intenta de nuevo.\n")
  } else if (intento < numero_secreto) {
    cat("El numero ingresado es menor que el numero secreto.\n")
  } else if (intento > numero_secreto) {
    cat("El numero ingresado es mayor que el numero secreto.\n")
  } else {
    cat("¡Felicidades! Adivinaste el numero en", intentos, "intentos.\n")
    adivinado <- TRUE
  }
}

  
---EJERCICIO 7---

contraseña_correcta <- "anyi123"
intentos <- 0
max_intentos <- 3

while (intentos < max_intentos) {
  contraseña_ingresada <- readline(prompt = "Ingrese la contraseña: ")
  
  if (contraseña_ingresada == contraseña_correcta) {
    cat("Acceso concedido.\n")
    break
  } else {
    intentos <- intentos + 1
    cat("Contraseña incorrecta. Intento", intentos, "de", max_intentos, ".\n")
  }
  if (intentos == max_intentos) {
    cat("Número máximo de intentos alcanzado. Usuario bloqueado.\n")
  }
}
  
---EJERCICIO 8---
  
numero <- as.integer(readline(prompt = "Ingrese un numero entero: "))
suma <- 0

while (numero > 0) {
  suma <- suma + (numero %% 10)
  numero <- numero %/% 10
}

cat("La suma de los dígitos es:", suma, "\n")
  
---EJERCICIO 9---

filas <- 10
for (i in 1:filas) {
  cat(rep(" ", filas - i), sep = "") 
  cat(rep("*", 2 * i - 1), sep = "")    
  cat("\n")                             
}
  
---EJERCICIO 10---
  
for (num in 1:100) {
  es_primo <- TRUE
  
  if (num < 2) {
    es_primo <- FALSE
  } else {
    for (i in 2:sqrt(num)) {
      if (num %% i == 0) {
        es_primo <- FALSE
        break
      }
    }
  }
  
  if (es_primo) {
    cat(num, "es primo\n")
  } else {
    cat(num, "no es primo\n")
  }
}
