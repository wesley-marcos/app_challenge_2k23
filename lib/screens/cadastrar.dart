import 'package:app_challenge_2k23/basic_templates/appColors.dart';
import 'package:app_challenge_2k23/widgets/widgetTextFormFieldCadastrar.dart';
import 'package:flutter/material.dart';

import '../widgets/widgetButton.dart';
import 'home.dart';

class Cadastrar extends StatefulWidget {
  const Cadastrar({super.key});

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: backgroundApp()),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 145, left: 28, right: 28),
              child: Column(
                children: [
                  textFormFieldCadastrar(
                    context,
                    'Nome',
                    TextInputType.name,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  textFormFieldCadastrar(
                      context, 'Sobrenome', TextInputType.name),
                  const SizedBox(
                    height: 22,
                  ),
                  textFormFieldCadastrar(
                      context, 'Email', TextInputType.emailAddress),
                  const SizedBox(
                    height: 22,
                  ),
                  textFormFieldCadastrar(
                      context, 'Telefone', TextInputType.number),
                  const SizedBox(
                    height: 22,
                  ),
                  textFormFieldCadastrar(
                      context, 'Nome Social', TextInputType.name),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
            buttons('Confirmar', const Home(), context),
          ],
        ),
      ),
    );
  }
}
