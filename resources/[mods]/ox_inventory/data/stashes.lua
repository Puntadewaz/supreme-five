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
		coords = vector3(-590.36, -1067.36, 21.45),
		target = {
			loc = vector3(-590.36, -1067.36, 21.45),
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
		coords = vector3(-590.43, -1058.66, 21.52),
		target = {
			loc = vector3(-590.43, -1058.66, 21.52),
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
		coords = vector3(-597.39, -1049.43, 22.34),
		target = {
			loc = vector3(-597.39, -1049.43, 22.34),
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
		coords = vector3(-199.58, -1314.65, 31.08),
		target = {
			loc = vector3(-199.58, -1314.65, 31.08),
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
}
