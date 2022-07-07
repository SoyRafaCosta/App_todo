import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List clubes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Clubes do Brasil'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            final informacao = await Navigator.pushNamed(context, '/listagem');
            informacao;
            setState(() {
              if (informacao != null) {
                clubes.add(informacao);
              }
            });
          },
          label: const Text('Novo Clube'),
          //child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: clubes.length,
          itemBuilder: (context, index) => Card(
              color: Colors.black,
              child: ListTile(
                title: Text(
                  '${index + 1} - ${clubes[index]}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )),
        ));
  }
}
