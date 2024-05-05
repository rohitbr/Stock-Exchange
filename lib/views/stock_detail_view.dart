import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphic/graphic.dart';
import 'package:stock_exchange/model/stock_response.dart';

class StockDetailView extends ConsumerStatefulWidget {
  const StockDetailView({
    super.key,
    required this.stockResponse,
  });

  final StockResponse stockResponse;

  @override
  // ignore: library_private_types_in_public_api
  _StockDetailViewState createState() => _StockDetailViewState();
}

class _StockDetailViewState extends ConsumerState<StockDetailView> {
  @override
  Widget build(BuildContext context) {
    final list = widget.stockResponse.timeSeries?.entries.map((e) {
          return {
            'date': e.key,
            'openValue': e.value.open,
          };
        }).toList() ??
        [];

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: const Text('Stock Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                  'Stock Symbol: ${widget.stockResponse.metaData?.symbol}',
                  style: const TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 20),
            Expanded(
              // height: mediaQuery.size.height * 0.5,
              child: Chart(
                data: list,
                variables: {
                  'date': Variable(
                    accessor: (Map map) => map['date'] as String,
                  ),
                  'openValue': Variable(
                    accessor: (Map map) => map['openValue'] as String,
                  ),
                },
                marks: [IntervalMark()],
                axes: [
                  // Defaults.horizontalAxis,
                  Defaults.verticalAxis,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
