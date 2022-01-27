import 'package:flutter/material.dart';
import 'package:quotes/Quote.dart';

import 'QuoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotesList = [
    Quote("Oscar Wilde","Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    Quote("John Jackson","Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
    Quote("Billy Forklift","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotesList.map((quote) => QuoteCard(
           quote,
           () {
          setState(() {
            quotesList.remove(quote);
          });
        })).toList(),
      ),
    );
  }
}







