import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stock_exchange/viewmodel/homepage_viewmodel.dart';

import 'shimmer_widget.dart';
import 'stock_data_list_view.dart';
import '../services/timer.dart';

class StockHomePage extends ConsumerStatefulWidget {
  const StockHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _StockHomePageState createState() => _StockHomePageState();
}

class _StockHomePageState extends ConsumerState<StockHomePage> {
  bool isTimerPaused = false;

  bool showShimmer = false;

  TimerController? timerController;

  @override
  void initState() {
    super.initState();

    final homePageViewModel = ref.read(homePageViewModelProvider.notifier);

    homePageViewModel.getMockData();

    timerController = TimerController(
        duration: const Duration(seconds: 25),
        onTimerStarted: () {
          setState(() {
            showShimmer = true;
          });

          Timer(const Duration(seconds: 3), () {
            setState(() {
              showShimmer = false;
            });
          });

          homePageViewModel.getMockData();
        },
        onTimerPaused: () {
          print('Timer paused Call back');
        });
    timerController?.startTimer();
    isTimerPaused = false;
  }

  void playPauseTimerPressed() {
    if (isTimerPaused) {
      timerController?.startTimer();
      setState(() {
        isTimerPaused = false;
      });
    } else {
      timerController?.pauseTimer();
      setState(() {
        isTimerPaused = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Exchange App'),
        elevation: 4,
        actions: <Widget>[
          IconButton(
            icon: isTimerPaused
                ? const Icon(Icons.play_arrow)
                : const Icon(Icons.pause),
            onPressed: playPauseTimerPressed,
          ),
        ],
      ),
      body: showShimmer
          ? const ListViewShimmerWidget()
          : Consumer(
              builder: (context, ref, child) {
                final stockState = ref.watch(homePageViewModelProvider);
                final previousState = ref.watch(previousStateProvider);
                // see if the previous stock has increased or decreased

                return StockDataListView(
                  stockState: stockState,
                  previousState: previousState,
                );
              },
            ),
    );
  }
}
