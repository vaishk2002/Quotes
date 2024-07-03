import 'package:flutter/material.dart';
import 'quote.dart';
void main() {
  runApp(MaterialApp(
    home:QuoteList(),
  ));
}


class QuoteList extends StatefulWidget {

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State {
  List<Quote> quotes=[
    Quote(text: 'Be yourself.Everyone else is already taken.', author: 'osward lily'),
    Quote(text: 'I have nothing to declare except my genius .', author: 'osward lilly'),
    Quote(text: 'The truth is really pure and never simple.', author: 'osward lily')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar:AppBar(
        title:Text('Awesome Quotes'),
        centerTitle:true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote
        )).toList(),

      )
    );
  }
  Widget quoteTemplate( Quote quote){
    return Card(
      margin:EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Text(
              quote.text,
              style:TextStyle(
                fontSize:18.0,
                color:Colors.grey[600],
              )
            ),
            SizedBox(height:6.0),
            Text(
              quote.author,
              style:TextStyle(
                fontSize:14.0,
                color:Colors.grey[800]
              )
            ),
            SizedBox(height:8.0),
            TextButton.icon(
              onPressed:(){

              },
              label:Text('delete quote'),
              icon:Icon(Icons.delete),
            )
          ]
        ),
      ),
    );
  }
}
