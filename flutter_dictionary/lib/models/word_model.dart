class WordModel {
  // các thuộc tính : chính là các cột trong Database
  int? word_id;
  String? word;
  String? pronounce;
  String? meaning;

  WordModel({
    required this.word_id,
    required this.word,
    required this.pronounce,
    required this.meaning
 });

  // From Json , To Json
  WordModel.fromJson(Map json):
    this.word_id = json['word_id'],
    this.word = json['word'],
    this.meaning = json['meaning'],
    this.pronounce = json['pronounce'];

  // To Json
  toJson(){
    return {
      'word_id': this.word_id,
      'word': this.word,
      'pronounce': this.pronounce,
      'meaning': this.meaning
    };
  }






}

