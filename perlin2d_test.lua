local perlin_2d_module = require("perlin2d")

local perlin2d = perlin_2d_module.perlin2d
perlin_2d_module.seed = os.time()
for y = 0, 29, 1 do
  for x = 0, 59, 1 do
    if (perlin2d(x/30, y/30)) > 0 then
      io.write(1)
    else
      io.write(0)
    end
  end
  io.write("\n")
end
