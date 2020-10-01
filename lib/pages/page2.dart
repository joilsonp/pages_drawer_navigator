import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Página 2'),
          backgroundColor: Colors.red[300],
        ),
        body: Container(
            padding: EdgeInsets.only(top: 350),
            child: Center(
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page3(),
                          ));
                    },
                    child: Text('Voltar'),
                  ),
                  RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page3()));
                      },
                      child: Text('Ir para a pagina 3'))
                ],
              ),
            )));
  }
}
