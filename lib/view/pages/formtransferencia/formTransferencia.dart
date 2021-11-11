import 'package:appteste/controller/transferencia/Transferencia.dart';
import 'package:appteste/view_Controller/createTransf/createTrans.dart';
import 'package:appteste/view_Controller/editform/editform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controllerCampoNumerodaConta =
      TextEditingController();
  final TextEditingController _controllerCampoValor = TextEditingController();


  final _rotuloCampoValor = 'Valor';
  final _dicaCampoValor = '0.00';

  final _rotuloCampoNumeroConta = 'Número da conta';
  final _dicaCampoNumeroConta = '0000';
  final  _textoBotaoConfirmar = 'Confirmar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Editor(
              controlador: _controllerCampoNumerodaConta,
              rotulo: _rotuloCampoNumeroConta,
              dica: _dicaCampoNumeroConta,
              icone: Icons.confirmation_num_outlined),
          Editor(
              controlador: _controllerCampoValor,
              rotulo: _rotuloCampoValor,
              dica: _dicaCampoValor,
              icone: Icons.monetization_on),
          ElevatedButton(
            child: Text(_textoBotaoConfirmar),
            onPressed: () => CriaTransferencia(context),
          )
        ],
      ),),
    );
  }
}
