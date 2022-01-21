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

              final item = _nomes[index];
              return Dismissible(
                  background: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(16),
                    child: Row(children: const [
                      Icon(Icons.edit, color:Colors.white)
                    ],),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                      Icon(Icons.delete, color:Colors.white)
                    ],),
                  ),
                  onDismissed: (direction){
                      if(direction == DismissDirection.startToEnd){
                        setState(() {
                          _nomes[index] = "editado";
                        });
                      }else{
                        setState(() {
                          _nomes.removeAt(index);
                        });
                      }

                  },
                  key: Key(item+index.toString()),
                  child: ListTile(title: Text(_nomes[index]),));
            } ),
          ),
        ],
      ),
    );
  }
}
