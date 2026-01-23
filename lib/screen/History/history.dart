import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_svg/svg.dart';
import 'package:ocrtextz/database/database.dart';
import 'package:ocrtextz/riverpod/service/historydb.dart';

import 'package:ocrtextz/screen/History/detail.dart';
import 'package:ocrtextz/widget/history/empty.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends ConsumerState<HistoryScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) =>
          ref.watch(historyDatabaseProvider.notifier).getAllHistory(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final futureHistoryDB = ref.watch(historyDatabaseProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            spacing: 10,
            children: [
              Text(
                "History",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontSize: 28),
              ),
              Text(
                'Collection all text from you scan image',
                style: Theme.of(context).textTheme.bodySmall,
              ),

              futureHistoryDB.when(
                data: (data) {
                  final dataHistoryList = data as List<HistoryItem>;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: dataHistoryList.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailHistory(
                              indexCard: index,
                              history: dataHistoryList[index],
                            ),
                          ),
                        ),
                        child: Hero(
                          tag: 'hero-cardhistory-$index',
                          child: Dismissible(
                            key: ValueKey('historyList-$index'),
                            onDismissed: (direction) => ref
                                .read(historyDatabaseProvider.notifier)
                                .deleteHistory(dataHistoryList[index].id),
                            background: Container(
                              padding: EdgeInsets.all(35),
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/Delete.svg',
                                colorFilter: ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            direction: DismissDirection.endToStart,

                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Text(
                                      dataHistoryList[0].result,
                                      maxLines: 4,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(height: 1.5),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },

                error: (error, stackTrace) => Expanded(
                  child: Center(
                    child: Text(
                      error.toString(),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.red),
                    ),
                  ),
                ),
                loading: () => Expanded(
                  child: Center(
                    child: CircularProgressIndicator(color: Color(0xfff2e4d9)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
