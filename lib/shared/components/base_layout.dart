import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget title;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool hasIntrinsicHeight;

  const BaseLayout({
    super.key,
    this.padding,
    required this.title,
    required this.child,
    this.hasIntrinsicHeight = true,
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
            builder: (context, constraints) => customScrollView(constraints: constraints)
        ),
      ),
    );
  }

  CustomScrollView customScrollView({required BoxConstraints constraints}) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
              [
                hasIntrinsicHeight ? ConstrainedBox(
                  constraints: BoxConstraints(minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: padding ?? EdgeInsets.zero,
                      child: child,
                    ),
                  ),
                ) : Padding(
                  padding: padding ?? EdgeInsets.zero,
                  child: child,
                ),
              ]
          ),
        ),
      ],
    );
  }
}