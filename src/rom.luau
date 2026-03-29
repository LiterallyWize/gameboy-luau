--!strict
--!native
--!optimize 2

local memory = require("./memory")

export type ROM = {
	_data: buffer,

	step: (self: ROM) -> (),
} & memory.Addressable

local rom = {}

local function read(self: memory.Addressable, address: number): number
	local self = self :: ROM
	return 0
end

local function write(self: memory.Addressable, address: number, value: number): ()
	local self = self :: ROM
end

local function step(self: ROM): ()
	return
end

function rom.new(data: buffer): ROM
	return {
		_data = data,

		read = read,
		write = write,
		step = step,
	}
end

return rom
