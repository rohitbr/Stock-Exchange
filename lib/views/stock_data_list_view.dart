import 'package:flutter/material.dart';

import '../viewmodel/homepage_viewmodel.dart';
import '../model/stock_response.dart';
import 'stock_detail_view.dart';
import 'stock_list_item.dart';

class StockDataListView extends StatelessWidget {
  const StockDataListView(
      {this.previousState, required this.stockState, super.key});

  final List<StockResponse> stockState;
  final List<StockResponse>? previousState;

  @override
  Widget build(BuildContext context) {
    return (stockState.isEmpty)
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: stockState.length,
            itemBuilder: (context, index) {
              // Previous state
              final previousStateAtIndex = (previousState?.length ?? 0) > index
                  ? previousState![index]
                  : null;
              final previousTimeSeries = previousStateAtIndex?.timeSeries;
              final firstElementPreviousTimeSeries =
                  previousTimeSeries?.entries.first;
              // Current State
              final reponseAtIndex = stockState[index];
              final timeSeries = reponseAtIndex.timeSeries;
              final firstElement = timeSeries?.entries.first;

              // Compare previous and current state open value
              // convert string to double
              final previousOpenValue = double.tryParse(
                      firstElementPreviousTimeSeries?.value.open ?? '0') ??
                  0;
              final currentOpenValue =
                  double.tryParse(firstElement?.value.open ?? '0') ?? 0;

              print(
                  'previousOpenValue: $previousOpenValue, currentOpenValue: $currentOpenValue');

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StockDetailView(
                                stockResponse: reponseAtIndex,
                              )));
                },
                child: StockListItem(
                  title:
                      '${HomePageViewModel.stockSymbols[index]} - ${firstElement?.value.open ?? 'No data'}',
                  showNoIcon: previousOpenValue == 0,
                  showHighIcon: currentOpenValue > previousOpenValue,
                  showEqualIcon: currentOpenValue == previousOpenValue,
                ),
              );
            },
          );
  }
}
