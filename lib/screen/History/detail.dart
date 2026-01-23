import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocrtextz/database/database.dart';

class DetailHistory extends StatelessWidget {
  final int indexCard;
  final HistoryItem history;
  const DetailHistory({
    super.key,
    required this.indexCard,
    required this.history,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        actionsPadding: EdgeInsets.only(right: 12),
        actions: [
          Text('18-2-2025', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Hero(
            tag: 'hero-cardhistory-$indexCard',
            child: SingleChildScrollView(
              child: SelectableText(
                history.result,
                cursorColor: Color(0xffefe8de),
                selectionColor: Color(0xffefe8de),
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
