import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  
  double _value1 = 6;
  double _value2 = 50;
  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Slider Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.volume_up,
                  size: 40,
                ),
                Expanded(


                  child: Slider(
                    value: _value1,
                    min: 1.0,
                    max: 20.0,
                    divisions: 10,
                    activeColor: Colors.green,
                    inactiveColor: Colors.orange,
                    label: 'Volume: $_value1',
                    onChanged: (double newValue) {
                      setState(() {
                        _value1 = newValue;
                      });
                    },
                  ),


                ),
              ],
            ),
            const SizedBox(height: 20),


            Slider(
              value: _value2,
              min: 0,
              max: 100,
              divisions: 5,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
              label: 'Progress: $_value2%',
              onChanged: (double newValue) {
                setState(() {
                  _value2 = newValue;
                });
              },
            ),


            const SizedBox(height: 20),


            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),

            
          ],
        ),
      ),
    );
  }
}