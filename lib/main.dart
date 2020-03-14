import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:clippy/server.dart' as clippy;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                onTap: () async {
                  String text = lorem(paragraphs: 2, words: 60);
                  await Clipboard.setData(
                    ClipboardData(text: text),
                  );
                  final snackBar = SnackBar(
                    content: Text('Copied to Clipboard'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                title: Text("Generate Lorem Ipsum - 60 Words 2 Paragraphs (Copy to Clipboard)"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  String text = lorem(paragraphs: 2, words: 60);
                  await Clipboard.setData(
                    ClipboardData(text: text),
                  );
                  final snackBar = SnackBar(
                    content: Text('Copied to Clipboard'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                title: Text("Generate Random Name"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  String text = lorem(paragraphs: 2, words: 60);
                  await Clipboard.setData(
                    ClipboardData(text: text),
                  );
                  final snackBar = SnackBar(
                    content: Text('Copied to Clipboard'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                title: Text("Generate Random Address"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
