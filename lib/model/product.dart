class Product {
  String? uuid;
  String? name;
  String? description;
  int? rank;
  String? status;
  bool? justDropped;
  List<String>? imageUrls;
  bool? isDeleted;
  String? seo;
  String? createdAt;
  String? updatedAt;

  Product(
      {this.uuid,
        this.name,
        this.description,
        this.rank,
        this.status,
        this.justDropped,
        this.imageUrls,
        this.isDeleted,
        this.seo,
        this.createdAt,
        this.updatedAt});

  Product.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    description = json['description'];
    rank = json['rank'];
    status = json['status'];
    justDropped = json['justDropped'];
    imageUrls = json['imageUrls'].cast<String>();
    isDeleted = json['isDeleted'];
    seo = json['seo'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uuid'] = uuid;
    data['name'] = name;
    data['description'] = description;
    data['rank'] = rank;
    data['status'] = status;
    data['justDropped'] = justDropped;
    data['imageUrls'] = imageUrls;
    data['isDeleted'] = isDeleted;
    data['seo'] = seo;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}