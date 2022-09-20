

import 'package:flutter/material.dart';
import 'package:horrorland/screens/telastats.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/telainicial.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 400,
            ),
            const Text(
              //inserir text animation e fontes personalizadas
              "Bem vindo de volta.",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(243, 243, 243, 1)),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const TelaStats()));
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(141, 255, 51, 122)),
                  
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 20,
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    const Size(350, 60),
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)))),
                child: const Text("ACESSAR"))
          ],
        ),
      ),

      // body: Stack(

      //   children: [
      //     SizedBox.expand(
      //       child: Container(
      //         color: Colors.black,
      //         child: Image.network("https://i.giphy.com/media/n3UBd63oVlQLC/200.gif",
      //           fit: BoxFit.contain,)
      //     ),),

      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Container(
      //           padding: const EdgeInsets.all(20),
      //           height: 300,
      //           alignment: Alignment.center,
      //           child: const Text("teste",
      //             style: TextStyle(
      //               fontSize: 50,
      //               color: Color.fromRGBO(243, 243, 243, 1),
      //               fontWeight: FontWeight.w500,
      //               letterSpacing: 10
      //             ),),

      //         )
      //       ],
      //     )

      //   ]
      //   ),
    );
  }
}
