import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({ Key? key }) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular(){
    double? valorAlcool = double.tryParse(_controllerAlcool.text);
    double? valorGasolina = double.tryParse(_controllerGasolina.text);

    if(valorAlcool == null || valorGasolina == null){
      setState(() {
        _textoResultado = "Número Inválido! Digite um número maior que 0 e utilize '.' no lugar da ','";
      });
    } else {
      if((valorAlcool / valorGasolina) >= 0.7){
        setState(() {
          _textoResultado = "Melhor abastecer com Gasolina!";
        });}
      else{
        setState(() {
          _textoResultado = "Melhor Abastecer com Alcool";
        });
      }
    }

  }

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
        textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.orange,
        elevation: 4.0,

        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
      ),
      
      body: Center(
        child: SingleChildScrollView(
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
                      ),
                   ),
                   style: TextStyle(color: Colors.white),
                   controller: _controllerAlcool,
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
                    controller: _controllerGasolina,
                  ),
                )
              ],
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),

          RaisedButton(
           onPressed: _calcular,
           child: Text(
             "Calcular",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold
             ),
            )
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, left: 10, right: 10),
            child: Text(
              _textoResultado,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ) 
        ],
       ),
       )
      )
    );
  }
}