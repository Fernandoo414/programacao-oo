class Musica {
    String titulo;
    String artista;
    int duracaoSegundos;

    Musica(this.titulo, this.artista, this.duracaoSegundos){
        if(titulo.trim().isEmpty){
            throw ArgumentError("O titulo da musica nao pode ser vazio");
        }
        if(artista.trim().isEmpty){
            throw ArgumentError("O nome do artista nao pode ser vazio");
        }
        if(duracaoSegundos <= 0){
            throw ArgumentError("A duração em segundos tem que ser maior que 0");
        }
    }
}

class playlist{
    String nome;
    Musica musica1;
    Musica musica2;
    Musica musica3;

    playlist(this.nome, this.musica1, this.musica2, this.musica3){
        if(nome.trim().isEmpty){
            throw ArgumentError("O nome não pode ser vazio");
        }
    }

    int calcularDuracaoTotal(){
        int total = musica1.duracaoSegundos + musica2.duracaoSegundos + musica3.duracaoSegundos;
        print(total);
        return total;
    }

    void tocarPlaylist(){
        print("Tocando playlist...");
        print("$musica1");
        print("Na sequência");
        print("$musica2");
        print("$musica3");

    }

    void exibirPlaylist(){
        print("PlayList: $nome");
        print("${musica1.titulo} - ${musica1.artista}");
        print("Segundos de musica ${musica1.duracaoSegundos}\n");
        print("${musica2.titulo} - ${musica2.artista}");
        print("Segundos de musica ${musica2.duracaoSegundos}\n");
        print("${musica2.titulo} - ${musica3.artista}");
        print("Segundos de musica ${musica3.duracaoSegundos}\n");
       }
}
