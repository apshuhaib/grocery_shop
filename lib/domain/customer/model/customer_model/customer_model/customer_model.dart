import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel {
  @JsonKey(name: 'customerData')
  CustomerData customerData;

  CustomerModel({required this.customerData});

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}

@JsonSerializable()
class CustomerData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'profile_pic')
  String? profilePic;

  @JsonKey(name: 'mobile_number')
  String? mobileNumber;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'street')
  String? street;

  @JsonKey(name: 'street_two')
  String? streetTwo;

  @JsonKey(name: 'city')
  String? city;

  @JsonKey(name: 'pincode')
  int? pincode;

  @JsonKey(name: 'country')
  String? country;

  @JsonKey(name: 'state')
  String? state;

  @JsonKey(name: 'created_date')
  String? createdDate;

  @JsonKey(name: 'created_time')
  String? createdTime;

  @JsonKey(name: 'modified_date')
  String? modifiedDate;

  @JsonKey(name: 'modified_time')
  String? modifiedTime;
  bool? flag;

  CustomerData({
    this.id,
    this.name,
    this.profilePic,
    this.mobileNumber,
    this.email,
    this.street,
    this.streetTwo,
    this.city,
    this.pincode,
    this.country,
    this.state,
    this.createdDate,
    this.createdTime,
    this.modifiedDate,
    this.modifiedTime,
    this.flag,
  });

  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDataToJson(this);
}
