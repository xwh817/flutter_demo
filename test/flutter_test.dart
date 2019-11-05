import 'package:flutter_test/flutter_test.dart';



  Future<String> getStringAsync() async {
    return Future.delayed(
      Duration(seconds: 5), (){
        return '123';
    }).then((re){
      return 'after delayed! $re';
    });
  }

  Future<String> testAsync() async {
    print('hello 1');

    String test = await getStringAsync();
    print("get by await: " + test);

    // 为什么then里面的没有执行。。。
    getStringAsync().then((re){
      print("get by then: $re");
    });

    print('hello 2');

    return 'hello 3';
  }

void main() {
  test('test async', () async {
    String str = await testAsync();
    print(str);
  });

 
}

