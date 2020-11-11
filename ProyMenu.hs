main = do
    funcionMenu

funcionMenu = do 
    putStrLn ("Menu")
    putStrLn ("1.- Fibonacci ")
    putStrLn ("2.- Presentar del 1 al 10 ")
    putStrLn ("3.- Factorial de un numero")
    putStrLn ("4.- Desaparecer numeros")
    putStrLn ("5.- Palindromos")
    putStrLn ("6.- Calculadora ")
    putStrLn ("7.- Salir ")
    entrada <- getLine
    let opcion = read entrada::Int
    {- let opc=read opcion::Int -}
    case opcion of 
        1-> fibonacci
        2 -> numeros
        3 -> factorial
        4 -> desaparecer 10
        5 -> palin
        6 -> calculadora
        7 -> print("Bye")
        _ -> print("Opcion invalida")



--Fibonacci
fibonacci = do
    putStrLn("Indice a obtener");
    indi <- getLine
    let b = indi;
    let nume = [0,1,1,2,3,5,8,13,21,34,55]
    let valor  =  nume !!  read b
    print valor
    funcionMenu
    

--Numeros del 1 al 10 
numeros = do
    let a = [1..10]
    print a

--Factorial de un numero 
factorial = do
    putStrLn("Ingresa un numero")
    num3<-getLine
    let numero3Int = read num3::Int
    print ("El factorial es:")
    let fac1 = product [1..numero3Int]
    print fac1
    funcionMenu

--Desaparecer numeros

desaparecer diez = do
    print [0..diez]
    if diez==0
        then do
        funcionMenu
    else
        desaparecer (diez-1) 

--Palindromo 
palin = do
    putStrLn ("Ingrese una palabra")
    palab<- getLine
    let res = palab == reverse palab

    if do res==True
        then do
            putStrLn ("Si es un palindromo")
            funcionMenu
    else do
        putStrLn ("No es un palindromo")
        funcionMenu

    --Calculadora
calculadora = do
    putStrLn("1.- Sumar")
    putStrLn("2.- Restar")
    putStrLn("3.- Multiplicar")
    putStrLn("4.- Dividir")
    opcion <- getLine
    case opcion of 
        "1" -> suma 
        "2" -> resta
        "3" -> multiplicar
        "4" -> dividir 
    
--Suma 
suma = do
    putStrLn ("Primer numero")
    n1 <- getLine
    putStrLn ("Segundo numero")
    n2 <- getLine
    putStrLn (":" ++ show (read (n1) + read (n2)))
    funcionMenu
--Resta
resta = do
    putStrLn ("Primer numero")
    n1 <- getLine
    putStrLn ("Segundo numero")
    n2 <- getLine
    putStrLn (":" ++ show (read (n1) - read (n2)))
    funcionMenu
--Multiplicar
multiplicar = do
    putStrLn ("Primer numero")
    n1 <- getLine
    putStrLn ("Segundo numero")
    n2 <- getLine
    putStrLn (":" ++ show (read (n1) * read (n2)))
    funcionMenu
--Diviir
dividir = do
    putStrLn ("Primer numero")
    n1 <- getLine
    putStrLn ("Segundo numero")
    n2 <- getLine
    putStrLn (":" ++ show (read (n1) / read (n2)))
    funcionMenu
