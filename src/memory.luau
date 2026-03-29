--!strict
--!native
--!optimize 2

export type Addressable = {
	read: (self: Addressable, address: number) -> number,
	write: (self: Addressable, address: number, value: number) -> (),
}

export type MemoryComponents = {
	rom: Addressable,
	ppu: Addressable,
	timer: Addressable,
	interrupts: Addressable,
}

export type Memory = MemoryComponents & Addressable

local memory = {}

local function read(self: Addressable, address: number): number
	local self = self :: Memory
	return 0
end

local function write(self: Addressable, address: number, value: number): ()
	local self = self :: Memory
end

function memory.new(components: MemoryComponents): Memory
	return {
		rom = components.rom,
		ppu = components.ppu,
		timer = components.timer,
		interrupts = components.interrupts,

		read = read,
		write = write,
	}
end

return memory
