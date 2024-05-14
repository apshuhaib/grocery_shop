import 'package:json_annotation/json_annotation.dart';
part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  @JsonKey(name: 'data')
  List<ResultData> data;

  ProductResponse({this.data = const []});

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}

@JsonSerializable()
class ResultData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'created_date')
  String? createdDate;
  @JsonKey(name: 'created_time')
  String? createdTime;
  @JsonKey(name: 'modified_date')
  String? modifiedDate;
  @JsonKey(name: 'modified_time')
  String? modifiedTime;
  bool? flag;

  ResultData({
    this.id,
    this.name,
    this.image,
    this.price,
    this.createdDate,
    this.createdTime,
    this.modifiedDate,
    this.modifiedTime,
    this.flag,
  });

  factory ResultData.fromJson(Map<String, dynamic> json) =>
      _$ResultDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResultDataToJson(this);
}
