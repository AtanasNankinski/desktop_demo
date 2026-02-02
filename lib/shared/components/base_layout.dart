import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget title;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const BaseLayout({
    super.key,
    this.padding,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Center(child: title),
      ),
      body: SafeArea(
        child: LayoutBuilder(
            builder: (context, constraints) => CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        ConstrainedBox(
                          constraints: BoxConstraints(minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: padding ?? EdgeInsets.zero,
                              child: child,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}