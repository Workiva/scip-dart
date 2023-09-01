import 'package:args/args.dart';

class Flags {
  bool get verbose => _verbose;
  bool _verbose = false;

  bool get performance => _performance;
  bool _performance = false;

  bool get indexRelationships => _indexRelationships;
  bool _indexRelationships = false;

  void init(ArgResults results) {
    _verbose = results['verbose'] as bool? ?? false;
    _performance = results['performance'] as bool? ?? false;
    _indexRelationships = results['index-relationships'] as bool? ?? false;
  }

  static Flags get instance => _instance;
  static final Flags _instance = Flags._();
  Flags._();
}
