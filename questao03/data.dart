class Data {
    int dia;
    int mes;
    int ano;

    Data(this.dia, this.mes, this.ano){
        if(dia < 1 || dia > 31){
			throw ArgumentError('O dia deve estar entre 1 a 31');
		}
		if(mes < 1 || mes > 12 ){
			throw ArgumentError('O mes deve estar entre 1 a 12 minutos');
		}
		if(ano < 0){
			throw ArgumentError('O ano deve ser maior que 0');
		}
    }


    void exibirData(){
        print('$dia / $mes / $ano');
        print('---------------------');
    }
}
