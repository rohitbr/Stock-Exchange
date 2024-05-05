import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_data.freezed.dart';
part 'stock_data.g.dart';

@freezed
class StockData with _$StockData {
  const factory StockData({
    @JsonKey(name: '1. open') String? open,
    @JsonKey(name: '2. high') String? high,
    @JsonKey(name: '3. low') String? low,
    @JsonKey(name: '4. close') String? close,
    @JsonKey(name: '5. volume') String? volume,
  }) = _StockData;

  factory StockData.fromJson(Map<String, dynamic> json) =>
      _$StockDataFromJson(json);
}
