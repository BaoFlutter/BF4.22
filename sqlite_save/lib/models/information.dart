class Information {
  int? id;
  String? average_mark;
  String? adjustment;

  Information({ required this.id, required this.average_mark, required this.adjustment});

  // from Json

  Information.fromJson(Map json):
      this.id = json['id'],
      this.average_mark = json['average_mark'],
      this.adjustment = json['adjustment'];


 // toJson
  toJson(){
    return {
      'id': this.id,
      'average_mark': this.average_mark,
      'adjustment' : this.adjustment
    };
  }


}