class ProductItems {
  ProductItems({
    this.items,
  });

  ProductItems.fromJson(dynamic json) {
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }
  List<Items>? items;
  ProductItems copyWith({
    List<Items>? items,
  }) =>
      ProductItems(
        items: items ?? this.items,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Items {
  Items({
    this.name,
    this.singer,
    this.image,
    this.fav,
  });

  Items.fromJson(dynamic json) {
    name = json['name'];
    singer = json['singer'];
    image = json['image'];
    fav = json['fav'];
  }
  String? name;
  String? singer;
  String? image;
  bool? fav;
  Items copyWith({
    String? name,
    String? singer,
    String? image,
    bool? fav,
  }) =>
      Items(
        name: name ?? this.name,
        singer: singer ?? this.singer,
        image: image ?? this.image,
        fav: fav ?? this.fav,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['singer'] = singer;
    map['image'] = image;
    map['fav'] = fav;
    return map;
  }
}
