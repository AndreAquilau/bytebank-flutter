import 'package:flutter/material.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/formulario_transferencia.dart';
import 'package:bytebank/components/item_transferencia.dart';

class ListaTransferencias extends StatefulWidget {
  List<Transferencia> _tranferencias = [];

  ListaTransferencias({Key? key}) : super(key: key);

  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Transferências'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
        onPressed: () {
          Future future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((value) {
            if (value == null) {
              return;
            }

            final Transferencia transferencia = value as Transferencia;

            debugPrint('Future');
            debugPrint(value.toString());
            setState(() {
              widget._tranferencias.add(transferencia);
            });
          });
        },
      ),
      body: ListView.builder(
        itemCount: widget._tranferencias.length,
        itemBuilder: (context, index) {
          Transferencia transferencia = widget._tranferencias[index];
          return ItemTransferencia(
            Transferencia(transferencia.valor, transferencia.numero),
          );
        },
      ),
    );
  }
}
