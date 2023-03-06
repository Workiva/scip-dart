import 'package:args/args.dart';

class Flags {
  bool get verbose => _verbose;
  bool _verbose = false;

  bool get performance => _performance;
  bool _performance = false;

  List<String> get paths => _paths;
  List<String> _paths = [];

  void init(ArgResults results) {
    _verbose = results['verbose'] ?? false;
    _performance = results['performance'] ?? false;
    _paths = (results['path'] as Iterable<String>?)?.toList() ?? [];
  }

  static Flags get instance => _instance;
  static final Flags _instance = Flags._();
  Flags._();
}
