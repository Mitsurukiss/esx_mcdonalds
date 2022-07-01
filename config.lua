Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableMoneyWash            = true
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.MissCraft                  = 10


Config.AuthorizedVehicles = {
    { name = 'foodbike',  label = 'Foodbike' },
}

Config.Blips = {
    
    Blip = {
        Pos     = { x = -1184.37 , y = -884.99 , z = 13.04 },
        Sprite  = 381,
        Display = 4,
        Scale   = 0.7,
        Colour  = 0,
      },
  
  }

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -1204.91 , y = -893.04 , z = 14.01 },
        Size  = { x = 0.5, y = 0.5, z = 0.5 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 2,
    },

    Fridge = {
        Pos   = { x = -1198.38 , y = -894.68 , z = 14.01 },
        Size  = { x = 0.5, y = 0.5, z = 0.5 },
        Color = { r = 0, g = 248, b = 0 },
        Type  = 2,
    },

    Vehicles = {
        Pos          = { x = -1179.54 , y = -885.87 , z = 13.82 },
        SpawnPoint   = { x = -1171.23 , y = -879.88 , z = 13.12 },
        Size         = { x = 0.8, y = 0.8, z = 0.8 },
        Color        = { r = 0, g = 255, b = 0 },
        Type         = 36,
        Heading      = 358.28,
    },

    VehicleDeleters = {
        Pos   = { x = -1172.59 , y = -876.44 , z = 13.14 },
        Size  = { x = 3.0, y = 3.0, z = 0.5 },
        Color = { r = 255, g = 0, b = 0 },
        Type  = 1,
    },

    BossActions = {
        Pos   = { x = -1195.19 , y = -893.76 , z = 14.01 },
        Size  = { x = 0.5, y = 0.5, z = 0.5 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 2,
    },

}

Config.Uniforms = {
  mcdonalds_outfit = {
   male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 93,   ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 0,
        ['pants_1'] = 35,   ['pants_2'] = 0,
        ['shoes_1'] = 54,    ['shoes_2'] = 1,
        ['chain_1'] = 0,    ['chain_2'] = 0,
        ['helmet_1'] = 130,    ['helmet_2'] = 3
    },
    female = {
        ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
        ['torso_1'] = 141,   ['torso_2'] = 3,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 0,
        ['pants_1'] = 93,   ['pants_2'] = 8,
        ['shoes_1'] = 52,   ['shoes_2'] = 1,
        ['chain_1'] = 0,  ['chain_2'] = 0,
        ['helmet_1'] = 129,    ['helmet_2'] = 3
    }
  }
}
