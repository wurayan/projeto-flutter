import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:horrorland/screens/telaplanetas.dart';
import 'package:horrorland/util/contador.dart';


class TelaStats extends StatefulWidget {
  const TelaStats({Key? key}) : super(key: key);

  @override
  State<TelaStats> createState() => _TelaStatsState();
}

class _TelaStatsState extends State<TelaStats> {
  final contador = Contador();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("astronautaedit.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    Text("Enquanto você esteve fora...",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                    Text("  Suas minas coletaram 345 recursos.",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic
                    ),),
                    Text("  Seus satélites geraram 239 pacotes de pesquisa",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic
                    ),),
                    SizedBox(height: 20,)
                    ],
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(width: 5,),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Planetas(),));
                    }, 
                    child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset("bar1.png",
                            height: 100,),
                          const Text("8",
                            style: TextStyle(
                              color: Color.fromRGBO(243, 243, 243, 1),
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),),
                          const Text("PLANETAS",
                            style: TextStyle(
                              color: Color.fromARGB(87, 243, 243, 243)
                            ),)
                        ],
                      ),
                  ),
                  
                  TextButton(onPressed: () {
                    
                  }, 
                  child: 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("bar3.png",
                          height: 100,),
                        const Text("12",
                          style: TextStyle(
                            color: Color.fromRGBO(243, 243, 243, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),),
                        const Text("SATÉLITES",
                          style: TextStyle(
                            color: Color.fromARGB(87, 243, 243, 243)
                          ),)
                      ],
                    ),
                  ),

                  TextButton(onPressed: () {
                    
                  }, 
                  child: 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("bar2.png",
                          height: 100,),
                        Text("${contador.show()}",
                          style: const TextStyle(
                            color: Color.fromRGBO(243, 243, 243, 1),
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),),
                        const Text("RECURSOS",
                          style: TextStyle(
                            color: Color.fromARGB(87, 243, 243, 243)
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          )),
          
    );
  }
}
