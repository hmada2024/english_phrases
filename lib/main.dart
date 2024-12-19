import 'package:english_phrases/data.dart';
import 'package:english_phrases/expression_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpressionList(),
    );
  }
}

class ExpressionList extends StatelessWidget {
    final List<Expression> expressions = getExpressions();

  
   ExpressionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expressions')),
      body: ListView.builder(
        itemCount: expressions.length,
        itemBuilder: (context, index) {
          final expression = expressions[index];
          return ListTile(
            title: Text(expression.expressionEn),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('Meaning (EN): ${expression.meaningEn}'),
                Text('Meaning (AR): ${expression.meaningAr}'),
                 Text('Sentence (EN): ${expression.sentenceEn}'),
                 Text('Sentence (AR): ${expression.sentenceAr}'),
              ],
            ),
          );
        },
      ),
    );
  }
}