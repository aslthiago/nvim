local status_ok, colorizer = pcall(require, 'colorizer')
if not status_ok then
  return
end

colorizer.setup(
  {
    '*';
    '!csv';
  },
  {
    RGB      = false;
    RRGGBB   = true;
    RRGGBBAA = true;
    rgb_fn   = true;
    hsl_fn   = true;
    css      = false;
    css_fn   = false;
    names    = false;
  }
)
