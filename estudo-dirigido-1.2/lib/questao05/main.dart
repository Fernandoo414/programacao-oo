class Conta {
  String _numero;
  String _titular;
  double _saldo;

  Conta.bancaria(this._numero, this._titular) : _saldo = 0;

  Conta.vip(this._numero, this._titular, this._saldo);

  void depositar(double v) => _saldo += v;

  void sacar(double v) {
    if (v <= _saldo) _saldo -= v;
  }

  void exibirResumo() {
    print("Conta: $_numero | Titular: $_titular | Saldo: $_saldo");
  }
}