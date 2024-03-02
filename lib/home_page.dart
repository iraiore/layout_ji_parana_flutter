import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(15),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 45, 134, 207),
        ),
      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          //Titulo antes da appBar - Cidades de Rondônia  
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                width: MediaQuery.of(context).size.width,
                height: 58,
                color: Colors.blue[400],
                child: const Text(
                  textAlign: TextAlign.center,
                  "Cidades de Rondônia",
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                  )
                ),                
              ),
            ],
          ),
          //imagem da cidade
          const Image(
            image: AssetImage('assets/jipa-city.png'),
          ),
          //seção da localização e estrela
          Container(
            padding: EdgeInsets.all(10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Brasil",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      )
                    ),
                    Text("Ji-Paraná, Rondônia",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey,
                      ),                  
                    ),              
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star,
                    color: Colors.blue,
                    ),
                    Icon(Icons.star,
                    color: Colors.blue,
                    ),
                    Icon(Icons.star,
                    color: Colors.blue,
                    ),
                    Icon(Icons.star_half,
                    color: Colors.blue,
                    ),                                                            
                    Text("3.500",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),                  
                    ),                
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 50,),
          //seção icones ligar, endereço e compartilhar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                 onPressed: (){},
                 child: const Column(
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 30,
                      color: Colors.blue,
                    ),
                    Text('facebook',
                      style: TextStyle(
                        color:Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                 ),
                ),
              TextButton(
                 onPressed: (){},
                 child: const Column(
                  children: [
                    Icon(
                      Icons.map,
                      size: 30,
                      color: Colors.blue,
                    ),
                    Text('endereço',
                      style: TextStyle(
                        color:Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                 ),
                ),
              TextButton(
                 onPressed: (){},
                 child: const Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.blue,
                    ),
                    Text('compartilhar',
                      style: TextStyle(
                        color:Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                 ),
                ),                            
            ],
          ),
          SizedBox(height: 50,),          
          Container(
            padding: EdgeInsets.all(10),
            child: const Text(
              "Ji- Paraná é um munícipio brasileiro do estado de Rondônia. Sua população, conforme estimativas do IBGE de 2021, era de 131.026 habitantes, sendo o segundo mais populoso do estado e o décimo sexto mais populoso da Região Norte do Brasil, a 226ª mais populosa do Brasil e a 113ª mais populosa cidade do interior brasileiro",
              textAlign: TextAlign.justify,
              style:TextStyle(
                fontSize: 17,
              ),
            ),
          ),          
        ],
      ),
    );
  }
}
