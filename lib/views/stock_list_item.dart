import 'package:flutter/material.dart';

class StockListItem extends StatelessWidget {
  const StockListItem({
    super.key,
    required this.title,
    required this.showHighIcon,
    required this.showEqualIcon,
    required this.showNoIcon,
  });

  final String title;

  final bool showHighIcon;

  final bool showEqualIcon;

  final bool showNoIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      child: ListTile(
        leading: const Icon(Icons.paid_sharp),
        trailing: showNoIcon ? const SizedBox.shrink() : trailingWidget(),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }

  Widget trailingWidget() {
    return showEqualIcon
        ? const Icon(Icons.swap_vertical_circle_outlined)
        : showHighIcon
            ? const Icon(Icons.arrow_upward)
            : const Icon(
                Icons.arrow_downward,
              );
  }
}
