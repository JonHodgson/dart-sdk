// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.7

import 'package:expect/expect.dart';

/*strong.class: global#JSArray:checkedInstance,checks=[$isIterable,$isList],instance*/
/*omit.class: global#JSArray:checks=[$isList],instance*/

@pragma('dart2js:noInline')
method<T>() {
  return /*checks=[],instance*/ () => <T>[];
}

@pragma('dart2js:noInline')
test(o) => o is List<int>;

main() {
  Expect.isTrue(test(method<int>().call()));
  Expect.isFalse(test(method<String>().call()));
}
