import 'package:flutter/material.dart';
import 'package:projeto_final/app_routes.dart';
import 'package:projeto_final/components/button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projeto_final/pages/games/ticket_to_ride/components/goals_counter.dart';
import 'package:projeto_final/pages/games/ticket_to_ride/components/train_counter.dart';
import 'package:provider/provider.dart';
import '../../../components/breadcrumbs_component.dart';
import '../../../providers/ticket_to_ride_provider.dart';

class TicketToRideScore extends StatefulWidget {
  const TicketToRideScore({super.key});

  @override
  State<TicketToRideScore> createState() => _TicketToRideScoreState();
}

class _TicketToRideScoreState extends State<TicketToRideScore> {
  late TicketToRideProvider store;
  int carouselItemFocused = 0;
  List<Widget> CarrouselItems = [
    const TrainCounter(),
    const GoalsCounter()
  ];

  void onCarouselPageChange (newIndex, reason) {
    setState(() {
      carouselItemFocused = newIndex;
    });
  }

CarouselController a = CarouselController();

  void addPlayer () {
    store.addPlayer();
    debugPrint(store.namePlayer);
    debugPrint(store.activePlayer.toString());
  }

  dynamic handleAddPlayer() {
    addPlayer();
    setState(() {
      carouselItemFocused = 0;
    });
    a.jumpToPage(0);
  }

  void navigateBack() {
    Navigator.pop(context);
  }
  
  void navigateToConcluir() {
    Navigator.pushNamed(context, AppRoutes.ranking);
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<TicketToRideProvider>(context, listen: true);
    
    return Scaffold(
      backgroundColor: const Color(0xff27233a),
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
                  onPressed: navigateBack,
                  icon: const Icon(Icons.arrow_back, color: Color(0xfff5f5f5))),
                  const Text('Voltar', style: TextStyle(color: Color(0xfff5f5f5))),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                IconButton(
                  onPressed: navigateToConcluir,
                  icon: const Icon(Icons.check, color: Color(0xfff5f5f5))),
                const Text('Concluir', style: TextStyle(color: Color(0xfff5f5f5))),
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.indigo[50]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CarouselSlider(
                    items: CarrouselItems,
                    carouselController: a,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: 400,
                      enableInfiniteScroll: false,
                      onPageChanged: onCarouselPageChange
                      ,
                    ),
                  ),
                  BreadCrumbs(
                    crumbsSize: CarrouselItems.length,
                    activeIndex: carouselItemFocused
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Button(
                text: 'adicionar jogador',
                onPressed: carouselItemFocused == 1 ? handleAddPlayer : null,
              ),
            ),
          ],
        ),
      )
    );
  }
}