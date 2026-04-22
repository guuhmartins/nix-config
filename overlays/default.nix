{ inputs, ... }:
final: prev: {
  # Exemplo de overlay para customizar pacotes
  custom-neovim = prev.neovim.override {
    withPython3 = true;
  };
}
