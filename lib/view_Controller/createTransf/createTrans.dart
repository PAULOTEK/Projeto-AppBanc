import 'package:appteste/controller/transferencia/Transferencia.dart';
import 'package:flutter/cupertino.dart';

final TextEditingController _controllerCampoNumerodaConta =
    TextEditingController();
final TextEditingController _controllerCampoValor = TextEditingController();

void CriaTransferencia(BuildContext context) {
  final int? numeroConta = int.tryParse(_controllerCampoNumerodaConta.text);
  final double? valor = double.tryParse(_controllerCampoValor.text);
  if (numeroConta != null && valor != null) {
    final transferenciaCriada = Transferencia(valor, numeroConta);
    debugPrint('Criando transferência');
    debugPrint('$transferenciaCriada');
    Navigator.pop(context, transferenciaCriada);
  }
}
