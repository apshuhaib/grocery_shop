import 'package:json_annotation/json_annotation.dart';
part 'customer_response.g.dart';

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: 'data')
  List<CustomerResultData> data;

  CustomerResponse({this.data = const []});

  factory CustomerResponse.fromJson(Map<String, dynamic> json) {
    return _$CustomerResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class CustomerResultData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profile_pic')
  dynamic profilePic;
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
  @JsonKey(name: 'flag')
  bool? flag;

  CustomerResultData({
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

  factory CustomerResultData.fromJson(Map<String, dynamic> json) =>
      _$CustomerResultDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResultDataToJson(this);
}
