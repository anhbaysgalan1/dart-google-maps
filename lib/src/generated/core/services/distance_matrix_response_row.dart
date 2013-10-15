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

class DistanceMatrixResponseRow extends jsw.TypedJsObject {
  static DistanceMatrixResponseRow cast(js.JsObject jsObject) => jsObject == null ? null : new DistanceMatrixResponseRow.fromJsObject(jsObject);
  DistanceMatrixResponseRow.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DistanceMatrixResponseRow()
      : super();

  set elements(List<DistanceMatrixResponseElement> elements) => $unsafe['elements'] = elements == null ? null : elements is js.Serializable ? elements : js.jsify(elements);
  List<DistanceMatrixResponseElement> get elements => jsw.TypedJsArray.castListOfSerializables($unsafe['elements'], DistanceMatrixResponseElement.cast);
}