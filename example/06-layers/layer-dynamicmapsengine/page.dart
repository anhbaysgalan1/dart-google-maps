import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_visualization.dart';

void main() {
  final fillArray = ['red', 'blue', 'yellow', 'green'];

  final mapOptions = MapOptions()
    ..zoom = 14
    ..center = LatLng(59.322506, 18.010025);
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final layer = DynamicMapsEngineLayer(DynamicMapsEngineLayerOptions()
    ..layerId = '06673056454046135537-08896501997766553811'
    ..map = map
    ..suppressInfoWindows = true
    ..clickable = true);

  layer.onMouseover.listen((event) {
    layer.getFeatureStyle(event.featureId)
      ..fillColor = fillArray[int.parse(event.featureId) - 1]
      ..fillOpacity = '0.8';
  });

  layer.onMouseout.listen((event) {
    layer.getFeatureStyle(event.featureId).resetAll();
  });
}
