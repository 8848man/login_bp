abstract class IStorage {
  /// key에 대응하는 String 값 저장
  Future<void> write(String key, String value);

  /// key에 대응하는 String 값 읽기
  Future<String?> read(String key);

  /// key 삭제
  Future<void> delete(String key);

  /// 모든 데이터 삭제
  Future<void> clear();
}
