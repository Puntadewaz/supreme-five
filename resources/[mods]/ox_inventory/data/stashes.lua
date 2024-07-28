return {
	{
		coords = vector3(455.34, -985.39, 30.69),
		target = {
			loc = vector3(455.34, -985.39, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'policelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vector3(309.86, -599.51, 43.29),
		target = {
			loc = vector3(309.86, -599.51, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},

	{
		coords = vector3(-2210.05, -385.72, 13.32),
		target = {
			loc = vector3(-2210.05, -385.72, 13.32),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Freezer'
		},
		name = 'freezer',
		label = 'Freezer',
		owner = false,
		slots = 100,
		weight = 5000000,
		groups = {['cafe'] = 0}
	},

	{
		coords = vector3(-2210.08, -384.99, 13.32),
		target = {
			loc = vector3(-2210.08, -384.99, 13.32),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Kulkas'
		},
		name = 'kulkas',
		label = 'Kulkas',
		owner = false,
		slots = 100,
		weight = 5000000,
		groups = {['cafe'] = 0}
	},

	{
		coords = vector3(-2209.7, -388.43, 13.32),
		target = {
			loc = vector3(-2209.7, -388.43, 13.32),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'cafepersonlocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['cafe'] = 0}
	},

	{
		coords = vector3(-197.22, -1315.08, 31.09),
		target = {
			loc = vector3(-197.22, -1315.08, 31.09),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Bangku Peralatan'
		},
		name = 'toolkitbench',
		label = 'Bangku Peralatan',
		owner = false,
		slots = 100,
		weight = 5000000,
		groups = {['mechanic'] = 0}
	},

	{
		coords = vector3(-201.38, -1315.02, 31.09),
		target = {
			loc = vector3(-201.38, -1315.02, 31.09),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'mechanicpersonlocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['mechanic'] = 0}
	},

	{
		coords = vector3(372.14, -1597.36, 29.29),
		target = {
			loc = vector3(372.14, -1597.36, 29.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'taxipersonlocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['taxi'] = 0}
	},

	{
		coords = vector3(367.3, -1599.0, 29.29),
		target = {
			loc = vector3(367.3, -1599.0, 29.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Kulkas Makanan'
		},
		name = 'taxipersonlocker',
		label = 'Personal Locker',
		owner = false,
		slots = 100,
		weight = 5000000,
		groups = {['taxi'] = 0}
	},
}
