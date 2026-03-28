--!strict
--!native
--!optimize 2

export type Gameboy = {
	cycle: (self: Gameboy, cycles: number) -> unknown,
}

local gameboy = {}

local function cycle(self: Gameboy, cycles: number): unknown
	return
end

function gameboy.new(): Gameboy
	return {
		cycle = cycle,
	} :: Gameboy
end

return gameboy
