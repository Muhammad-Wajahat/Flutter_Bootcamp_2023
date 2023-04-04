import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: bookNames.length,
          itemBuilder: (context, index){
            return Card(
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookNames[index],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Author",
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Icon(Icons.book_rounded)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

const bookNames = ['books 1', "book2", "book 3"];