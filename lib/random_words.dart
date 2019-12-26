import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//Custom Widget
//Shall have state with it thus extends Stateful Widget
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  //converting the random wordpairs to a list so that you can iterate through them
  final _randomWordPairs = <WordPair>[];
  //init set
  //Set is a data structure
  final _savedWordPairs = Set<WordPair>();

  //implememting Flutter List View
  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, item) {
        if (item.isOdd) return Divider();
        //if item is odd return divider
        final index = item ~/ 2;

        if (index >= _randomWordPairs.length) {
          _randomWordPairs.addAll(generateWordPairs().take(10));
        }

        //returing each listsyle as a separate widget
        return _buildRow(_randomWordPairs[index]);
      },
    );
  }

  //Deals with a specific Item
  Widget _buildRow(WordPair pair) {
    final alreadySaved = _savedWordPairs.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: TextStyle(fontSize: 18.0),
      ),
      trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _savedWordPairs.remove(pair);
          } else {
            _savedWordPairs.add(pair);
          }
        });
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('WordPair Generator')), body: _buildList());
  }
}
