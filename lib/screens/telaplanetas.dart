import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:horrorland/screens/gallifrey.dart';

class Planetas extends StatefulWidget {
  const Planetas({Key? key}) : super(key: key);

  @override
  State<Planetas> createState() => _PlanetasState();
}

class _PlanetasState extends State<Planetas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('bgplanetas.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            
            TextButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Gallifrey(),));},
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.black,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Gallifrey",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    Row(
                      children: const [
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Gallifrey é o planeta natal dos Time Lords. Acreditava-se que ele havia sido destruído na Última Grande Guerra do Tempo, mas posteriormente descobriu-se que ele havia sido congelado em um universo de bolso.",
                            style: TextStyle(
                                color: Color.fromARGB(151, 255, 255, 255)),
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: Image.asset("gally.png"),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35,),
            TextButton(
              onPressed: () {},
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.black,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Cybertron",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    Row(
                      children: const [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Cybertron é o planeta natal dos Transformers e o corpo de seu criador, Primus. Cybertron é um mundo tecnológico e metálico brilhante.",
                              style: TextStyle(
                                  color: Color.fromARGB(151, 255, 255, 255)),
                            ),
                          )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: Image.asset("cyber.png",
                      fit: BoxFit.cover,),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35,),
            TextButton(
              onPressed: () {},
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.black,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Júpiter",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    Row(
                      children: const [
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Júpiter é o maior planeta do Sistema Solar, tanto em diâmetro quanto em massa, e é o quinto mais próximo do Sol.",
                            style: TextStyle(
                                color: Color.fromARGB(151, 255, 255, 255)),
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: Image.asset("planeta.png"),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35,),
            TextButton(
              onPressed: () {},
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.black,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Vênus",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    Row(
                      children: const [
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Vênus, a jóia do céu, era conhecida pelos astrônomos da antiguidade com a estrela d'álva e estrela vespertina.",
                            style: TextStyle(
                                color: Color.fromARGB(151, 255, 255, 255)),
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: Image.asset("venus.png"),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35,),
            
          ],
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.pop(context);
      },
      backgroundColor: const Color.fromARGB(0, 219, 55, 110),
      child: const Icon(Icons.arrow_back_ios_new_rounded,
        color: Color.fromARGB(160, 255, 255, 255),
        size: 34,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
