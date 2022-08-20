import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.indigo[100],
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple[300]),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Контакты"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [for (int i = 1; i < 6; i++) const ContactCard()],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
        margin: EdgeInsets.all(30),
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: ListTile(
          leading: CircleAvatar(
            radius: 39,
            backgroundImage: AssetImage('assets/img/pooh.jpg'),
          ),
          title: Text(
            'Винни Пух',
          ),
          subtitle: Text('+7-123-44-55\nДата рождения: 21.08.1921'),
        ));
  }
}
