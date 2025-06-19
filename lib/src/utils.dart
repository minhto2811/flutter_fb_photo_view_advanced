enum ImageType { network, asset, file }

extension ImageSourcePath on String {
  ImageType get getType {
    if (startsWith('assets/')) {
      return ImageType.asset;
    }

    if (startsWith('http://') || startsWith('https://')) {
      return ImageType.network;
    }
    return ImageType.file;
  }
}
