import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.black87,
      ),
      body: DicePage(),
    ),
  ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber =1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    leftdicenumber=Random().nextInt(6) +1;
                  });
                },
                child: (Image.asset('images/dice$leftdicenumber.png')


              ),
            ),
          ),
          Expanded(

              child: TextButton(
                onPressed: (){
                  setState(() {
                    rightdicenumber=Random().nextInt(6) +1;
                  });
                },
                child: (Image.asset('images/dice$rightdicenumber.png')


              ),
            ),
          ),
        ],
      ),
    );
  }
}


