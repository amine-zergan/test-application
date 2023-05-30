abstract class UsesCases<T, Params> {
  Future<T> call(Params params);
}
