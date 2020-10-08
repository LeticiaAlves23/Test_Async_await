import '../models/entity.dart';
import 'repository.dart';

class RepositoryImpl<T extends Entity, ID> implements Repository<T, ID> {
  List<T> _lista = List<T>();

  List<T> get lista => _lista;

  T get id => null;

  @override
  T cadastrar(T obj) {
    _lista.add(obj);
    return obj;
  }

  @override
  T alterar(T o) {
    print(o.id);
    //Verificar se existe na lista
    var index = _lista.indexWhere((element) => element.id == o.id);

    _lista.setAll(index, [o]);

    return o;
  }

  @override
  T buscarPorID(ID obj) {
    return id;
  }

  @override
  void excluir(T obj) {
    _lista.remove(obj);
  }

  @override
  List<T> buscarTodos() {
    return lista;
  }
}
