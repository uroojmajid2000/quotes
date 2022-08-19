import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,16.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                quote.text,
                style: TextStyle(
                  fontSize:18.0,
                  color: Colors.grey[600],)
            ),
          ),
          SizedBox(height: 6.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                quote.author,
                style: TextStyle(
                  fontSize:18.0,
                  color: Colors.grey[800],)
            ),
          ),
          SizedBox(height: 6.0),

ElevatedButton.icon(
    onPressed: (){
  delete();
},
    icon: Icon(Icons.delete),
  label: Text('Delete Icon'),)
        ],
      ),

    );
  }
}