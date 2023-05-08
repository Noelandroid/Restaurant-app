import 'package:testpro/provider.dart';

import 'model.dart';

class Repository {
  final menuprovider = MenuProvider();
  Future<List<Menulist>> getmenulist() => menuprovider.getmenulist();
}
