import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyHistory extends StatelessWidget {
  const EmptyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            SvgPicture.asset('assets/illustration/EmptyScan.svg'),
            Text(
              'History is empty',
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(fontSize: 16),
            ),
            SizedBox(
              child: Text(
                'Your scanned text will appear here \n after you process an image.',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
