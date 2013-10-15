// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

class Size extends jsw.TypedJsObject {
  static Size cast(js.JsObject jsObject) => jsObject == null ? null : new Size.fromJsObject(jsObject);
  Size.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  Size(num width, num height, [String widthUnit, String heightUnit])
      : super(maps['Size'], [width, height, widthUnit, heightUnit]);

  bool equals(Size other) => $unsafe.callMethod('equals', [other]);
  String toString() => $unsafe.callMethod('toString');

  set height(num height) => $unsafe['height'] = height;
  num get height => $unsafe['height'];
  set width(num width) => $unsafe['width'] = width;
  num get width => $unsafe['width'];
}