--!strict
--!native
--!optimize 2

local memory = require("./memory")

export type ROM = {
	_data: buffer,

	step: (self: ROM) -> (),
} & memory.Addressable

local rom = {}

local function read(self: ROM, address: number): number
	return 0
end

local function write(self: ROM, address: number, value: number): ()
	return
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
	} :: ROM
end

return rom
