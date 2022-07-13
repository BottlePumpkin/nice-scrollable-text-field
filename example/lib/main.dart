import 'package:flutter/material.dart';
import 'package:nice_scrollable_text_field/nice_scrollable_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nice_scrollable_text_field',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CHAT UI'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                  reverse: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container();
                  }),
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width - 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: NiceScrollableTextField(
                                    onChanged: (value) {},
                                    inputDecoration: const InputDecoration(
                                      hintText: 'SEND MESSAGE',
                                      border: InputBorder
                                          .none, //const OutlineInputBorder(borderRadius: AppRadius.all8),
                                      //disabledBorder: InputBorder.none,
                                    ),
                                  ),
                                )),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(Icons.send),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
