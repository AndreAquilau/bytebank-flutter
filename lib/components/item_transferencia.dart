import 'package:flutter/material.dart';
import 'package:bytebank/models/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  Transferencia _transferencia;

  ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(this._transferencia.valor.toString()),
        subtitle: Text(this._transferencia.numero.toString()),
        iconColor: Colors.blueGrey,
      ),
    );
  }
}
