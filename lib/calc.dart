import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({ Key? key }) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4F4F4F),
      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget> [
          Container(

            alignment: AlignmentDirectional.bottomCenter,
            child: Image.asset(
              "assets/images/gas-pump.png",
              width: 80,
              height: 112,
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),

          Container(
            child: Column(
              children: <Widget> [
                TextField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Álcool",
                    labelStyle: TextStyle(
                      color: Colors.white
                      ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    )
                  ),
                ),

                Padding(padding: EdgeInsets.all(10)),

                TextField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: "Preço Gasolina",
                    labelStyle: TextStyle(
                      color: Colors.white
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    )
                  ),
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),

          RaisedButton(
           onPressed: () {},
           child: Text(
             "Calcular"
            )
          ) 
        ],
       ),
      )
    );
  }
}