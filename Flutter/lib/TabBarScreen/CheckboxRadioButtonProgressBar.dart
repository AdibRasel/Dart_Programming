import 'package:flutter/material.dart';

class CheckboxRadioButtonProgressBar extends StatefulWidget {
  const CheckboxRadioButtonProgressBar({super.key});

  @override
  _CheckboxRadioButtonProgressBarState createState() => _CheckboxRadioButtonProgressBarState();
}

class _CheckboxRadioButtonProgressBarState extends State<CheckboxRadioButtonProgressBar> {
  
  bool isChecked = false;
  String selectedRadio = '';
  double progressValue = 0.3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox, Radio & ProgressBar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            // Checkbox
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text('Check this box'),
              ],
            ),
            
            const SizedBox(height: 20),
            
            // Radio Buttons
            Column(
              children: [
                ListTile(
                  title: const Text('Option 1'),
                  leading: Radio(
                    value: 'Option 1',
                    groupValue: selectedRadio,
                    onChanged: (String? value) {
                      setState(() {
                        selectedRadio = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Option 2'),
                  leading: Radio(
                    value: 'Option 2',
                    groupValue: selectedRadio,
                    onChanged: (String? value) {
                      setState(() {
                        selectedRadio = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            
            // Progress Bar
            Column(
              children: [
                LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: Colors.grey[300],
                  color: Colors.blue,
                  minHeight: 10,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      progressValue += 0.1;
                      if (progressValue > 1.0) {
                        progressValue = 0.0;
                      }
                    });
                  },
                  child: const Text('Increase Progress'),
                ),
              ],
            ),



            
          ],
        ),
      ),
    );
  }
}
