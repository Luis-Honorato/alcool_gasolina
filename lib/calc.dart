import 'package:alcool_gasolina/dolar_afeta.dart';
import 'package:alcool_gasolina/infos.dart';
import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({ Key? key }) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {

  String frase = '';
  final TextEditingController _controllerAlcool = TextEditingController();
  final TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular(){
    double? valorAlcool = double.tryParse(_controllerAlcool.text);
    double? valorGasolina = double.tryParse(_controllerGasolina.text);

    if(valorAlcool == null || valorGasolina == null){
      setState(() {
        _textoResultado = "Número Inválido! Digite um número maior que 0 e utilize '.' no lugar da ','";
        frase = '';
      });
    } else {
      if((valorAlcool / valorGasolina) >= 0.7){
        setState(() {
          _textoResultado = "Melhor abastecer com Gasolina!";
          frase = 'Por que não Alcool?';
        });}
      else{
        setState(() {
          _textoResultado = "Melhor Abastecer com Alcool";
           frase = 'Por que não Gasolina?';
        });
      }
    }
  }

  // ignore: non_constant_identifier_names
  void ir_infos() {
    Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => const Infos())
                )
              );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color(0xff4F4F4F),

      drawer: Drawer(
        backgroundColor: const Color(0xff4F4F4F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  <Widget> [
            
              Container(
                child: Column(
                  children: [

                    const UserAccountsDrawerHeader(accountName: Text('Preços'), accountEmail: Text('O consumo',),),

                    ListTile(
                    leading: const Icon(
                      Icons.question_mark,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Como esse Cáculo é feito?',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle:  const Text(
                      'Clique aqui para mais informações',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: ir_infos,  
                  ),

                   ListTile(
                    leading: const Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Como o dolár afeta minha gasolina?',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle:  const Text(
                      'Clique aqui para saber mais',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => const Dolar_Afeta())
                        )
                      );
                    },  
                  ),

                  ]
                ),
              ),

             
            Padding(
              padding: EdgeInsets.all(16),
              child: const Text(
                'Criador: Luis Honorato',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'ContrailOne'
                ),
              ),
            )

          ],
        ),
      ),

      appBar: AppBar(
        title: const Text(
          "O que compensa mais?",
          style: TextStyle(
            color: Colors.white
          ),
        textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.orange,
        elevation: 4.0,
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
          const Text(
              "Alcool ou Gasolina?",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "ContrailOne"
              ),
            ),

          const Padding(padding: EdgeInsets.all(16)),

          Column(
            children: <Widget> [
              SizedBox(
                width: 300,
                child: TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço Álcool",
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                    ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)
                  )
                 ),
                 style: const TextStyle(color: Colors.white),
                 controller: _controllerAlcool,
                ),
              ),

              const Padding(padding: EdgeInsets.all(10)),

              SizedBox(
                width: 300,
                child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
         
                  decoration: const InputDecoration(
                    labelText: "Preço Gasolina",
                    labelStyle: TextStyle(
                      color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)
                      )
                    ),
                    style: const TextStyle(
                    color: Colors.white
                  ),
                  controller: _controllerGasolina,
                ),
              )
            ],
          ),

          const Padding(padding: EdgeInsets.all(16)),

          ElevatedButton(
            
           onPressed: _calcular,
           child: const Text(
             "Calcular",
             style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold
             ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              minimumSize: const Size(250, 50),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 10, right: 10),
            child: Text(
              _textoResultado,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            textAlign: TextAlign.center,
            ),
          ) ,
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              child: Text(
                frase,
                style: const TextStyle(
                  color: Colors.orange,
                  decoration: TextDecoration.underline
                ),
              ),
            onTap: ir_infos
            ),
          )
        ],
       ),
       )
      )
    );
  }
}