enum Flavor { dev, stag, prod }

class Config {
  static Flavor flavor = Flavor.prod;
}
