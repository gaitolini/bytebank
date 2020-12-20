import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListaTransferecias(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    )));

class ListaTransferecias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferecia(1000, 1010)),
        ItemTransferencia(Transferecia(1500, 1012)),
        ItemTransferencia(Transferecia(1200, 1011))
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferecia _transferecia;

  const ItemTransferencia(this._transferecia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transferecia.valor.toString()),
      subtitle: Text(_transferecia.numeroConta.toString()),
    ));
  }
}

class Transferecia {
  final double valor;
  final int numeroConta;

  const Transferecia(this.valor, this.numeroConta);
}
