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

class IconSequence extends jsw.TypedJsObject {
  static IconSequence cast(js.JsObject jsObject) => jsObject == null ? null : new IconSequence.fromJsObject(jsObject);
  IconSequence.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  IconSequence()
      : super();

  set fixedRotation(bool fixedRotation) => $unsafe['fixedRotation'] = fixedRotation;
  bool get fixedRotation => $unsafe['fixedRotation'];
  set icon(GSymbol icon) => $unsafe['icon'] = icon;
  GSymbol get icon => GSymbol.cast($unsafe['icon']);
  set offset(String offset) => $unsafe['offset'] = offset;
  String get offset => $unsafe['offset'];
  set repeat(String repeat) => $unsafe['repeat'] = repeat;
  String get repeat => $unsafe['repeat'];
}