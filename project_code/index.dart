library own_world;

import 'dart:math' as math;
import 'dart:html' as html;
import 'package:stagexl/stagexl.dart';

part 'source/MapField.dart';

Stage stage = new Stage(html.querySelector('#stage'), webGL: true);
ResourceManager resourceManager  = new ResourceManager();
RenderLoop renderLoop = new RenderLoop();

void main() {

  renderLoop.addStage(stage);

  BitmapData.defaultLoadOptions.webp = true;
  
  var mapField = new Sprite();

  resourceManager
    ..addTextureAtlas('footprint', 'images/Footprints.json', TextureAtlasFormat.JSONARRAY)
    ..load().then((_) {
      mapField = new MapField()
        ..x = 470
        ..y = 250
        ..pivotX = 470
        ..pivotY = 250
        ..addTo(stage);
    });
}
