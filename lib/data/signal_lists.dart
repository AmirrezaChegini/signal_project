import 'package:signal_project/data/models/signal.dart';

List<Signal> signalLists() {

  Signal alchemyPay = Signal(
    'Alchemy Pay',
    'assets/images/a.png',
    '15000',
    '15700',
  );

  Signal cosmos = Signal(
    'Cosmos',
    'assets/images/c.png',
    '17000',
    '17300',
  );

  Signal ripple = Signal(
    'Ripple',
    'assets/images/r.png',
    '12000',
    '12900',
  );

  Signal safeMoon = Signal(
    'Safe Moon',
    'assets/images/s.png',
    '13400',
    '14000',
  );

  List<Signal> signalLists = [alchemyPay, cosmos, ripple, safeMoon];

  return signalLists;

}
