import '../models/entity.dart';

/**
 * Interface Generica
 */
class Repository<T extends Entity, ID> {
  T cadastrar(T o) {
    return null;
  }

  T alterar(T o) {
    return null;
  }

  void excluir(T obj) {
    return null;
  }

  T buscarPorID(ID obj) {
    return null;
  }

  List<T> buscarTodos() {
    return null;
  }
}
