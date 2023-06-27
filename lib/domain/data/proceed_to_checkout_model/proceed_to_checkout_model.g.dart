// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proceed_to_checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProceedToCheckoutModel _$ProceedToCheckoutModelFromJson(
        Map<String, dynamic> json) =>
    ProceedToCheckoutModel(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProceedToCheckoutModelToJson(
        ProceedToCheckoutModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
