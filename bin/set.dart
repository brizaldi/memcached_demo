import 'package:memcache/memcache.dart';
import 'package:memcache/memcache_raw.dart';

void main(List<String> arguments) async {
  final memcached = Memcache.fromRaw(BinaryMemcacheProtocol('127.0.0.1', 11211));

  for (var i = 0; i < 10; i++) {
    final key = 'key$i';
    final value = 'data$i';

    memcached.set(key, value, expiration: const Duration(seconds: 10));

    print('SET key: $key, value: $value');
  }
}
