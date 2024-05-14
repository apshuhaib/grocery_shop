// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) =>
    CustomerResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => CustomerResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CustomerResultData _$CustomerResultDataFromJson(Map<String, dynamic> json) =>
    CustomerResultData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profilePic: json['profile_pic'],
      mobileNumber: json['mobile_number'] as String?,
      email: json['email'] as String?,
      street: json['street'] as String?,
      streetTwo: json['street_two'] as String?,
      city: json['city'] as String?,
      pincode: (json['pincode'] as num?)?.toInt(),
      country: json['country'] as String?,
      state: json['state'] as String?,
      createdDate: json['created_date'] as String?,
      createdTime: json['created_time'] as String?,
      modifiedDate: json['modified_date'] as String?,
      modifiedTime: json['modified_time'] as String?,
      flag: json['flag'] as bool?,
    );

Map<String, dynamic> _$CustomerResultDataToJson(CustomerResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_pic': instance.profilePic,
      'mobile_number': instance.mobileNumber,
      'email': instance.email,
      'street': instance.street,
      'street_two': instance.streetTwo,
      'city': instance.city,
      'pincode': instance.pincode,
      'country': instance.country,
      'state': instance.state,
      'created_date': instance.createdDate,
      'created_time': instance.createdTime,
      'modified_date': instance.modifiedDate,
      'modified_time': instance.modifiedTime,
      'flag': instance.flag,
    };
