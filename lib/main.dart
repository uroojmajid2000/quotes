import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_Card.dart';

void main() {
  runApp(
    MaterialApp(
      home: Quotes(),
    )
  );
}
class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);
  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List <Quote> quotes = [
    Quote(text:'"The purpose of our lives is to be happy."', author:'UROOJ'),
    Quote(text:'"Get busy living or get busy dying." ', author:'uji'),
    Quote(text:'"You only live once, but if you do it right, once is enough." ', author:'um'),
  ];

  @override
  Widget build(BuildContext context) {



    // Widget quoteTemplate(quote)=> QuoteCard(quote: quote);

    return Scaffold(
backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: quotes.map(
            (quote) => QuoteCard(quote: quote,
              delete: () {
              print(quote.text);
              setState( (){
                // quotes = quotes.where((Quote q) => quote.text != q.text).toList();
quotes.remove(quote);
              }
              );

              },

            )
        ).toList(),
      ),
    );
  }
}


