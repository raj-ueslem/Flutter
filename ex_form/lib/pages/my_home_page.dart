import 'package:ex_form/model/_export_models.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _weightController;
  late TextEditingController _heightController;

  double _imc = 0.0;

  TextFormField _rowName() => TextFormField(
        controller: _nameController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(hintText: "Digite o seu nome"),
        maxLength: 20,
        validator: (value) {
          if (value!.isEmpty) {
            return "Digite um valor valido";
          }
          return null;
        },
      );

  TextFormField _rowWeight() => TextFormField(
        controller: _weightController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(hintText: "Digite o seu peso"),
        maxLength: 10,
        validator: (value) {
          if (value!.length < 2) {
            return "Digite um peso valido";
          }
          return null;
        },
      );

  TextFormField _rowHeight() => TextFormField(
        controller: _heightController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(hintText: "Digite a sua altura"),
        maxLength: 10,
        validator: (value) {
          if (value!.length < 2) {
            return "Digite um altura valido";
          }
          return null;
        },
      );

  TextButton _rowIconButton() => TextButton.icon(
      onPressed: () {
        _register();
        _resetFilds();
      },
      icon: const Icon(Icons.add),
      label: const Text("Calcular Imc"));

  Icon _rowIcon() => const Icon(
        Icons.people,
        size: 100,
      );

  Form _rowForm() => Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            _rowIcon(),
            _rowName(),
            _rowWeight(),
            _rowHeight(),
            _rowIconButton(),
          ],
        ),
      );

  Widget _rowPadding() => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Imc: $_imc",
          style: const TextStyle(fontSize: 30),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _rowForm(),
          _rowPadding(),
        ],
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _heightController = TextEditingController();
    _weightController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  _register() {
    debugPrint("Clicou no calcular Imc");

    debugPrint('Validou: ${_formKey.currentState!.validate()}');

    if (_formKey.currentState!.validate()) {
      debugPrint("name: ${_nameController.text}");
      debugPrint("height: ${_heightController.text}");
      debugPrint("weight: ${_weightController.text}");

      //double? weight = double.tryParse(_weightController.text);
      //double? height = double.tryParse(_heightController.text);

      final person = PersonModel(
          name: _nameController.text,
          weight: _convertFromStringToDouble(_weightController.text),
          height: _convertFromStringToDouble(_heightController.text));

      setState(() {
        _imc = person.calculateImc();
      });
      _sendMessage('Resultado: \n${person.toString()}');
    } else {
      _sendMessage('Digite os campos corretamente');
    }
  }

  _convertFromStringToDouble(String value) => double.tryParse(value);

  _sendMessage(String message) => ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));

  _resetFilds() => _formKey.currentState!.reset();
}
