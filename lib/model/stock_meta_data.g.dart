// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_meta_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockMetaDataImpl _$$StockMetaDataImplFromJson(Map<String, dynamic> json) =>
    _$StockMetaDataImpl(
      information: json['1. Information'] as String?,
      symbol: json['2. Symbol'] as String?,
      lastRefreshed: json['3. Last Refreshed'] as String?,
      interval: json['4. Interval'] as String?,
      outputSize: json['5. Output Size'] as String?,
      timeZone: json['6. Time Zone'] as String?,
    );

Map<String, dynamic> _$$StockMetaDataImplToJson(_$StockMetaDataImpl instance) =>
    <String, dynamic>{
      '1. Information': instance.information,
      '2. Symbol': instance.symbol,
      '3. Last Refreshed': instance.lastRefreshed,
      '4. Interval': instance.interval,
      '5. Output Size': instance.outputSize,
      '6. Time Zone': instance.timeZone,
    };
