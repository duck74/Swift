//: Juego de Memoria

for i in 0...100 {
    //print(i)
    switch (true){
    case (30 <= i && i <= 40):
        print ("\(i) Viva Swift!!!")
    case (i % 5 == 0):
        print ("\(i) Bingo")
    case (i % 2 == 0):
        print ("\(i) Par")
    case (i % 2 == 1):
        print ("\(i) Impar")
    default:
        break
    }
}

for i in 0...100 {
    
    if i % 5 == 0{
        print("#\(i)\tBingo!!!")
        
    }
    if i % 2 == 0{
        print("#\(i)\tPar!!!")
        
    }else{
        print("#\(i)\timpar!!!")
        
        
        
    }
    
    if i >= 30 && i <= 40{
        print("#\(i)\tVivaSwift!!!")
        
        
    }
    
}

