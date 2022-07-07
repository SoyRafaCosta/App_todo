import 'package:flutter/material.dart';

class Listagem extends StatefulWidget {
  const Listagem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListagemState();
}

class _ListagemState extends State<Listagem> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController formcontroller = TextEditingController();

  final formKey = '';
  final List<String> clubes = [];
  String texto = '';

  @override
  Widget build(BuildContext context) {
    void voltar() {
      Navigator.pop(context, texto);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Clubes cadastrados'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.add_moderator),
                    hintText: 'Nome do Clube',
                    labelText: 'Clube',
                  ),
                  controller: formcontroller,
                  validator: (value) {
                    final newvalue = value!.trim();
                    if (newvalue.isEmpty) {
                      return 'Nome obrigatório';
                    }
                    return null;
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    texto = formcontroller.text;
                    formcontroller.clear();
                    voltar();
                  }
                },
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
