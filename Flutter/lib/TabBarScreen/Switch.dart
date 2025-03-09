import 'package:flutter/material.dart';



class FlutterSwitch extends StatefulWidget {
  const FlutterSwitch({super.key});

  @override
  _FlutterSwitchState createState() => _FlutterSwitchState();
}

class _FlutterSwitchState extends State<FlutterSwitch> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Switch Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            // Simple Switch
            SwitchListTile(
              title: Text('Simple Switch'),
              value: isSwitched1,
              onChanged: (value) {
                setState(() {
                  isSwitched1 = value;
                });
              },
            ),
            

            // Switch with Custom Colors
            Switch(
              value: isSwitched2,
              onChanged: (value) {
                setState(() {
                  isSwitched2 = value;
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.lightGreenAccent,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.redAccent,
            ),
            Text(isSwitched2 ? 'ON' : 'OFF', style: TextStyle(fontSize: 18)),
            

            // Switch with Icon Change
            Column(
              children: [
                Icon(
                  isSwitched3 ? Icons.lightbulb : Icons.lightbulb_outline,
                  size: 50,
                  color: isSwitched3 ? Colors.yellow : Colors.grey,
                ),
                Switch(
                  value: isSwitched3,
                  onChanged: (value) {
                    setState(() {
                      isSwitched3 = value;
                    });
                  },
                ),
              ],
            ),
            


            // Large Switch with Scale
            Transform.scale(
              scale: 2,
              child: Switch(
                value: isSwitched4,
                onChanged: (value) {
                  setState(() {
                    isSwitched4 = value;
                  });
                },
              ),
            ),
            Text('Large Switch', style: TextStyle(fontSize: 18)),



            
          ],
        ),
      ),
    );
  }
}
