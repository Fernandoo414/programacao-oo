class Personagem {
      String nome;
      int vida;
      int ataque;

      Personagem(this.nome, this.vida, this.ataque){
            if(nome.trim().isEmpty){
                  throw ArgumentError("O nome nao pode ser vazio");
            }
            if(vida <= 0){
                  throw ArgumentError("a vida tem que ser maior que 0");
            }
            if(ataque <= 0){
                  throw ArgumentError("O ataque deve ser maior que 0");
            }
      }

      bool estaVivo(){
            if(vida <= 0){
                  return false;
            }else{
                  return true;
            }
      }

      void atacar(Personagem inimigo){
            if(!estaVivo()){
                  return;
            }

            inimigo.vida -= ataque;

            if(inimigo.vida < 0){
                  inimigo.vida = 0; 
            }
      }

      void exibirStatus(){
            print("Nome do personagem: $nome");
            print("Vida: $vida");
            print("Ataque: $ataque");
      }
}