import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void dPrint() {
    debugPrint('Sended !!!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pacifico',
      ),
      home: Scaffold(
        backgroundColor: Colors.brown[900],
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          title: const Text('Coffe Shop'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/cofe.jpg'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Coffe Shop',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '--------------   Flutter Coffe Time   -------------',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  child: ListTile(
                    onTap: () {
                      dPrint();
                    },
                    iconColor: Colors.brown,
                    textColor: Colors.brown,
                    leading: const Icon(Icons.email),
                    title: const Text(
                      'nasibli.simran@yahoo.com',
                      textAlign: TextAlign.center,
                    ),
                    trailing: const Icon(Icons.send),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  child: ListTile(
                    onTap: () {
                      dPrint();
                    },
                    iconColor: Colors.brown,
                    textColor: Colors.brown,
                    leading: const Icon(Icons.phone_android),
                    title: const Text(
                      '+994 51 2309333',
                      textAlign: TextAlign.center,
                    ),
                    trailing: const Icon(Icons.call),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 1,
                  height: 10,
                  indent: 40,
                  endIndent: 40,
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  onPressed: () {
                    dPrint();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 120, right: 120),
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.brown[300],
          onPressed: () {
            dPrint();
          },
          child: const Icon(
            Icons.save,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
