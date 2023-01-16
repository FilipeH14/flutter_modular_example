import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';

class CategoriaModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind((i) => CategoriaController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoriaPage(categoria: args.data),
        ),
      ];
}
