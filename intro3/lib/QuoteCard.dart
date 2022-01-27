import 'package:flutter/material.dart';
import 'package:quotes/Quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;
  QuoteCard(this.quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]
              ),),
            SizedBox(height: 6,),
            Text(quote.author,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800]
              ),),
            SizedBox(height: 8,),
            IconButton(onPressed: ()=>{
                delete()
            }, icon: Icon(Icons.delete) )
          ],
        ),
      ),
    );
  }
}