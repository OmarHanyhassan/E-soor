class Category {
  int id;
  String name;

  Category({
    this.id,
    this.name,
  });

  int get _id => id;
  String get _name => name;

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map['name'] = _name;
    if (_id != null) {
      map['id'] = _id;
    }

    return map;
  }

  Category.fromObject(dynamic object) {
    this.id = object['id'];
    this.name = object['name'];
  }
}
