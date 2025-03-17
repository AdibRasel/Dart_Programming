import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';


class ResponsiveGridBootstrap extends StatelessWidget {
  const ResponsiveGridBootstrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Grid Bootstrap'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BootstrapContainer(
          fluid: true,

          children: [
            BootstrapRow(
              height: 100,
              children: [
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.red, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.blue, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.black, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.yellow, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.orange, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.green, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.purple, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.amberAccent, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.blue, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.green, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.red, height: 100, ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container( color: Colors.blue, height: 100, ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
