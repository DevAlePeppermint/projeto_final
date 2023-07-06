import 'package:flutter/material.dart';
import '../../../../components/text_secondary.dart';

class TrainRow extends StatelessWidget {
  final int trainsUnits;

  const TrainRow({
    super.key,
    required this.trainsUnits  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        children: [
          for (var i = 0; i < trainsUnits; i++)
            SizedBox(
              height: 37,
              width: 37,
              child: Image.asset('lib/assets/trem-de-brinquedo.png')
            ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.add, color: Colors.blue)
            )
          ),
          TextSecondary(text:'0'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              focusColor: Colors.pink.withOpacity(0.3),
              onPressed: () {},
              icon: Icon(Icons.remove,  color: Colors.red)
            )
          )
        ],
      ),
    );
  }
}