import 'package:emplayer/account/profile/profile.dart';
import 'package:flutter/material.dart';

class editname extends StatefulWidget {
  const editname({super.key});

  @override
  State<editname> createState() => _editnameState();
}

class _editnameState extends State<editname> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 24, 24, 24),
              Color.fromARGB(255, 82, 82, 82),
              Color.fromARGB(255, 24, 24, 24),
              Color.fromARGB(255, 0, 0, 0),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.navigate_before_rounded),
                      color: Colors.white,
                      iconSize: 46,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  const Text(
                    "Edit Username",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Right',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 150),
                width: 385,
                height: 120,
                child: const MyCustomForm(),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  int temp = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          child: TextField(
            controller: myController,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            autofocus: true,
            decoration: InputDecoration(
                // iconColor: Colors.red,
                // focusColor: Colors.red,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 45, 157, 255)),
                  borderRadius: BorderRadius.circular(17),
                ),
                fillColor: const Color.fromARGB(255, 74, 74, 74),
                labelText: 'Enter Your Username',
                labelStyle: const TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins-Regular',
                    color: Color.fromARGB(255, 45, 157, 255))),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(left: size.width / 1.25),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            icon: const Icon(Icons.navigate_next_rounded),
            color: const Color.fromARGB(255, 255, 255, 255),
            iconSize: 44,
            onPressed: () {
              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => profile_page(
                            username: myController.text,
                          )));
              // Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
