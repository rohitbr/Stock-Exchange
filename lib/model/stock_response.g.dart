// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockResponseImpl _$$StockResponseImplFromJson(Map<String, dynamic> json) =>
    _$StockResponseImpl(
      timeSeries: (json['Time Series (5min)'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, StockData.fromJson(e as Map<String, dynamic>)),
      ),
      metaData: json['Meta Data'] == null
          ? null
          : StockMetaData.fromJson(json['Meta Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StockResponseImplToJson(_$StockResponseImpl instance) =>
    <String, dynamic>{
      'Time Series (5min)': instance.timeSeries,
      'Meta Data': instance.metaData,
    };
