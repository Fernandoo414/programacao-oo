class Relogio{
	int hora;
	int minuto;
	int segundo;

	Relogio(this.hora, this.minuto, this.segundo){
		if(hora < 0 || hora > 23){
			throw ArgumentError('A hora deve estar entre 0 a 23 horas');
		}
		if(minuto < 0 || minuto > 59 ){
			throw ArgumentError('Os minutos devem estar entre 0 a 59 minutos');
		}
		if(segundo < 0 || segundo > 59){
			throw ArgumentError('Os segundos devem estar entre 0 a 59 segundos');
		}
	}



	void exibirHorario(){
		print(' HH: $hora MM: $minuto SS: $segundo');
		print('--------------------------');
	}
}