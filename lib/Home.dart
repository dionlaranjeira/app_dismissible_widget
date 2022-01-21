import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> _nomes = ["Dion", "Andreina", "Neto", "Luck", "Back"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets"),),
      body: Column(
        children: [
          Expanded(child:ListView.builder(
            itemCount: _nomes.length,
            itemBuilder: (context,index){
              return ListTile(title: Text(_nomes[index]),);
            } ),
          ),
        ],
      ),
    );
  }
}
