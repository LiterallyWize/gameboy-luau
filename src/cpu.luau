--!strict
--!native
--!optimize 2

export type CPU = {
	step: (self: CPU) -> number,
}

local cpu = {}

local function step(self: CPU): number
	return 0
end

function cpu.new(): CPU
	return {
		step = step,
	} :: CPU
end

return cpu
