import 'package:stock_exchange/network/network_manager.dart';

class StockDataClient extends HttpClient {
  StockDataClient({
    required super.baseUrl,
    super.queryParameters,
  });

  Future<Map<String, dynamic>?> getStockData() async {
    final response = await get<Map<String, dynamic>>('');
    return response;
  }
}

// https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=ACA&interval=5min&apikey=PD9UY5ELD2GWNQ9R