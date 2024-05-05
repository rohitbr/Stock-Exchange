import 'dart:async';

import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_exchange/network/stock_data_client.dart';

import '../model/stock_response.dart';
import '../services/converter_service.dart';
import 'package:flutter/services.dart' show rootBundle;

const jsonFilePath = 'assets/static_data.json';

class HomePageViewModel extends StateNotifier<List<StockResponse>> {
  HomePageViewModel({
    required List<StockResponse> state,
    required this.previousStateProvider,
  }) : super(state);

  final StateController<List<StockResponse>?> previousStateProvider;

  void updateState(List<StockResponse> newState) {
    previousStateProvider.state = state;
    state = newState;
  }

  static List<String> get stockSymbols =>
      const ['AAPL', 'GOOGL', 'TSLA', 'AMZN', 'IBM'];
  final apiKeyForStocks = 'PD9UY5ELD2GWNQ9R';

  // https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=ACA&interval=5min&apikey=PD9UY5ELD2GWNQ9R

  Future<void> getStockData() async {
    List<StockResponse> tempState = [];
    for (final symbol in stockSymbols) {
      final stockDataClient = StockDataClient(
        baseUrl: 'https://www.alphavantage.co/query',
        queryParameters: {
          'function': 'TIME_SERIES_INTRADAY',
          'symbol': symbol,
          'interval': '5min',
          'apikey': apiKeyForStocks,
        },
      );

      final stockData = await stockDataClient.getStockData();
      if (stockData != null) {
        final stockResponse =
            ConverterService().convertStockResponse(stockData);
        tempState = [...state, stockResponse];
      }
    }
    state = tempState;
    updateState(state);
  }

  // Only for mock data when the number of attempts
  // to get data using API is exhaused.
  Future<List<StockResponse>> getMockData(
      {String filePath = jsonFilePath}) async {
    final String jsonString = await rootBundle.loadString(filePath);
    final data = jsonDecode(jsonString);
    final stockResponse = ConverterService().convertStockResponse(data);
    if (state.isEmpty) {
      // add delay
      await Future.delayed(const Duration(seconds: 5));
    }
    updateState([
      // Simulate 5 mock symbols.
      stockResponse,
      stockResponse,
      stockResponse,
      stockResponse,
      stockResponse
    ]);
    return state;
  }
}

final homePageViewModelProvider =
    StateNotifierProvider<HomePageViewModel, List<StockResponse>>((ref) {
  return HomePageViewModel(
      state: [],
      previousStateProvider: ref.watch(previousStateProvider.notifier));
});

final previousStateProvider =
    StateProvider<List<StockResponse>?>((ref) => null);
