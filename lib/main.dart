import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            // First section
            SliverPersistentHeader(
              pinned: true,
              delegate: StickyHeader(
                minHeight: 50,
                maxHeight: 100,
                child: Container(
                  color: Colors.red,
                  child: const Center(
                    child: Text('Section 1'),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Content for Section 1'),
                ),
              ),
            ),
            // Second section
            SliverPersistentHeader(
              pinned: true,
              delegate: StickyHeader(
                minHeight: 50,
                maxHeight: 100,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text('Section 2'),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text('Content for Section 2'),
                ),
              ),
            ),
            // Third section
            SliverPersistentHeader(
              pinned: true,
              delegate: StickyHeader(
                minHeight: 50,
                maxHeight: 100,
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Section 3'),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Content for Section 3'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StickyHeader extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  StickyHeader({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
