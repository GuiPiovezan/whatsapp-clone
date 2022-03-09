import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/mensagem.model.dart';
import 'package:whatsapp_clone/view/components/card.message.dart';

var mensagens = [
  MensagemModel("", "Fulado de ciclano", "Opa, bão?", DateTime.now(),
      quantidadeNaoLida: 2),
  MensagemModel("", "beltrano", "Opa, bão?", DateTime.now(),
      quantidadeNaoLida: 6),
  MensagemModel("", "Batman", "To aqui cara", DateTime.now(),
      quantidadeNaoLida: 10),
];

class MensagemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.separated(
        separatorBuilder: (_, i) => const Divider(),
        itemBuilder: (_, index) => CardMessage(mensagens[index]),
        itemCount: mensagens.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        elevation: 0,
        fixedColor: Colors.green,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey[500],
        ),
        showSelectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications),
            label: "Status",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_outlined),
            label: "Phone",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
