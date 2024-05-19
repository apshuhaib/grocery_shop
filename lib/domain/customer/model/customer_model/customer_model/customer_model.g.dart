// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    CustomerModel(
      customerData:
          CustomerData.fromJson(json['customerData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'customerData': instance.customerData,
    };

CustomerData _$CustomerDataFromJson(Map<String, dynamic> json) => CustomerData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      profilePic: json['profile_pic'] as String?,
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

Map<String, dynamic> _$CustomerDataToJson(CustomerData instance) =>
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
