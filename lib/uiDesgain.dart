import 'package:flutter/material.dart';

class uiDesgain extends StatefulWidget {
  const uiDesgain({super.key});

  @override
  State<uiDesgain> createState() => _uiDesgainState();
}

class _uiDesgainState extends State<uiDesgain> {
  String _selectedAnimalImage = ' ';

  void _showAnimal(String imagePath) {
    setState(() {
      _selectedAnimalImage = imagePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Image Path Sir Task')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _selectedAnimalImage.isEmpty
              ? Image.asset(
                  _selectedAnimalImage,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                )
              : Text(
                  'No Animal',
                  style: TextStyle(fontSize: 24),
                ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => _showAnimal('images/catbirali.jpeg'),
                  child: Text('Catbirali')),
              ElevatedButton(
                  onPressed: () => _showAnimal('images/ele.jpeg'),
                  child: Text('ele')),
              ElevatedButton(
                  onPressed: () => _showAnimal('images/goat.jpeg'),
                  child: Text('cat')),
            ],
          )
        ],
      ),
    );
  }
}
