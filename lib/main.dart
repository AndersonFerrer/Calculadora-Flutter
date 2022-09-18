//import 'dart:html';
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, avoid_print, sort_child_properties_last
import 'package:flutter/material.dart';
import 'widgets/botones.dart';

void main() {
  runApp(Calculadora());
}

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  int primerNumero = 0;
  int segundoNumero = 0;
  String historial = '';
  String textDisplay = '';
  String resultado = '';
  String operacion = '';

  void onClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'CE') {
      primerNumero = 0;
      segundoNumero = 0;
      textDisplay = '';
      resultado = '';
    } else if (btnVal == 'C') {
      primerNumero = 0;
      segundoNumero = 0;
      textDisplay = '';
      resultado = '';
      historial = '';
    } else if (btnVal == '+/-') {
      if (textDisplay[0] != '-') {
        resultado = '-$textDisplay';
      } else {
        resultado = textDisplay.substring(1);
      }
    } else if (btnVal == '⌫') {
      resultado = textDisplay.substring(0, textDisplay.length - 1);
    } else if (btnVal == 'X^2') {
      operacion = btnVal;
      if (operacion == 'X^2') {
        operacion = '*';
        primerNumero = int.parse(textDisplay);
        segundoNumero = primerNumero;
        resultado = (primerNumero * segundoNumero).toString();
        historial = primerNumero.toString() +
            operacion.toString() +
            segundoNumero.toString();
      }
    } else if (btnVal == '÷' ||
        btnVal == '+' ||
        btnVal == 'X' ||
        btnVal == '-') {
      primerNumero = int.parse(textDisplay);
      resultado = '';
      operacion = btnVal;
    } else if (btnVal == '=') {
      segundoNumero = int.parse(textDisplay);
      if (operacion == '+') {
        resultado = (primerNumero + segundoNumero).toString();
        historial = primerNumero.toString() +
            operacion.toString() +
            segundoNumero.toString();
      }

      if (operacion == '-') {
        resultado = (primerNumero - segundoNumero).toString();
        historial = primerNumero.toString() +
            operacion.toString() +
            segundoNumero.toString();
      }
      if (operacion == 'X') {
        resultado = (primerNumero * segundoNumero).toString();
        historial = primerNumero.toString() +
            operacion.toString() +
            segundoNumero.toString();
      }
      if (operacion == '÷') {
        var resultado2 = (primerNumero / segundoNumero);
        if (resultado2 % 1 == 0) {
          resultado = (primerNumero / segundoNumero).toStringAsFixed(0);
        } else {
          resultado = (primerNumero / segundoNumero).toString();
        }
        historial = primerNumero.toString() +
            operacion.toString() +
            segundoNumero.toString();
      }
    } else {
      resultado = (textDisplay + btnVal).toString();
    }

    setState(() {
      textDisplay = resultado;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      //theme: ThemeData(primarySwatch: Color.none),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFff1493),
          title: Center(
              child: Text(
            'CALCULADORA BY:',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
        ),
        backgroundColor: Color.fromRGBO(05, 05, 05, 1),
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              child: Image.network(
                  'https://andersonweb.netlify.app/imagenes/GAAAAAAAAAAAAAA.png'),
              margin: EdgeInsets.only(bottom: 145),
              width: 500,
              height: 80,
              color: Color(0xFFff1493),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(historial,
                    style: TextStyle(color: Colors.grey, fontSize: 24)),
              ),
              alignment: Alignment.topRight,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(textDisplay,
                    style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              alignment: Alignment.topRight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Botones(
                  text: 'CE',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: 'C',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: 'X^2',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '÷',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 38,
                  callback: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Botones(
                  text: '9',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '8',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '7',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: 'X',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Botones(
                  text: '6',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '5',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '4',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '-',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 50,
                  callback: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Botones(
                  text: '3',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '2',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '1',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '+',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 42,
                  callback: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Botones(
                  text: '+/-',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 28,
                  callback: onClick,
                ),
                Botones(
                  text: '0',
                  fillColor: 0xFFff1463,
                  textColor: 0xFFffffff,
                  textSize: 24,
                  callback: onClick,
                ),
                Botones(
                  text: '⌫',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 36,
                  callback: onClick,
                ),
                Botones(
                  text: '=',
                  fillColor: 0xFFffffff,
                  textColor: 0xFF000000,
                  textSize: 48,
                  callback: onClick,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
