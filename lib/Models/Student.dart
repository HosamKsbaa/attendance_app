class Student {
  String? iD;

  Student({this.iD});

  Student.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    return data;
  }
}