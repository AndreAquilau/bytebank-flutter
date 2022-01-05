import 'package:flutter/material.dart';
import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';

class FormularioTransferencia extends StatefulWidget {
  FormularioTransferencia({Key? key}) : super(key: key);

  @override
  _FormularioTransferenciaState createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando Transferência'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controller: _controllerConta,
              hint: '0000',
              rotulo: 'Número da conta',
            ),
            Editor(
              controller: _controllerValor,
              rotulo: 'Valor',
              hint: '0.00',
              iconData: Icons.monetization_on,
            ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () {
                final String numero = _controllerConta.text;
                final String valor = _controllerValor.text;

                final Transferencia transferencia =
                Transferencia(double.tryParse(numero) ?? 0.00, numero);
                debugPrint(transferencia.toString());

                Navigator.pop(context, transferencia);
              },
              child: const Text(
                'Confirma',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: const Size(390, 45),
                  primary: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
