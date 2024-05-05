// {
//         "1. Information": "Intraday (5min) open, high, low, close prices and volume",
//         "2. Symbol": "IBM",
//         "3. Last Refreshed": "2024-04-25 19:55:00",
//         "4. Interval": "5min",
//         "5. Output Size": "Compact",
//         "6. Time Zone": "US/Eastern"
//     }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_meta_data.freezed.dart';
part 'stock_meta_data.g.dart';

@freezed
class StockMetaData with _$StockMetaData {
  const factory StockMetaData({
    @JsonKey(name: '1. Information') String? information,
    @JsonKey(name: '2. Symbol') String? symbol,
    @JsonKey(name: '3. Last Refreshed') String? lastRefreshed,
    @JsonKey(name: '4. Interval') String? interval,
    @JsonKey(name: '5. Output Size') String? outputSize,
    @JsonKey(name: '6. Time Zone') String? timeZone,
  }) = _StockMetaData;

  factory StockMetaData.fromJson(Map<String, dynamic> json) =>
      _$StockMetaDataFromJson(json);
}
