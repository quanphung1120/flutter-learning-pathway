// Module 15: Adaptive Layouts
// adaptive_layout.dart using LayoutBuilder to inspect constraints.maxWidth

import 'package:flutter/cupertino.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.primaryChild,
    required this.secondaryChild,
  });

  final Widget primaryChild;
  final Widget secondaryChild;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // Wide Viewport: Dual-column split layout
          return Row(
            children: [
              SizedBox(
                width: 300,
                child: primaryChild,
              ),
              Expanded(child: secondaryChild),
            ],
          );
        } else {
          // Narrow Viewport: Single column layout
          return primaryChild;
        }
      },
    );
  }
}
