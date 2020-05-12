import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Evenorodd());
}
class Evenorodd extends StatefulWidget {
  @override
  _EvenoroddState createState() => _EvenoroddState();
}

class _EvenoroddState extends State<Evenorodd> {
  TextEditingController n=TextEditingController();
  int _num=0;
  String _k="";
  void _check()

  {
    setState(() {
      if(_num%2==0)
      {
        _k="Even";
      }
      else
        _k="Odd";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: n,
                    decoration: InputDecoration(
                      hintText: "Check the number",
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    child: Text("Check"),
                      onPressed: ()
                      {
                        _num=int.parse(n.text);
                        _check();

                      }
                      ),
                  SizedBox(height: 15.0,),
                  Text(_k.toString(),style: TextStyle(fontSize: 45.0),),

                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
