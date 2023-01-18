import 'package:flutter/material.dart';

class AbecedarioPage extends StatefulWidget {
  const AbecedarioPage({Key? key}) : super(key: key);

  @override
  State<AbecedarioPage> createState() => _AbecedarioPageState();
}

class _AbecedarioPageState extends State<AbecedarioPage> {
  String letra = "A";
  int numero = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Challenge #1"),
        ),
      ),
      body: _crearBody(),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            letra,
            style: const TextStyle(fontSize: 180, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: restar,
          child: const Icon(Icons.arrow_left),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          onPressed: sumar,
          child: const Icon(Icons.arrow_right),
        ),
      ],
    );
  }

  void sumar() => setState(() {
    letra = retornarSiguienteLetra();
  });

  void restar() => setState(() {
    letra = retornarLetraAnterior();
  });

  String retornarSiguienteLetra()
  {
    if(numero == 90)
    {
      numero = 65;
      return String.fromCharCode(numero);
    }
    numero++;
    return String.fromCharCode(numero);
  }
  String retornarLetraAnterior()
  {
    if(numero == 65)
    {
      numero = 90;
      return String.fromCharCode(numero);
    }
    numero--;
    return String.fromCharCode(numero);
  }
}
