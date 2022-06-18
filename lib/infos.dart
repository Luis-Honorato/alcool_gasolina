import 'package:flutter/material.dart';

class Infos extends StatefulWidget {
  const Infos({ Key? key }) : super(key: key);

  @override
  State<Infos> createState() => _InfosState();
}

class _InfosState extends State<Infos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Como esse cálculo é feito?",
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
                    'Álcool ou Gasolina: cálculo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne',
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """O cálculo básico para se descobrir se o álcool é vantajoso ou não em relação à gasolina é simples. Basta dividir o preço do litro do álcool pelo da gasolina. Se o resultado for inferior a 0,7, use álcool. Se for maior que 0,7, então a gasolina é melhor.
        
        Por exemplo, se o litro do álcool custar R${'5'},30 e o da gasolina R${'7'},00, então o resultado será de 0,757. Ou seja, álcool ou gasolina? A gasolina é mais vantajosa. Assim, nesse período, valeu mais abastecer com gasolina.
        
        Mas e no consumo dos carros? Essa diferença existe em qual proporção?
        
        Para verificarmos isso, pegamos os 10 carros mais vendidos do mercado nacional para verificar os consumos médios de cada um com os respectivos combustíveis e tirar a diferença.
        
        Na tabela abaixo, confira os consumos médios e a diferença de etanol para gasolina nesses modelos, para saber quais são ou não vantajosos com gasolina.""",
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),

              const Padding(padding: EdgeInsets.only(top: 20)),
              const ListTile(
                  title: Text(
                    'Álcool ou gasolina: consumo dos carros mais vendidos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne'
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """Na tabela abaixo, colocamos os 10 carros mais vendidos em 2021 no acumulado do ano. Inserimos os consumos do Inmetro, com a análise do instituto de 2021.

Ao invés de simplesmente colocarmos se o modelo em questão tem vantagem no uso do álcool se ele custar 70% do preço da gasolina, colocamos o valor máximo que o álcool pode custar para ainda ser vantajoso naquele modelo de veículo (mesmo que seja álcool aditivado).

Como calculamos isso? Levando-se em conta 1% abaixo da proporção exata de custo para os dois combustíveis. Vamos usar como exemplo o Onix 1.0 MT. Seu consumo com álcool na cidade é de 9,9 km/l e com gasolina na cidade é de 13,9 km/l.

Dividindo 9,9 por 13,9 chegamos ao número 0,71. Aí baixamos 1%, chegando a um preço máximo do álcool de 70% em relação a gasolina.

Ou seja, se o álcool estiver custando 70% do preço da gasolina no seu posto preferencial, pode abastecer seu Onix 1.0 com câmbio manual tranquilamente, que você estará tendo uma vantagem financeira. Pequena, mas existente.

Se o álcool estiver custando 71% da gasolina, é indiferente, e se estiver custando 72% ou mais, é perda de dinheiro.

Mas esse cálculo serve apenas para o Onix 1.0, já que se você tiver outro carro, a conta precisa ser refeita usando como base seu consumo urbano com cada combustível. Enfim, está tudo na tabela abaixo.

E se seu carro não consta na nossa tabela, você mesmo pode fazer o cálculo, dividindo o consumo do carro com álcool pelo consumo dele com gasolina, para saber onde fica o ponto de equilíbrio financeiro entre os dois combustíveis""",
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),

                const Padding(padding: EdgeInsets.only(top: 20)),
                const ListTile(
                  title: Text(
                    'Álcool ou gasolina: tabela com as proporções vantajosas para álcool em cada modelo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'ContrailOne'
                    ),
                  textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
        """Modelo	Consumo em km/l	Vantagem em usar Álcool NA CIDADE até a seguinte porcentagem do preço da gasolina	Vantagem em usar Álcool NA ESTRADA até a seguinte porcentagem do preço da gasolina
Etanol	Gasolina
Consumo	Consumo	Consumo	Consumo
Cidade	Estrada	Cidade	Estrada
HB20 1.0 MT	9,5	10,5	13,3	14,9	70%	69%
HB20 1.0 Turbo AT	8,2	10,2	11,8	14,2	68%	71%
Argo 1.0 MT	9,8	10,7	13,9	15,1	69%	69%
Argo 1.3 MT	8,8	10,4	12,8	14,7	69%	69%
Argo 1.8 AT	6,9	9,2	9,7	12,8	70%	71%
Renegade 1.3 Turbo AT	7,7	9,1	11	12,8	69%	70%
Renegade 1.8 AT	6,9	8,6	10	12	68%	71%
Onix 1.0 MT	9,9	11,7	13,9	16,7	70%	69%
Onix 1.0 Turbo MT	9,4	11,2	13,5	16	69%	69%
Onix 1.0 Turbo AT	8,3	10,1	12	14,4	68%	69%
Compass 1.3 Turbo AT	7,3	8,7	10,5	12,1	68%	70%
Gol 1.0 MT	9,1	10,1	13,3	14,4	67%	69%
Gol 1.6 MT	7,8	9,5	11,1	13,6	69%	69%
Gol 1.6 AT	7,7	9,6	11,1	13,6	68%	70%
Mobi 1.0 MT	9,7	10,7	13,7	15,3	69%	68%
Creta 1.6 AT	7,1	8,2	10,1	11,3	69%	72%
Creta 1.0 Turbo AT	8,3	8,7	11,6	12	70%	71%
Creta 2.0 AT	7,7	8,7	10,9	12,4	69%	69%
T-Cross 1.0 Turbo MT	8,5	10,1	12,2	14,5	69%	69%
T-Cross 1.0 Turbo AT	7,6	9,5	10,8	13,4	69%	69%
T-Cross 1.4 Turbo AT	7,7	9,3	11	13,2	69%	69%
Onix Plus 1.0 MT	10,1	12,5	14,3	17,7	69%	69%
Onix Plus 1.0 Turbo MT	9,6	12,2	13,7	17	69%	70%
Onix Plus 1.0 Turbo AT	8,6	10,9	12	15	70%	71%""",
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
        """Site noticiasautomotivas.com.br""",
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