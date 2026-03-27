
class Lampada {
    bool ligada = false;
    int quantidadeLigacoes = 0;
    bool queimada = false;

    
    void ligar(){
        if(!queimada){
            quantidadeLigacoes++;
            ligada = true;

            if(quantidadeLigacoes > 5){
                queimada = true;
                ligada = false;
            }
        }
    }

    void desligar(){
        ligada = false;
    }

    void exibirEstado(){
        
        if(queimada){
            print('A lampada esta queimada');
        } else if(ligada){
            print('A lampada esta ligada');
        }else{
            print('A lampada esta desligada');
        }
        print(quantidadeLigacoes);
    }  
    
}