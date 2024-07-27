return {
	{
		items = {
			{
				name = 'lockpick',
				ingredients = {
					scrapmetal = 5,
					copper = 2
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'radio',
				ingredients = {
					scrapmetal = 3,
					copper = 10
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'pistolammo9',
				ingredients = {
					copper = 5,
					gunpowder = 10,
					ammoclip = 1,
				},
				duration = 15000,
				count = 1,
			},
			{
				name = 'pistolammo38',
				ingredients = {
					copper = 15,
					gunpowder = 20,
					ammoclip = 1,
				},
				duration = 15000,
				count = 1,
			},
			{
				name = 'pistol9',
				ingredients = {
					copper = 30,
					iron = 10,
					rubber = 10,
				},
				duration = 30000,
				count = 1,
			},
			{
				name = 'pistol38',
				ingredients = {
					copper = 60,
					iron = 20,
					rubber = 20,
				},
				duration = 30000,
				count = 1,
			},
			{
				name = 'drill',
				ingredients = {
					copper = 0,
					iron = 0,
					aluminum = 0,
				},
				duration = 90000,
				count = 1,
			},
		},
		points = {
			vector3(2308.12, 3949.6, 37.1),
			-- vec3(-1147.083008, -2002.662109, 13.180260),
			-- vec3(-345.374969, -130.687088, 39.009613)
		},
		-- groups = {
		-- 	['gang'] = 0
		-- },
		zones = {
			-- {
			-- 	coords = vector3(2308.12, 3949.6, 37.1),
			-- 	size = vector3(2308.12, 3949.6, 37.1),
			-- 	distance = 1.5,
			-- 	rotation = 315.0,
			-- },
			-- {
			-- 	coords = vec3(-346.1, -130.45, 39.0),
			-- 	size = vec3(3.8, 1.05, 0.15),
			-- 	distance = 1.5,
			-- 	rotation = 70.0,
			-- },
		},
		-- blip = { id = 566, colour = 31, scale = 0.8 },
	},
	{
		items = {
			{
				name = 'grilledchicken',
				ingredients = {
					chicken = 1,
					salt = 2,
					lemon = 1,
				},
				duration = 5000,
				count = 20,
				client = {
					anim = { dict = 'MaleScenario@PROP_HUMAN_BBQ', clip = 'PROP_HUMAN_BBQ' },
				}
			},
			{
				name = 'grilledfish',
				ingredients = {
					fish = 1,
					salt = 2,
					kecap = 2,
					lemon = 1,
				},
				duration = 5000,
				count = 20,
			},
			{
				name = 'seafoodsoup',
				ingredients = {
					fish = 1,
					udang = 5,
					salt = 2,
					sugar = 1,
				},
				duration = 5000,
				count = 20,
			},
			{
				name = 'chickensoup',
				ingredients = {
					chicken = 2,
					salt = 2,
					sugar = 1,
				},
				duration = 5000,
				count = 20,
			},
			{
				name = 'lemontea',
				ingredients = {
					lemon = 1,
					tea = 2,
					sugar = 1,
				},
				duration = 5000,
				count = 20,
			},
			{
				name = 'milktea',
				ingredients = {
					milk = 1,
					tea = 2,
					sugar = 1,
				},
				duration = 5000,
				count = 20,
			},
		},
		points = {
			vector3(-590.44, -1056.47, 22.36),
		},
		groups = {
			['cafe'] = 0
		},
		zones = {
			{
				coords = vector3(-590.44, -1056.47, 22.36),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
		},
		-- blip = { id = 566, colour = 31, scale = 0.8 },
	},
}
