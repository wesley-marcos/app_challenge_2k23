import 'package:app_challenge_2k23/basic_templates/appColors.dart';
import 'package:app_challenge_2k23/screens/start.dart';
import 'package:app_challenge_2k23/widgets/widgetTextFormFieldCadastrar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/widgetButton.dart';
import '../widgets/widgetPerfil.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: backgroundApp(),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/user.png'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 28, right: 28),
              child: Column(
                children: [
                  textFormFieldPerfil(
                      context, 'Pedro Gabriel', TextInputType.name),
                  const SizedBox(
                    height: 20,
                  ),
                  textFormFieldPerfil(
                      context, 'Garcia Ribeiro Balestra', TextInputType.name),
                  const SizedBox(
                    height: 20,
                  ),
                  textFormFieldPerfil(
                      context, '09999909090', TextInputType.name),
                  const SizedBox(
                    height: 20,
                  ),
                  textFormFieldPerfil(
                      context, 'wqeqweqw@sajkdssa', TextInputType.name),
                  const SizedBox(
                    height: 20,
                  ),
                  textFormFieldPerfil(
                      context, 'Pedro balesyta', TextInputType.name),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
            buttons('Voltar', const StartPage(), context),
          ],
        ),
      ),
    );
  }
}
