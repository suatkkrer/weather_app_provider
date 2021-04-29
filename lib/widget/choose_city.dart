import 'package:flutter/material.dart';

class ChooseCity extends StatefulWidget {
  @override
  _ChooseCityState createState() => _ChooseCityState();
}

class _ChooseCityState extends State<ChooseCity> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose City"),),
      body: Form(child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: "City",
                hintText: "Choose City",
                border: OutlineInputBorder()
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.search), onPressed: (){
            Navigator.pop(context, _textController.text);
          },)
        ],
      ),),
    );
  }
}
