import 'package:flutter/material.dart';
import '../styles/AppBar_style.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarStyles.corFundo,
        elevation: 4,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: AppBarStyles.corIcone),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Ícone de menu tocado")),
            );
          },
        ),
        title: Text("Exemplo AppBar", style: AppBarStyles.textoTitulo),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppBarStyles.corIcone),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Busca tocada")),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite, color: AppBarStyles.corIcone),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Favorito tocado")),
              );
            },
          ),
        ],
      ),
      body: const Center(child: Text("Conteúdo da tela")),
    );
  }
}