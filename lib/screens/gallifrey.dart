import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Gallifrey extends StatefulWidget {
  const Gallifrey({Key? key}) : super(key: key);

  @override
  State<Gallifrey> createState() => _GallifreyState();
}

class _GallifreyState extends State<Gallifrey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('bggalli.png'),
          fit: BoxFit.cover,
          alignment: Alignment.center)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Card(
              clipBehavior: Clip.antiAlias,
              color: const Color.fromARGB(216, 0, 0, 0),
              elevation: 10,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              child: 
                SizedBox(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("GALLIFREY",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        ),),
                        const SizedBox(height: 20,),
                        const Flexible(child: Text(
                          "Vista de sua órbita, Gallifrey tinha cor de ferrugem, com lagos marrons e nuvens cinzas. Depois da Última Grande Guerra do Tempo, ele ainda conservava sua cor de ferrugem e marrom, mas passou a ter uma aparência mais vulcânica.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1
                          ),
                        )),
                        const SizedBox(height: 20,),
                        const Text("RECURSOS",
                        style: TextStyle(
                          color: Color.fromARGB(87, 243, 243, 243),
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(onPressed: () {
                                  
                                }, 
                                child: 
                                  const CircleAvatar(
                                    backgroundImage: AssetImage('mlbloom.png'),
                                    radius: 30,
                                  ),
                                ),
                                const Text("Flor do Luar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                TextButton(onPressed: () {
                                  
                                }, 
                                child: 
                                  const CircleAvatar(
                                    backgroundImage: AssetImage('ferro.png'),
                                    radius: 30,
                                  ),
                                ),
                                const Text("Ferroliga",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              children: [
                                TextButton(onPressed: () {
                                  
                                }, 
                                child: 
                                  const CircleAvatar(
                                    backgroundImage: AssetImage('silverwood.png'),
                                    radius: 30,
                                  ),
                                ),
                                const Text("Madeira prata",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                                ),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Text("Você possui 3 minas neste planeta...",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),),
                        OutlinedButton(onPressed: () {
                          
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(210, 219, 55, 110)),),
                        child: Text("Instalar mina",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),)),
                        const SizedBox(height: 30),
                        OutlinedButton(onPressed: () {
                          
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(210, 219, 55, 110)),),
                        child: Text("Desinstalar mina",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),))
                      ],
                  ),),
                )
              )
            ),
            
            
          ],
        ),
      ),
    );
  }
}