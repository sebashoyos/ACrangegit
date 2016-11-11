#Funcion para calcular el rango del A320-200

ACrange <- function(vcruise,actualweight,g=9.81,SFC=0.000016,D=110000,Win=78000,Wf=42500){
       range = ((vcruise*0.5144)/g)*(1/SFC)*((actualweight*g*1000)/D)*log(Win/Wf)
       return(paste(as.character(round(range/1000,digits=2 )), "KM", sep=" "))
}
#Introducir el vcruise en KNOTS (desde 130 hasta 300) y el peso en TONS (desde 42.6 hasta 78)

# ACrange(300,78)
