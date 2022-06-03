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

      appBar: AppBar(
        title: Text(
          "O que compensa mais?",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      
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
          Container(child: Text(
              "Alcool ou Gasolina?",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "ContrailOne"
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),

          Container(
            child: Column(
              children: <Widget> [
                Container(
                  width: 300,
                  child: TextField(
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
                ),

                Padding(padding: EdgeInsets.all(10)),

                Container(
                  width: 300,
                  child: TextField(
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
                )
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