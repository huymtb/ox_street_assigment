class Pagination {
  int? page;
  int? pageSize;
  int? totalCount;

  Pagination({this.page, this.pageSize, this.totalCount});

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    totalCount = json['totalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page ?? 0;
    data['pageSize'] = pageSize ?? 0;
    data['totalCount'] = totalCount ?? 0;
    return data;
  }
}
