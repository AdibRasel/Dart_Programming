import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResponsiveGrid extends StatelessWidget {
  const ResponsiveGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Grid'),
      ),
      body: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 3, lg: 4, md: 6, sm: 8, xs: 12,
            child: Container(
              color: Colors.red,
              height: 100,
            ),
          ),
          ResponsiveGridCol(
            xl: 3, lg: 4, md: 6, sm: 8, xs: 12,
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          ResponsiveGridCol(
            xl: 3, lg: 4, md: 6, sm: 8, xs: 12,
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          ResponsiveGridCol(
            xl: 3, lg: 4, md: 6, sm: 8, xs: 12,
            child: Container(
              color: Colors.orange,
              height: 100,
            ),
          ),
          
        ],
      ),
    );
  }
}