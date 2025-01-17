import 'package:equatable/equatable.dart';

enum Flavor {
  dev,
  prod,
}

class FlavorConfig extends Equatable {
  final Flavor flavor;

  const FlavorConfig({
    required this.flavor,
  });

  String get title {
    switch (flavor) {
      case Flavor.dev:
        return '[dev] cosmoplay';
      case Flavor.prod:
        return 'cosmoplay';
    }
  }

  @override
  List<Object?> get props => [
        flavor,
      ];
}
