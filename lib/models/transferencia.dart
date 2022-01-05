class Transferencia {
  final String numero;
  final double valor;

  Transferencia(this.valor, this.numero);

  @override
  String toString() {
    // TODO: implement toString
    return 'Transferencia{valor: $valor, numero: $numero}';
  }
}
