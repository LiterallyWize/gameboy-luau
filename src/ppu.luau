--!strict
--!native
--!optimize 2

local memory = require("./memory")

export type PPU = {
	step: (self: PPU) -> (),
} & memory.Addressable

local ppu = {}

local function read(self: PPU, address: number): number
	return 0
end

local function write(self: PPU, address: number, value: number): ()
	return
end

local function step(self: PPU): ()
	return
end

function ppu.new(): PPU
	return {
		read = read,
		write = write,
		step = step,
	} :: PPU
end

return ppu
