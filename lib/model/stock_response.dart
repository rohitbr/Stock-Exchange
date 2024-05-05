import 'package:freezed_annotation/freezed_annotation.dart';
import 'stock_data.dart';
import 'stock_meta_data.dart';

part 'stock_response.freezed.dart';
part 'stock_response.g.dart';

@freezed
class StockResponse with _$StockResponse {
  factory StockResponse({
    @JsonKey(name: 'Time Series (5min)') Map<String, StockData>? timeSeries,
    @JsonKey(name: 'Meta Data') StockMetaData? metaData,
  }) = _StockResponse;

  factory StockResponse.fromJson(Map<String, dynamic> json) =>
      _$StockResponseFromJson(json);
}
