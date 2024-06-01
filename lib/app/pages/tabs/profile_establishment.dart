import 'package:flutter/material.dart';

import 'package:ijato/app/widgets/logo.dart';

class ProfileEstablishment extends StatelessWidget {
  const ProfileEstablishment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil da Empresa"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(color: Color(0xffE4E4E4)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoImage(),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Alterar Foto do Perfil",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Nome da Empresa"),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Proprietário"),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "CPF/CNPJ"),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Telefone"),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const Text(
                  "Alteração de Senha",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Senha Atual"),
                  obscureText: true,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Nova Senha"),
                  obscureText: true,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Confirmação da Nova Senha"),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para o botão "Cancelar"
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.red, // Fonte preta
                        elevation: 7, // Borda sombreada
                      ),
                      child: const Text("Cancelar"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para o botão "Confirmar"
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, // Fonte preta
                        backgroundColor: Colors.blue,
                        elevation: 7, // Borda sombreada
                      ),
                      child: const Text("Confirmar"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
