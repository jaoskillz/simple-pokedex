import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static const int itemCount = 20;

  @override
  Widget build(BuildContext context) {
    const String pageTitle = 'Welcome to Pokeshizz';
    return MaterialApp(
        title: pageTitle,
        home: Scaffold(
            appBar: AppBar(title: const Text(pageTitle)),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Search a pokemon / Enter keywords',
                      ),
                    ),
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: itemCount,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            child: const Text('Pokemon Primary Details'),
                          ),
                        );
                      })
                ],
              ),
            )));
  }
}
