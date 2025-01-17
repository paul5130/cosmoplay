import 'package:cosmoplay/app.dart';
import 'package:cosmoplay/bootstrap.dart';
import 'package:cosmoplay/flavors.dart';

void main() => bootstrap(
      flavor: Flavor.prod,
      builder: ({required initialBinding}) =>
          App(initialBinding: initialBinding),
    );
