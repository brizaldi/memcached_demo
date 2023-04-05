import 'package:memcache/memcache.dart';
import 'package:memcache/memcache_raw.dart';

void main(List<String> arguments) async {
  final memcached = Memcache.fromRaw(BinaryMemcacheProtocol('127.0.0.1', 11211));

  for (var i = 0; i < 10; i++) {
    final key = 'key$i';

    final value = await memcached.get(key);

    print('GET key: $key, value: $value');
  }
}
