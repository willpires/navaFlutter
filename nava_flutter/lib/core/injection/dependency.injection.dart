import 'package:get_it/get_it.dart';

import '../../feature/signin/data/repositories/auth_repository.dart';
import '../../feature/signin/presentation/page/bloc/auth_bloc.dart';


final getItInstance = GetIt.instance;

Future<void> init() async {

  getItInstance.registerFactory(
    () => AuthBloc(
      athRepository: getItInstance(),
    ),
  );

  getItInstance.registerLazySingleton(() => AuthRepository(),);
}
