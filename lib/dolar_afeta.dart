import 'package:flutter/material.dart';

class Dolar_Afeta extends StatefulWidget {
  const Dolar_Afeta({ Key? key }) : super(key: key);

  @override
  State<Dolar_Afeta> createState() => _Dolar_AfetaState();
}

class _Dolar_AfetaState extends State<Dolar_Afeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Como a alta do dólar impacta o valor dos combustíveis?",
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
          child: Material(
            color: const Color(0xff4F4F4F),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget> [
                const Padding(padding: EdgeInsets.only(top: 20)),
                const ListTile(
                  title: Text(
                    'Alta do dólar e o combustível no Brasil',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne',
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """Uma combinação de dólar alto e do aumento da cotação internacional do petróleo tem feito o preço do combustível crescer muito no Brasil. Como a moeda americana impacta diretamente no preço do combustível, é importante acompanhar a oscilação do dólar para estar por dentro do que pode acontecer também com os preços da gasolina.

Mas e qual a relação da variação do dólar e os preços dos combustíveis no país? De forma simples, a moeda norte-americana influencia o preço da gasolina porque, desde julho de 2017, a Petrobras baseia o valor do barril de petróleo em dólar para fazer reajustes na gasolina nacional.

Ou seja, quando o dólar está alto, o preço do barril de petróleo também sobe, impactando diretamente no combustível no Brasil.
A Petrobras usa um conceito denominado paridade de importação para definir os preços, que calcula quanto custaria a vender combustível importado no país. O cálculo leva em consideração cotações internacionais, taxas de câmbio e custos logísticos.

Assim, com o dólar tendo altas históricas a cada dia, o valor da gasolina também vem crescendo.""",
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),

              const Padding(padding: EdgeInsets.only(top: 20)),
              const ListTile(
                  title: Text(
                    'Por que o dólar afeta o preço do Álcool?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne'
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """O álcool, assim como a gasolina, também é impactado diretamente pela alta do dólar porque, com o valor da gasolina mais alto, a demanda do álcool também aumenta. Dessa forma, o preço do combustível também sobe.""",
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),

                const Padding(padding: EdgeInsets.only(top: 20)),
                const ListTile(
                  title: Text(
                    'Como é formado o preço do combustível?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne'
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """No Brasil, o preço do combustível está diretamente ligado ao preço do barril de petróleo, que é uma commodity (matéria-prima básica). Esse preço oscila no mercado internacional diariamente, dependendo de diversos fatores. Assim, quando o dólar está mais caro, paga-se mais pelo barril de petróleo. 

Dessa forma,  o preço do combustível que chega ao consumidor é composto pelos seguintes valores

• Custo de produção e lucro da Petrobrás;
• Custo do Etanol Anidro, produto adicionado à gasolina;
• Lucro das distribuidoras e postos;
• Impostos estaduais e federais.
Com isso, é preciso lembrar que o dólar tem ficado mais caro, o que faz com que o preço do combustível cresça. """,
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),

                const Padding(padding: EdgeInsets.only(top: 20)),
                const ListTile(
                  title: Text(
                    'Conclusão',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne'
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """O Brasil é um grande produtor de combustível, mas ainda assim o preço do álcool e gasolina são afetados pela oscilação do dólar, uma vez que insumos para sua produção são negociados na moeda americana. Assim, para acompanhar as variações no preço da gasolina, fique por dentro da cotação do dólar. """,
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),


                const Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
                const ListTile(
                  title: Text(
                    'Fonte:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne',
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """Site remessaonline.com.br""",
                  style: TextStyle(
                    color: Colors.white
                    ),
                  textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
         ),
        ),
      ),
    );
  }
}