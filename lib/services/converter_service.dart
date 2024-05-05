import '../model/stock_response.dart';

class ConverterService {
  StockResponse convertStockResponse(Map<String, dynamic> response) {
    return StockResponse.fromJson(response);
  }
}
