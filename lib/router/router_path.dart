part of './lib.dart';

enum RouterPath {
  //최상위
  splash('/', '/'),
  login('/login', 'login'),
  home('/home', 'home');

  const RouterPath(this.path, this.name);
  final String path;
  final String name;
}
