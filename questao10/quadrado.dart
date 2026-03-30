import 'dart:io';

class Quadrado{
    double lado;
    String caractere;


    Quadrado(this.lado, this.caractere){
        if(lado <= 0){
            throw ArgumentError("O lado do quadrado deve ser maior que 0");
        }
        if(caractere.length > 1 || caractere.trim().isEmpty){
            throw ArgumentError("Nao pode ter mais de 1 caracter e nao pode ser vazia");
        }
    }

    double calcularArea(){
        double area = lado * lado;
        return area;
    }


    double calcularPerimetro(){
        double perimetro = lado * 4;
        return perimetro;
    }


    bool ehIgual(Quadrado quadrado2){
        if(lado == quadrado2.lado && caractere == quadrado2.caractere){
            return true;
        }else{
            return false;
        }
    }


    void desenhar(){

        for(int i = 0; i < lado.toInt(); i++){
            for(int j = 0; j < lado.toInt(); j++){
                stdout.write(caractere);
            }
            print(" Linha $i");
        }
        print("");
    }


    void exibirResumo(){
        print('Lado: $lado');
        print('Area: ${calcularArea()}');
        print('Perimetro ${calcularPerimetro()}');
    }
}