abstract class IStoreRepository<T> {
  Future<void> addItem(T item);
  Future<T?> getItem(String id);
  Future<void> updateItem(T item);
  Future<void> deleteItem(T item);
  Future<List<T>> listItems();
  Stream<List<T>> streamItems();
}
