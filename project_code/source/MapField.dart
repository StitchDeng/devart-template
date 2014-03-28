part of own_world;

class MapField extends Sprite {

  MapField() {

    var random = new math.Random();
    var textureAtlas = resourceManager.getTextureAtlas("footprint");
    var footprints = textureAtlas.getBitmapDatas("Footprint");

    for(var i = 0; i < 10; i++) {
      
      

      var footprint = footprints[random.nextInt(footprints.length)];
      var bitmap = new Bitmap(footprint)
        ..pivotX = 64
        ..pivotY = 64
        ..x = 64 + random.nextInt(940 - 128)
        ..y = 64 + random.nextInt(500 - 128)
        ..addTo(this);

    }
  }
}