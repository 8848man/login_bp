abstract class IAuthRepository<Input, Output> {
  Future<Output> login(Input data);
  Future<bool> logout();
}
