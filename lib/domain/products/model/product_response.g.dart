// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ResultData _$ResultDataFromJson(Map<String, dynamic> json) => ResultData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toInt(),
      createdDate: json['created_date'] as String?,
      createdTime: json['created_time'] as String?,
      modifiedDate: json['modified_date'] as String?,
      modifiedTime: json['modified_time'] as String?,
      flag: json['flag'] as bool?,
    );

Map<String, dynamic> _$ResultDataToJson(ResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'created_date': instance.createdDate,
      'created_time': instance.createdTime,
      'modified_date': instance.modifiedDate,
      'modified_time': instance.modifiedTime,
      'flag': instance.flag,
    };
