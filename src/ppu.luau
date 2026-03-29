--!strict
--!native
--!optimize 2

local memory = require("./memory")

export type PPU = {
	step: (self: PPU) -> (),
} & memory.Addressable

local ppu = {}

local function read(self: memory.Addressable, address: number): number
	local self = self :: PPU
	return 0
end

local function write(self: memory.Addressable, address: number, value: number): ()
	local self = self :: PPU
end

local function step(self: PPU): ()
	return
end

function ppu.new(): PPU
	return {
		read = read,
		write = write,
		step = step,
	}
end

return ppu
