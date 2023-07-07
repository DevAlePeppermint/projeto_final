import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'ticket_to_ride_provider.dart';

class RootProvider {
    static List<SingleChildWidget> providers() {
    return [
      ChangeNotifierProvider(create: (_) => TicketToRideProvider()),
    ];
  }
}