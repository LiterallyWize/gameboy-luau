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

local function read(self: Memory, address: number): number
	return 0
end

local function write(self: Memory, address: number, value: number): ()
	return
end

function memory.new(components: MemoryComponents): Memory
	return {
		rom = components.rom,
		ppu = components.ppu,
		timer = components.timer,
		interrupts = components.interrupts,

		read = read,
		write = write,
	} :: Memory
end

return memory
