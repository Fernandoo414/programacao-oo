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
        return total;
    }

    tocarPlaylist(){
        
    }

    void exibirPlaylist(){
        print("PlayList: $nome");
        print("Titulo: ${musica1.titulo}");
        print("Artista: ${musica1.artista}");
        print("Segundos de musica ${musica1.duracaoSegundos}");
        print("");
        print("Titulo: ${musica2.titulo}");
        print("Artista: ${musica2.artista}");
        print("Segundos de musica ${musica2.duracaoSegundos}");
        print("");
        print("Titulo: ${musica3.titulo}");
        print("Artista: ${musica3.artista}");
        print("Segundos de musica ${musica3.duracaoSegundos}");
        print("");
       }
}
