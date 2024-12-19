class Expression {
  int? id;
  String expressionEn;
  String meaningEn;
  String meaningAr;
  String sentenceEn;
  String sentenceAr;

  Expression({
    this.id,
    required this.expressionEn,
    required this.meaningEn,
    required this.meaningAr,
    required this.sentenceEn,
    required this.sentenceAr,
  });

  // Factory method to create an Expression from a map (e.g., from a database)
  factory Expression.fromMap(Map<String, dynamic> map) {
    return Expression(
      id: map['id'],
      expressionEn: map['expression_en'],
      meaningEn: map['meaning_en'],
      meaningAr: map['meaning_ar'],
      sentenceEn: map['sentence_en'],
      sentenceAr: map['sentence_ar'],
    );
  }

  // Convert an Expression to a map for storage (e.g., to a database)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'expression_en': expressionEn,
      'meaning_en': meaningEn,
      'meaning_ar': meaningAr,
      'sentence_en': sentenceEn,
      'sentence_ar': sentenceAr,
    };
  }
}