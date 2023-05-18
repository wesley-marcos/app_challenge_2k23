import 'package:app_challenge_2k23/basic_templates/appColors.dart';
import 'package:app_challenge_2k23/screens/cadastrar.dart';
import 'package:app_challenge_2k23/screens/start.dart';
import 'package:app_challenge_2k23/widgets/widgetButton.dart';
import 'package:flutter/material.dart';

import '../widgets/widgetLogin.dart';
import '../widgets/widgetLoginSenha.dart';
import '../widgets/widgetTextFormFieldCadastrar.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _HomeState();
}

class _HomeState extends State<Login> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: backgroundApp(),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250, left: 28, right: 28),
              child: Column(
                children: [
                  textFormFieldLogin(
                      context, 'Email', TextInputType.emailAddress),
                  const SizedBox(
                    height: 22,
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      textSelectionTheme: const TextSelectionThemeData(
                        cursorColor: Colors.black,
                        selectionColor: Color(0xFF9DCE59),
                        selectionHandleColor: Color(0xFF9DCE59),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.6), // Cor da sombra
                            spreadRadius: 3, // Alargamento da sombra
                            blurRadius: 7, // Desfoque da sombra
                            offset: const Offset(3,
                                4), // Deslocamento da sombra (horizontal, vertical)
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: _obscureText
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                              color: Colors.grey,
                            ),
                            //contentPadding: EdgeInsets.symmetric(horizontal: 30),
                            border: InputBorder.none,
                            labelText: 'Senha',
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.7)),
                            //suffixIcon: Icon(Icons.person),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            buttons('Confirmar', const StartPage(), context),
          ],
        ),
      ),
    );
  }
}
