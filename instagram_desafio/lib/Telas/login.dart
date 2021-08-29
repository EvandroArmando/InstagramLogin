import 'dart:developer';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 16),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            SizedBox(
              height: 180,
            ),
            Container(
                child: Center(
              child: Text(
                "Instagram",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            SizedBox(height: 40),
            campoDeEntranda(
                "Número de telemóvel, nome de utilizador o..", Icons.person),
            SizedBox(
              height: 10,
            ),
            campoDeEntranda("Palavra-passe", Icons.security_sharp),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Esqueceste-te da palavra-passe?",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 16,
              child: ElevatedButton(
                  onPressed: () {}, child: Text("Iniciar sessão")),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Não tens uma conta?",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width:5
                ),
                Text(
                  "Regista-te?",
                  style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container campoDeEntranda(String texto, IconData icone) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: new InputDecoration(
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)),
            hintText: texto,
            hintStyle: TextStyle(color: Colors.white),
            suffixIcon: Icon(
              icone,
              color: Colors.white,
            ),
          ),
        ));
  }
}
