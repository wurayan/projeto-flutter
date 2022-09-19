import 'package:flutter/material.dart';
import 'package:horrorland/util/contador.dart';

class Gallifrey extends StatefulWidget {
  const Gallifrey({Key? key}) : super(key: key);

  @override
  State<Gallifrey> createState() => _GallifreyState();
}

class _GallifreyState extends State<Gallifrey> {
  final contador = Contador();
  var minas = 3;

  void criarmina () {
    minas++;
  }
  void destruirmina () {
    minas--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('bggalli.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center)),
        child: Expanded(
          child: Card(
              clipBehavior: Clip.antiAlias,
              color: const Color.fromARGB(216, 0, 0, 0),
              elevation: 10,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: SizedBox(
                  height: 800,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "GALLIFREY",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 100,
                            child: Flexible(
                              child: Text(
                            "Vista de sua órbita, Gallifrey tinha cor de ferrugem, com lagos marrons e nuvens cinzas. Depois da Última Grande Guerra do Tempo, ele ainda conservava sua cor de ferrugem e marrom, mas passou a ter uma aparência mais vulcânica.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1),
                          ))
                          ) 
                          ,
                          const SizedBox(
                                 height: 20,
                          ),
                          const Text(
                            "RECURSOS",
                            style: TextStyle(
                                color: Color.fromARGB(87, 243, 243, 243),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage('mlbloom.png'),
                                      radius: 30,
                                    ),
                                  ),
                                  const Text(
                                    "Flor do Luar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage('ferro.png'),
                                      radius: 30,
                                    ),
                                  ),
                                  const Text(
                                    "Ferroliga",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const CircleAvatar(
                                      backgroundImage:
                                          AssetImage('silverwood.png'),
                                      radius: 30,
                                    ),
                                  ),
                                  const Text(
                                    "Madeira prata",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Você possui ${minas} minas neste planeta...",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  OutlinedButton(
                                      onPressed: () => {contador.menos(50),criarmina()},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    210, 219, 55, 110)),
                                      ),
                                      child: const Text(
                                        "Instalar mina",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                  const Text(
                                    "-50 RECURSOS",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(87, 243, 243, 243),
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  OutlinedButton(
                                      onPressed: () => {contador.mais(10),destruirmina()},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
                                                    210, 219, 55, 110)),
                                      ),
                                      child: const Text(
                                        "Desinstalar mina",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                  const Text(
                                    "+10 RECURSOS",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(87, 243, 243, 243),
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 200,
                            child: Image.asset('gallibg.png'),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "VOLTAR",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ))
                        ]),
                  ))),
        ),
      ),
      )
    );
  }
}
