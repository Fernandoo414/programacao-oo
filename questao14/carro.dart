class Motor{    
    int potencia;
    String tipo;


    Motor(this.potencia, this.tipo){
        if(potencia <= 0){
            throw ArgumentError("A potencia eh igaul ou mento que 0");
        }
        if(tipo.trim().isEmpty){
            throw ArgumentError("O tipo nao pode ser vazioo");
        }
    }
}

class Carro {
    String modelo;
    Motor motor;

    Carro(this.modelo, this.motor){
        if (modelo.trim().isEmpty) {
            throw ArgumentError("o modelo nao pode ser vaizio");
        }
    }

    exibirMotor(){

    }


    exibirCarro(){
        
    }

}