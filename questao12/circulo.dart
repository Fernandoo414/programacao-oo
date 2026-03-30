class Circulo {
    double raio;
    String cor;
    static const pi = 3.14;

    Circulo(this.raio, this.cor){
        if(raio <= 0){
            throw ArgumentError("O raio tem que ser maior que 0");
        }
        if(cor.trim().isEmpty){
            throw ArgumentError("A cor nao pode ser vazia");
        }
    }

    double calcularArea(){
        double area = pi * (raio * raio);
        return area;
    }

    double calcularPerimetro(){
        double perimetro = 2 * pi * raio;
        return perimetro;
    }

    void exibirResumo(){
        print("O raio eh: $raio");
        print("A cor eh: $cor");
        print("A area do circulo eh ${calcularArea()}");
        print("O perimetro do circulo eh ${calcularPerimetro()}");
        print("");
    }
}
