import 'package:flutter/material.dart';
import '../models/produto.dart';

class DetalhesProdutoScreen extends StatelessWidget {
  final Produto produto;

  const DetalhesProdutoScreen({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(produto.nome),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              CircleAvatar(
                radius: 60,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Text(produto.icone, style: const TextStyle(fontSize: 60)),
              ),
              const SizedBox(height: 24),
              Text(
                produto.nome,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Chip(
                label: Text(
                  'Categoria: ${produto.categoria}',
                  style: const TextStyle(fontSize: 16),
                ),
                backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              ),
              const SizedBox(height: 16),
              Text(
                'R\$ ${produto.preco.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}