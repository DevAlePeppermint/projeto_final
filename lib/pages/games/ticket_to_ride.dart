import 'package:flutter/material.dart';
import 'package:projeto_final/components/button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TicketToRideScore extends StatefulWidget {
  const TicketToRideScore({super.key});

  @override
  State<TicketToRideScore> createState() => _TicketToRideScoreState();
}

class _TicketToRideScoreState extends State<TicketToRideScore> {
  int carouselItemFocused = 0;
  List<Widget> CarrouselItems = [
    Text('hello'),
    Text('bye bye')
  ];

  void onCarouselPageChange (newIndex, reason) {
    setState(() {
      carouselItemFocused = newIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back)),
                Text('Voltar'),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.check)),
                Text('Concluir'),
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red
              ),
              child: Column(
                children: [
                  CarouselSlider(
                    items: CarrouselItems,
                    options: CarouselOptions(
                      height: 400,
                      enableInfiniteScroll: false,
                      onPageChanged: onCarouselPageChange
                      ,
                    ),
                  ),
                  Text(carouselItemFocused.toString())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Button(text: 'adicionar jogador', onPressed: () {},),
            ),          
          ],
        ),
      )
    );
  }
}