{
  inputs = { };
  outputs = { self, ... } @ inputs: {
    overlays.default = final: prev: {
      dmenu =
        prev.dmenu.overrideAttrs
          (_oldAttrs: {
            src = ./.;
            conf = ./config.h;
          });
    };
  };
}
