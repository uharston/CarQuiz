# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cars = [
    { make: "Toyota", 
      model: "Supra"    
},
    { make: "Toyota", 
    model: "Cressida"    
    },    
    { make: "Toyota", 
    model: "Celica"    
    },    
    { make: "Nissan", 
    model: "240sx"    
    },    
    { make: "Nissan", 
    model: "Sentra"    
    },    
    { make: "Mazda", 
    model: "RX7"    
    },    
    { make: "Mitsubishi", 
    model: "EVO"    
    },    
    { make: "Subaru", 
    model: "Impreza"    
    },    
    { make: "Nissan", 
    model: "300zx"    
    },    
    { make: "Honda", 
    model: "NSX"    
    }
]
Car.create(cars)
# i = Image.new(url: 'https://media.ed.edmunds-media.com/toyota/cressida/1991/oem/1991_toyota_cressida_sedan_base_fq_oem_1_500.jpg')
supra = Car.find_by(model: "Supra")
supra.images.create(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Toyota_Supra_MK2_red.jpg/1200px-Toyota_Supra_MK2_red.jpg")

celica = Car.find_by(model: "Celica")
celica.images.create(url: "https://bringatrailer.com/wp-content/uploads/2019/01/1992_toyota_celica_gt-r_right_hand_drive_1547091107f98764daIMG_0998.jpg?fit=940%2C627")

nissan_240sx = Car.find_by(model: "240sx")
nissan_240sx.images.create(url: "https://bringatrailer.com/wp-content/uploads/2019/11/1992_nissan_240sx_157739095720a357c07493IMG_20191217_123217.jpg?fit=940%2C627")

sentra = Car.find_by(model: "Sentra")
sentra.images.create(url: "https://hips.hearstapps.com/roa.h-cdn.co/assets/16/13/1459178887-ser.jpg")

rx7 = Car.find_by(model: "RX7")
rx7.images.create(url: "https://images.caradisiac.com/images/7/6/2/4/177624/S0-mazda-rx-7-fb-1978-1985-598285.jpg")

evo = Car.find_by(model: "EVO")
evo.images.create(url: "https://i.redd.it/k9ko2j9czp811.jpg")

impreza = Car.find_by(model: "Impreza")
impreza.images.create(url: "https://media.ed.edmunds-media.com/subaru/impreza/2013/oem/2013_subaru_impreza_sedan_20i-limited-pzev_fq_oem_1_1600.jpg")

nissan_300zx = Car.find_by(model: "300zx")
nissan_300zx.images.create(url: "https://cimg3.ibsrv.net/ibimg/hgm/2000x1125-1/100/498/1996-nissan-300zx_100498043.jpg")

nsx = Car.find_by(model: "NSX")
nsx.images.create(url: "https://cdn.motor1.com/images/mgl/LNljj/s1/first-generation-acura-nsx.jpg")



# makes = [
#  {
#    "make_id": 440,
#    "make_name": "ASTON MARTIN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 441,
#    "make_name": "TESLA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 442,
#    "make_name": "JAGUAR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 443,
#    "make_name": "MASERATI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 445,
#    "make_name": "ROLLS ROYCE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 448,
#    "make_name": "TOYOTA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 449,
#    "make_name": "MERCEDES-BENZ",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 452,
#    "make_name": "BMW",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 454,
#    "make_name": "BUGATTI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 456,
#    "make_name": "MINI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 460,
#    "make_name": "FORD",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 464,
#    "make_name": "LINCOLN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 465,
#    "make_name": "MERCURY",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 466,
#    "make_name": "LOTUS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 467,
#    "make_name": "CHEVROLET",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 468,
#    "make_name": "BUICK",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 469,
#    "make_name": "CADILLAC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 470,
#    "make_name": "HOLDEN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 471,
#    "make_name": "OPEL",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 472,
#    "make_name": "GMC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 473,
#    "make_name": "MAZDA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 474,
#    "make_name": "HONDA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 475,
#    "make_name": "ACURA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 476,
#    "make_name": "DODGE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 477,
#    "make_name": "CHRYSLER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 478,
#    "make_name": "NISSAN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 480,
#    "make_name": "INFINITI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 481,
#    "make_name": "MITSUBISHI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 482,
#    "make_name": "VOLKSWAGEN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 485,
#    "make_name": "VOLVO",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 492,
#    "make_name": "FIAT",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 493,
#    "make_name": "ALFA ROMEO",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 497,
#    "make_name": "LANCIA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 498,
#    "make_name": "HYUNDAI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 499,
#    "make_name": "KIA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 502,
#    "make_name": "LAMBORGHINI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 504,
#    "make_name": "SMART",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 509,
#    "make_name": "SUZUKI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 515,
#    "make_name": "LEXUS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 523,
#    "make_name": "SUBARU",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 533,
#    "make_name": "MAYBACH",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 536,
#    "make_name": "PONTIAC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 539,
#    "make_name": "MORGAN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 542,
#    "make_name": "ISUZU",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 565,
#    "make_name": "TRIUMPH",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 572,
#    "make_name": "SAAB",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 582,
#    "make_name": "AUDI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 583,
#    "make_name": "BENTLEY",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 584,
#    "make_name": "PORSCHE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 603,
#    "make_name": "FERRARI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 606,
#    "make_name": "AM GENERAL",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 629,
#    "make_name": "CREATIVE COACHWORKS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 771,
#    "make_name": "AC PROPULSION",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 847,
#    "make_name": "DAIHATSU",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 972,
#    "make_name": "FALCON",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 986,
#    "make_name": "EV INNOVATIONS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 992,
#    "make_name": "FAW JIAXING HAPPY MESSENGER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1033,
#    "make_name": "FISKER AUTOMOTIVE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1034,
#    "make_name": "NINA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1056,
#    "make_name": "SATURN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1077,
#    "make_name": "DAEWOO",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1124,
#    "make_name": "AMERICAN MOTORS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1142,
#    "make_name": "FORMULA 1 STREET COM",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1146,
#    "make_name": "GEO",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1151,
#    "make_name": "FORTUNESPORT VES",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1288,
#    "make_name": "AAS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1292,
#    "make_name": "EQUUS AUTOMOTIVE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1393,
#    "make_name": "ELECTRIC MOBILE CARS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1498,
#    "make_name": "AVERA MOTORS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1683,
#    "make_name": "BAKKURA MOBILITY",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1755,
#    "make_name": "TH!NK",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1777,
#    "make_name": "CODA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1869,
#    "make_name": "CONTEMPORARY CLASSIC CARS (CCC)",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1896,
#    "make_name": "KOENIGSEGG",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 1991,
#    "make_name": "BYD",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2049,
#    "make_name": "KEPLER MOTORS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2131,
#    "make_name": "MAKING YOU MOBILE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2236,
#    "make_name": "MCLAREN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2376,
#    "make_name": "MYCAR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2408,
#    "make_name": "EAGLE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2409,
#    "make_name": "PLYMOUTH",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2618,
#    "make_name": "NANCHANG FREEDOM TECHNOLOGY LIMITED COMPANY ",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2665,
#    "make_name": "NJD AUTOMOTIVE LLC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 2745,
#    "make_name": "PHOENIX MOTORCARS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 3176,
#    "make_name": "ROCKET SLED MOTORS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 3440,
#    "make_name": "VISION INDUSTRIES",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 3540,
#    "make_name": "WARHAWK PERFORMANCE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 3583,
#    "make_name": "UKEYCHEYMA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 3766,
#    "make_name": "SPYKER ",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 3873,
#    "make_name": "ZHEJIANG KANGDI VEHICLES CO",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4162,
#    "make_name": "OLDSMOBILE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4220,
#    "make_name": "PANOZ",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4355,
#    "make_name": "SALEEN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4410,
#    "make_name": "SOLECTRIA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4451,
#    "make_name": "YESTER YEAR AUTO",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4596,
#    "make_name": "BXR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4634,
#    "make_name": "ENGINE CONNECTION",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4644,
#    "make_name": "BLUECAR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4764,
#    "make_name": "MOSLER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4767,
#    "make_name": "PAGANI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 4859,
#    "make_name": "REVOLOGY",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5015,
#    "make_name": "EMA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5042,
#    "make_name": "COSTIN SPORTS CAR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5083,
#    "make_name": "GENESIS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5122,
#    "make_name": "KARMA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5208,
#    "make_name": "MATRIX MOTOR COMPANY",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5367,
#    "make_name": "ARMBRUSTER STAGEWAY ",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5381,
#    "make_name": "LUMEN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5464,
#    "make_name": "ASUNA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5468,
#    "make_name": "MERKUR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5552,
#    "make_name": "AVANTI",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5553,
#    "make_name": "YUGO",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5554,
#    "make_name": "PEUGEOT",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5555,
#    "make_name": "STERLING MOTOR CAR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5557,
#    "make_name": "CONSULIER GTP",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5657,
#    "make_name": "DATSUN",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5661,
#    "make_name": "PININFARINA",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5760,
#    "make_name": "VINTAGE AUTO ",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5767,
#    "make_name": "LONDONCOACH INC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5848,
#    "make_name": "MGS GRAND SPORT (MARDIKIAN)",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 5938,
#    "make_name": "PANTHER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6018,
#    "make_name": "DAYTONA COACH BUILDERS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6069,
#    "make_name": "UCC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6263,
#    "make_name": "RS SPIDER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6264,
#    "make_name": "GRUPPE B",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6313,
#    "make_name": "RENAISSANCE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6364,
#    "make_name": "JAC 427",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6408,
#    "make_name": "HUNTER DESIGN GROUP, LLC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6473,
#    "make_name": "BLACKWATER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6663,
#    "make_name": "GULLWING INTERNATIONAL MOTORS, LTD.",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6759,
#    "make_name": "AMERITECH CORPORATION",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6792,
#    "make_name": "STANFORD CUSTOMS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6880,
#    "make_name": "CLASSIC ROADSTERS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 6986,
#    "make_name": "HERITAGE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 7099,
#    "make_name": "COBRA CARS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 7207,
#    "make_name": "C-R CHEETAH RACE CARS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 7225,
#    "make_name": "PAS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 7425,
#    "make_name": "BUG MOTORS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 7477,
#    "make_name": "EXCALIBUR AUTOMOBILE CORPORATION",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 7765,
#    "make_name": "IVES MOTORS CORPORATION (IMC)",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 7836,
#    "make_name": "AUTODELTA USA INC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 8395,
#    "make_name": "AUTOCAR LTD",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 8605,
#    "make_name": "BBC",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 8785,
#    "make_name": "PHOENIX SPORTS CARS, INC.",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9250,
#    "make_name": "VECTOR AEROMOTIVE CORPORATION",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9376,
#    "make_name": "WESTFALL MOTORS CORP.",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9401,
#    "make_name": "CLENET",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9458,
#    "make_name": "CX AUTOMOTIVE",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9533,
#    "make_name": "LA EXOTICS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9572,
#    "make_name": "CLASSIC SPORTS CARS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9720,
#    "make_name": "SF MOTORS INC.",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 9759,
#    "make_name": "SCUDERIA CAMERON GLICKENHAUS (SCG)",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 10029,
#    "make_name": "VINTAGE CRUISER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 10030,
#    "make_name": "VINTAGE MICROBUS",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 10031,
#    "make_name": "VINTAGE ROVER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 10047,
#    "make_name": "LITE CAR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 10224,
#    "make_name": "POLESTAR",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  },
#  {
#    "make_id": 10256,
#    "make_name": "CZINGER",
#    "vehicle_type_id": 2,
#    "vehicle_type_name": "Passenger Car"
#  }
# ]
#     makes.each do |m| 
#         Make.create(make_id: m[:make_id], make_name: m[:make_name])
#     end
# Make.create(make_id: makes)

# honda_models = [
#     {
#       "make_id": 474,
     
#       "model_id": 1861,
#       "modelname": "Accord"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1863,
#       "modelname": "Civic"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1864,
#       "modelname": "Pilot"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1865,
#       "modelname": "CR-V"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1866,
#       "modelname": "Ridgeline"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1868,
#       "modelname": "Element"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1869,
#       "modelname": "Odyssey"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1870,
#       "modelname": "Insight"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 1875,
#       "modelname": "FCX Clarity"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 2127,
#       "modelname": "Fit"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 2128,
#       "modelname": "CR-Z"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3153,
#       "modelname": "S2000"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3234,
#       "modelname": "PCX150"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3235,
#       "modelname": "CB1100"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3236,
#       "modelname": "CB300F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3237,
#       "modelname": "CB500F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3238,
#       "modelname": "CB500X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3239,
#       "modelname": "CBR1000RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3240,
#       "modelname": "CBR300R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3241,
#       "modelname": "CBR500R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3242,
#       "modelname": "CBR600RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3243,
#       "modelname": "CBR650F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3245,
#       "modelname": "CRF250L"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3246,
#       "modelname": "CTX1300"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3247,
#       "modelname": "CTX700"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3248,
#       "modelname": "CTX700N"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3249,
#       "modelname": "GOLDWING"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3250,
#       "modelname": "GROM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3251,
#       "modelname": "NC700X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3252,
#       "modelname": "METROPOLITAN"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3253,
#       "modelname": "NPS50 (RUCKUS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3255,
#       "modelname": "ST1300PA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3256,
#       "modelname": "INTERCEPTOR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3262,
#       "modelname": "XR650L"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3264,
#       "modelname": "ST1300"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3411,
#       "modelname": "Silverwing"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3412,
#       "modelname": "CB1000R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3420,
#       "modelname": "CBR250R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3422,
#       "modelname": "VFR1200F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3438,
#       "modelname": "NT700V"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3439,
#       "modelname": "PCX125"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3445,
#       "modelname": "SH150I"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3448,
#       "modelname": "CRF 230M"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3463,
#       "modelname": "VTX1800F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3466,
#       "modelname": "CB250 (NIGHTHAWK)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3474,
#       "modelname": "Elite80"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3475,
#       "modelname": "Helix"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3477,
#       "modelname": "VTX1300C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3478,
#       "modelname": "VTX1300R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3479,
#       "modelname": "VTX1300S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3480,
#       "modelname": "VTX1800C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3484,
#       "modelname": "Shadow VLX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3507,
#       "modelname": "ST1300P"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3515,
#       "modelname": "CB600F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3520,
#       "modelname": "NIGHTHAWK 750"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3521,
#       "modelname": "CBR1100XX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3522,
#       "modelname": "CBR954RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3527,
#       "modelname": "ST1100P"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3530,
#       "modelname": "ST1100"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3567,
#       "modelname": "ELITE 50"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3597,
#       "modelname": "CBR900RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3616,
#       "modelname": "CBR600F3"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3617,
#       "modelname": "CBR600SE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3618,
#       "modelname": "Pacific Coast"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3654,
#       "modelname": "VFR 750F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3664,
#       "modelname": "CBR1000F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3666,
#       "modelname": "XR250L"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3668,
#       "modelname": "CB1000F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3669,
#       "modelname": "Shadow 1100"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3670,
#       "modelname": "Shadow"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3672,
#       "modelname": "CT70"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3673,
#       "modelname": "CBR600F2"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3674,
#       "modelname": "RC 45"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3684,
#       "modelname": "Hawk GT"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3695,
#       "modelname": "CB-1"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3696,
#       "modelname": "Elite 250"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3697,
#       "modelname": "Tourist Trophy"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3698,
#       "modelname": "NS50F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3699,
#       "modelname": "NX250"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3700,
#       "modelname": "NX125"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3701,
#       "modelname": "SA50"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3702,
#       "modelname": "SB50P"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3703,
#       "modelname": "VFR750R (RC30)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3704,
#       "modelname": "VTR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3705,
#       "modelname": "XL600V"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3720,
#       "modelname": "CB125TT"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3735,
#       "modelname": "VT1100C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3776,
#       "modelname": "ELITE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3777,
#       "modelname": "TRANSALP"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3778,
#       "modelname": "NX650"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 3779,
#       "modelname": "CBR600F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 5107,
#       "modelname": "Prelude"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 5959,
#       "modelname": "Passport"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 9173,
#       "modelname": "Crosstour"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 9212,
#       "modelname": "HR-V"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 9577,
#       "modelname": "del Sol"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10001,
#       "modelname": "CBR300RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10007,
#       "modelname": "CBR650FA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10251,
#       "modelname": "NC700XD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10252,
#       "modelname": "CBR500RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10253,
#       "modelname": "CB500FA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10254,
#       "modelname": "CB500XA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10613,
#       "modelname": "CRF450R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10614,
#       "modelname": "CRF250R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10617,
#       "modelname": "CRF150F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10618,
#       "modelname": "CRF50F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10619,
#       "modelname": "XR400R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10620,
#       "modelname": "TRX700XX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10622,
#       "modelname": "TRX450ER"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10623,
#       "modelname": "TRX500FM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10791,
#       "modelname": "FourTrax"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10792,
#       "modelname": "TRX400X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10956,
#       "modelname": "Sportrax"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10957,
#       "modelname": "TRX450R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10958,
#       "modelname": "CRF70F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10959,
#       "modelname": "CRF100F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10960,
#       "modelname": "CR250R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 10961,
#       "modelname": "XR650R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11387,
#       "modelname": "SA50P"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11408,
#       "modelname": "CR125R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11409,
#       "modelname": "XR250R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11435,
#       "modelname": "MUV700 (Big Red)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11517,
#       "modelname": "EV Plus"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11588,
#       "modelname": "TRX90"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11589,
#       "modelname": "XR600R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11590,
#       "modelname": "TRX200D"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11591,
#       "modelname": "TRX200DN"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11592,
#       "modelname": "TRX250"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11593,
#       "modelname": "TRX300"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11594,
#       "modelname": "TRX300EX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11595,
#       "modelname": "TRX300EXN"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11596,
#       "modelname": "TRX300FW"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11597,
#       "modelname": "TRX300FWN"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11598,
#       "modelname": "TRX300N"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11599,
#       "modelname": "TRX400FW"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11600,
#       "modelname": "TRX400FWN"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11601,
#       "modelname": "TRX450S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11602,
#       "modelname": "TRX450ES"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11603,
#       "modelname": "TRX400EX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11648,
#       "modelname": "CB500XL (CB500X)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11649,
#       "modelname": "CB500XA (CB500X)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11650,
#       "modelname": "NC700XL (NC700X)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11651,
#       "modelname": "NC700XD (NC700X DCT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11652,
#       "modelname": "NC700XDL (NC700X DCT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11653,
#       "modelname": "CMX250 (REBEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11654,
#       "modelname": "CMX250CL (REBEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11655,
#       "modelname": "CTX700NL (CTX700N)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11656,
#       "modelname": "CTX700ND (CTX700N DCT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11657,
#       "modelname": "CTX700NDL (CTX700N DCT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11658,
#       "modelname": "NC700JD (NM4)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11659,
#       "modelname": "VT750C (SHADOW AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11660,
#       "modelname": "VT750CL (SHADOW AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11661,
#       "modelname": "VT750CA (SHADOW AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11663,
#       "modelname": "VT750CAL (SHADOW AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11664,
#       "modelname": "VT750C2B (SHADOW PHANTOM)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11665,
#       "modelname": "VT750C2BL (SHADOW PHANTOM)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11666,
#       "modelname": "VT1300CX (FURY)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11667,
#       "modelname": "VT1300CXL (FURY)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11668,
#       "modelname": "VT1300CXA (FURY ABS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11669,
#       "modelname": "VT1300CR (STATELINE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11670,
#       "modelname": "VT1300CRL (STATELINE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11671,
#       "modelname": "VT1300CT (INTERSTATE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11672,
#       "modelname": "VT1300CTL (INTERSTATE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11674,
#       "modelname": "XR650LL (XR650L)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11677,
#       "modelname": "CTX700 (CTX700D)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11683,
#       "modelname": "TRX90X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11686,
#       "modelname": "TRX420FA2"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11687,
#       "modelname": "TRX420FA1 (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11688,
#       "modelname": "TRX420FA2 (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11689,
#       "modelname": "TRX420FA5 (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11691,
#       "modelname": "TRX420FA6"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11698,
#       "modelname": "TRX420FA6 (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11700,
#       "modelname": "TRX420FA6C (TRX420FA6)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11703,
#       "modelname": "TRX420FE1 (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11704,
#       "modelname": "TRX420FM1 (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11709,
#       "modelname": "TRX420FM1 (TRX420FM)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11710,
#       "modelname": "TRX420FM2"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11718,
#       "modelname": "TRX420FM2 (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11726,
#       "modelname": "TRX420TE1/FOUR TRAX RANCHER"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11728,
#       "modelname": "TRX500FA5 (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11729,
#       "modelname": "TRX500FA6 (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11740,
#       "modelname": "TRX500FA7 (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11741,
#       "modelname": "TRX500FA7 (TRX500FA7 DELUXE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11742,
#       "modelname": "TRX500FE1 (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11743,
#       "modelname": "TRX500FE2 (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11744,
#       "modelname": "TRX500FE2 (TRX500FPE FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11745,
#       "modelname": "TRX500FM1 (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11747,
#       "modelname": "TRX500FM2 (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11748,
#       "modelname": "TRX500FM2 (TRX500FPM FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11750,
#       "modelname": "TRX500FM5"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11751,
#       "modelname": "TRX500FM6"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11752,
#       "modelname": "TRX500FM7"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11753,
#       "modelname": "TRX500FPA (FOUR TRAX FOREMAN RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11754,
#       "modelname": "TRX500PG (RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11755,
#       "modelname": "TRX680F (RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11756,
#       "modelname": "TRX680FA (FOURTRAX RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11757,
#       "modelname": "TRX500FM1 (TRX500FM FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11759,
#       "modelname": "NCH50 (GIORNO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11760,
#       "modelname": "NCH50 (METROPOLITAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11762,
#       "modelname": "NSS300 (FORZA)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11763,
#       "modelname": "NSS300A (FORZA)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11766,
#       "modelname": "CB500F (CB500FL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11767,
#       "modelname": "CB500FA (CB500F)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11771,
#       "modelname": "GL1800A (GOLD WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11772,
#       "modelname": "GL1800AD (GOLD WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11773,
#       "modelname": "GL1800AL (GOLD WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11774,
#       "modelname": "GL1800B/F6B BAGGER"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11775,
#       "modelname": "GL1800B/GOLD WING F6B"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11776,
#       "modelname": "GL1800BD/GOLD WING F6B "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11777,
#       "modelname": "GL1800C/VALKYRIE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11779,
#       "modelname": "GL1800CA/GOLDWING VALKYRIE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11780,
#       "modelname": "CRF110F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11781,
#       "modelname": "CRF110"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11782,
#       "modelname": "CRF125F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11783,
#       "modelname": "CRF125FB"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11784,
#       "modelname": "CRF230F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11785,
#       "modelname": "CRF250X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11786,
#       "modelname": "CRF450X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11788,
#       "modelname": "NC750JD/NM4"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11789,
#       "modelname": "VT750CA/AERO"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11790,
#       "modelname": "VT750C2BE/PHANTOM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11791,
#       "modelname": "VT1300CRA/STATELINE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11793,
#       "modelname": "CRF150R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11794,
#       "modelname": "CRF150RB"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11796,
#       "modelname": "MRT260/COTA 4RT260"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11803,
#       "modelname": "CBR500RL/CBR500R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11805,
#       "modelname": "CBR500RA/CBR500R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11806,
#       "modelname": "CBR600RA/CBR600RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11808,
#       "modelname": "CBR600RRL/CBR600RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11809,
#       "modelname": "CBR600RTA/CBR600RAE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11810,
#       "modelname": "CBR650FL/CBR650F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11811,
#       "modelname": "CBR650FA/CBR650F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11812,
#       "modelname": "CBR650FA/CBR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11813,
#       "modelname": "CBR1000RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11815,
#       "modelname": "CBR1000R/CBR1000RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11816,
#       "modelname": "CBR1000RL/CBR1000RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11817,
#       "modelname": "CBR1000RS/CBR1000RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11818,
#       "modelname": "CBR1000S/CBR1000RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11819,
#       "modelname": "NC750XA/NC750X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11823,
#       "modelname": "VT1300CXA/FURY "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11825,
#       "modelname": "VT1300CTA/INTERSTATE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11826,
#       "modelname": "CB300FA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11827,
#       "modelname": "CBR300RA/CBR300R "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11833,
#       "modelname": "NC700XD/NC700X "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11834,
#       "modelname": "NC700XDL/NC700X "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11835,
#       "modelname": "TRX250X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11836,
#       "modelname": "TRX450R/TRX450ER"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11837,
#       "modelname": "TRX250TE/FOUR TRAX RECON "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11838,
#       "modelname": "TRX250TM/FOUR TRAX RECON"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11839,
#       "modelname": "TRX420FA/FOUR TRAX RANCHER"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11840,
#       "modelname": "TRX420FA2/TRX420FPAE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11841,
#       "modelname": "TRX420FE1/TRX420FE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11842,
#       "modelname": "TRX420FM12/TRX420FMCE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11843,
#       "modelname": "TRX420FM2/TRX420FPME"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11844,
#       "modelname": "TRX420FPA/FOUR TRAX RANCHER "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11845,
#       "modelname": "TRX420PG"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11846,
#       "modelname": "TRX500FA (FOUR TRAX FOREMAN RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11849,
#       "modelname": "CMX250C (REBEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11850,
#       "modelname": "VT750C2 (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11851,
#       "modelname": "VT750C2L (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11852,
#       "modelname": "VT750C2F (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11853,
#       "modelname": "VT750C2S (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11855,
#       "modelname": "CB1100A/CB1100"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11856,
#       "modelname": "CB1100SA/CB1100 DELUXE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11857,
#       "modelname": "CBR125R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11868,
#       "modelname": "CBR600RR/CBR600RRE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11870,
#       "modelname": "CBR1000RR/CBR1000RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11871,
#       "modelname": "CBR1000S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11874,
#       "modelname": "GROM125 (GROM)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11875,
#       "modelname": "MSX125 (GROM)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11876,
#       "modelname": "NC750SA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11879,
#       "modelname": "VFR800F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11880,
#       "modelname": "VFR800F (INTERCEPTOR)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11882,
#       "modelname": "VFR1200FD/VFR1200FA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11883,
#       "modelname": "CTX700TA/CTX700A"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11884,
#       "modelname": "CTX1300A/CT1300AE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11885,
#       "modelname": "CTX1300D/CTX1300"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11891,
#       "modelname": "GL1800ALB (GOLD WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11892,
#       "modelname": "GL1800C (GOLDWING VALKYRIE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11903,
#       "modelname": "ST1300A"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11930,
#       "modelname": "CBR600RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11943,
#       "modelname": "TRX420FE (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11944,
#       "modelname": "TRX420FM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11945,
#       "modelname": "TRX420FM (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11946,
#       "modelname": "TRX420FPE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11947,
#       "modelname": "TRX420FPE (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11948,
#       "modelname": "TRX420FPM (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11949,
#       "modelname": "TRX420PGC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11950,
#       "modelname": "TRX420TE (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11951,
#       "modelname": "TRX420TM (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11952,
#       "modelname": "TRX500FE (FOUR TRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11953,
#       "modelname": "TRX500FM (FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11954,
#       "modelname": "TRX500FM (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11957,
#       "modelname": "TRX500FMC (FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11958,
#       "modelname": "TRX500FPE (FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11959,
#       "modelname": "TRX500FPE (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11960,
#       "modelname": "TRX500FPM (FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11961,
#       "modelname": "TRX500FPM (FOUR TRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11963,
#       "modelname": "TRX500PGC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11965,
#       "modelname": "VT750C2FL (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11966,
#       "modelname": "VT750RS (SHADOW RS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11967,
#       "modelname": "VT1300CS (SABRE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11968,
#       "modelname": "VT1300CSL (SABRE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11970,
#       "modelname": "VT1300CSA (SABRE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11971,
#       "modelname": "FSC600A (SILVER WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11972,
#       "modelname": "CBR250RA/CBR250R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11975,
#       "modelname": "CBR1000RA/CBR1000RRA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11978,
#       "modelname": "VFR1200FA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11979,
#       "modelname": "VFR1200FD/VFR1200F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11989,
#       "modelname": "ST1300A/ST1300"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 11993,
#       "modelname": "CRF80F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12010,
#       "modelname": "VT750CSA (SHADOW AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12021,
#       "modelname": "NC700SA/NC700S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12022,
#       "modelname": "VFR1200FAD/VFR1200FD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12023,
#       "modelname": "CBF1000A"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12053,
#       "modelname": "TRX500FE (FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12058,
#       "modelname": "VT750RS"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12061,
#       "modelname": "CRF230L"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12069,
#       "modelname": "CB1000R/CBR1000RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12070,
#       "modelname": "CBF600SA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12071,
#       "modelname": "CBR125RW"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12072,
#       "modelname": "CBR250RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12073,
#       "modelname": "CBR1000RRE/CBR1000RRA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12074,
#       "modelname": "VFR1200FAD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12075,
#       "modelname": "NT700VA/NT700V"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12076,
#       "modelname": "CBR125R/CBR125RS"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12077,
#       "modelname": "MRT260/COTA 4RT/4RT 260"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12090,
#       "modelname": "TRX420FPA (RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12092,
#       "modelname": "TRX420FM (RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12096,
#       "modelname": "TRX420FPE (RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12098,
#       "modelname": "TRX420FPM (RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12099,
#       "modelname": "TRX420PG (FOUR TRAX 420)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12101,
#       "modelname": "TRX420PGC (FOUR TRAX 420)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12103,
#       "modelname": "TRX500FM (FOREMAN 500)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12105,
#       "modelname": "TRX500FPA (FOREMAN RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12106,
#       "modelname": "TRX500FPE (FOUR TRAX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12107,
#       "modelname": "TRX500FPM (FOUR TRAX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12110,
#       "modelname": "TRX500PGC (RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12111,
#       "modelname": "TRX680FA (RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12113,
#       "modelname": "TRX680FGA (FOURTRAX RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12115,
#       "modelname": "TRX680FG (RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12123,
#       "modelname": "VT1300CXE (FURY)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12130,
#       "modelname": "VT750CAA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12131,
#       "modelname": "VT750CS"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12132,
#       "modelname": "VT750CT"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12136,
#       "modelname": "VT750C2A"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12137,
#       "modelname": "VT750C2B"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12139,
#       "modelname": "VT750S (SHADOW)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12144,
#       "modelname": "VT1300T"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12146,
#       "modelname": "FSC600D (SILVER WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12148,
#       "modelname": "NHX110 (ELITE 110)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12150,
#       "modelname": "SH150D/SH150i"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12158,
#       "modelname": "VT750S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12160,
#       "modelname": "VT1300CTA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12161,
#       "modelname": "CB1000RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12162,
#       "modelname": "NSA700A/DN-01"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12163,
#       "modelname": "VT750C (SHADOW ACE/AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12165,
#       "modelname": "VT750CE/VT750"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12166,
#       "modelname": "VTX1300RL/VTX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12167,
#       "modelname": "VTX1300R/VTX1300 (RETRO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12168,
#       "modelname": "VTX1300T/VTX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12169,
#       "modelname": "VTX1300TL/VTX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12177,
#       "modelname": "VTX1300T/VTX1300 (SPOKE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12179,
#       "modelname": "CBR125R/CBR125RE (SUPERSPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12180,
#       "modelname": "CBR600RE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12182,
#       "modelname": "CBR600RE/CBR600RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12183,
#       "modelname": "VFR800 (INTERCEPTOR)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12184,
#       "modelname": "VFR800A (INTERCEPTOR)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12185,
#       "modelname": "CBR1000RA/CBR1000R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12186,
#       "modelname": "CBR1000A2 (SUPERSPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12188,
#       "modelname": "CBR1000RE (SUPERSPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12189,
#       "modelname": "CRF230LL/CRF230L"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12191,
#       "modelname": "XL1000V (VARADERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12192,
#       "modelname": "CRF150RBE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12193,
#       "modelname": "CRF150RE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12194,
#       "modelname": "TRX90EXB (YOUTH MODEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12195,
#       "modelname": "TRX300X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12197,
#       "modelname": "TRX450ERB"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12198,
#       "modelname": "TRX250TE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12199,
#       "modelname": "TRX420FE (RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12200,
#       "modelname": "TRX420FG"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12202,
#       "modelname": "TRX420PMC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12203,
#       "modelname": "TRX500FE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12204,
#       "modelname": "TRX500FEC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12205,
#       "modelname": "TRX500FG (RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12206,
#       "modelname": "TRX500FMC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12208,
#       "modelname": "TRX500PEC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12209,
#       "modelname": "TRX500PMC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12210,
#       "modelname": "NPS50S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12215,
#       "modelname": "CHF50 (METROPOLITAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12216,
#       "modelname": "CHF50S (JAZZ)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12217,
#       "modelname": "CHF50 (JAZZ)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12218,
#       "modelname": "CHF50S (METROPOLITAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12220,
#       "modelname": "GL1100 (GOLDWING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12221,
#       "modelname": "GL1200 (GOLDWING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12222,
#       "modelname": "VT600C (SHADOW VLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12223,
#       "modelname": "VT750D (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12224,
#       "modelname": "VT1100C (SHADOW SPIRIT 1100)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12225,
#       "modelname": "VT1100C2 (SHADOW SABRE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12226,
#       "modelname": "VT1100D2"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12228,
#       "modelname": "NRX1800 (VALKYRIE RUNE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12230,
#       "modelname": "VTX1800F1/VTX1800F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12231,
#       "modelname": "VTX1800F3/VTX1800F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12232,
#       "modelname": "VTX1800N/VTX1800 NEO RETRO"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12233,
#       "modelname": "VTX1800N1/VTX1800N"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12234,
#       "modelname": "VTX1800N3/VTX1800N"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12235,
#       "modelname": "VTX1800R/VTX1800 RETRO"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12236,
#       "modelname": "VTX1800S/VTX1800 SPOKE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12237,
#       "modelname": "VTX1800T/VTX1800T TOURER"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12238,
#       "modelname": "VTX1800T1/VTX1800T"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12288,
#       "modelname": "CB599"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12289,
#       "modelname": "VFR800"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12315,
#       "modelname": "VFR800A"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12316,
#       "modelname": "VFR800AT"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12318,
#       "modelname": "CB900C/919"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12319,
#       "modelname": "CB900F/919"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12321,
#       "modelname": "CBR1000RE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12323,
#       "modelname": "VTR1000S (RC51)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12324,
#       "modelname": "XL200R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12326,
#       "modelname": "NT650J"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12327,
#       "modelname": "CR85R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12338,
#       "modelname": "CRF250RB"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12339,
#       "modelname": "CRF450RB"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12349,
#       "modelname": "CG150ESD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12350,
#       "modelname": "XR200R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12352,
#       "modelname": "CB50R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12353,
#       "modelname": "NSR50MIN"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12354,
#       "modelname": "TRX90/TRX90EX (YOUTH MODEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12355,
#       "modelname": "TRX90EX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12356,
#       "modelname": "TRX250EX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12357,
#       "modelname": "TRX700EX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12358,
#       "modelname": "TRX250TM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12359,
#       "modelname": "TRX350FE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12360,
#       "modelname": "TRX350FM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12361,
#       "modelname": "TRX350TE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12362,
#       "modelname": "TRX350TM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12363,
#       "modelname": "TRX400FA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12364,
#       "modelname": "TRX400FG (FOURTRAX 400)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12365,
#       "modelname": "TRX420FEC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12366,
#       "modelname": "TRX420FMC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12367,
#       "modelname": "TRX450FM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12368,
#       "modelname": "TRX500CG (RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12369,
#       "modelname": "TRX500FA (RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12370,
#       "modelname": "TRX500FGA (FOURTRAX FOREMAN RUBICON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12371,
#       "modelname": "TRX500TM"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12372,
#       "modelname": "TRX650FA (RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12373,
#       "modelname": "TRX650FG (RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12375,
#       "modelname": "NSS250A (REFLEX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12376,
#       "modelname": "PS250 (BIG RUCKUS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12382,
#       "modelname": "VT600CD (SHADOW VLX DELUXE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12383,
#       "modelname": "VT750DCA (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12384,
#       "modelname": "VT750DA (SHADOW SPIRIT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12385,
#       "modelname": "VT750DCB (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12386,
#       "modelname": "VT750DCB (SPIRIT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12387,
#       "modelname": "VT750DB (SHADOW SPIRIT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12388,
#       "modelname": "VT750T"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12389,
#       "modelname": "VT1100C2D (SABRE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12390,
#       "modelname": "VTX1800C1/VTX1800C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12391,
#       "modelname": "VTX1800FD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12392,
#       "modelname": "VTX1800F2/VTX1800F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12393,
#       "modelname": "VTX1800ND"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12394,
#       "modelname": "VTX1800N2/VTX1800N"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12395,
#       "modelname": "VTX1800R1/VTX1800R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12396,
#       "modelname": "VTX1800R2/VTX1800R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12397,
#       "modelname": "VTX1800R3/VTX1800R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12398,
#       "modelname": "VTX1800TD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12399,
#       "modelname": "VTX1800T2/VTX1800T"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12403,
#       "modelname": "VFR800AT (INTERCEPTOR ABS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12404,
#       "modelname": "CB900F (HORNET 919)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12405,
#       "modelname": "CBR1000RR (SUPERSPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12406,
#       "modelname": "CR85RB (CR85R EXPERT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12407,
#       "modelname": "TRX90EX (SportTrax 90 ES)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12408,
#       "modelname": "TRX250EX (SportTrax 250)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12409,
#       "modelname": "TRX300EX (SportTrax 300)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12410,
#       "modelname": "TRX400EX (SportTrax 400)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12411,
#       "modelname": "TRX450ERB (SportTrax 450)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12412,
#       "modelname": "TRX450ER (SportTrax 450)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12413,
#       "modelname": "TRX250TE (FourTrax 250)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12414,
#       "modelname": "TRX250TM (FourTrax 250)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12415,
#       "modelname": "TRX400FA (FourTrax Rancher AT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12416,
#       "modelname": "TRX400FGA (FourTrax Rancher AT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12417,
#       "modelname": "TRX500FMC (FOREMAN 500)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12418,
#       "modelname": "CH80 (ELITE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12419,
#       "modelname": "NPS50S (RUCKUS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12420,
#       "modelname": "CN250 (HELIX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12421,
#       "modelname": "NSS250AS (REFLEX SPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12422,
#       "modelname": "NSS250S (REFLEX SPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12423,
#       "modelname": "NSS250 (REFLEX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12455,
#       "modelname": "VT600C (VLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12456,
#       "modelname": "VT750C (A.C.E)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12457,
#       "modelname": "VTX1300T"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12458,
#       "modelname": "VTX1800C2/VTX1800C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12459,
#       "modelname": "VTX1800C3/VTX1800C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12460,
#       "modelname": "VTX1800S1/VTX1800S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12461,
#       "modelname": "VTX1800S2/VTX1800S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12462,
#       "modelname": "VTX1800S3/VTX1800S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12464,
#       "modelname": "CB600F/599"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12465,
#       "modelname": "CBR600F4/CBR600Fi"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12466,
#       "modelname": "CBR600Fi (SUPERSPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12468,
#       "modelname": "CBR600RR (SUPERSPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12470,
#       "modelname": "VFR800 (SPORT TOURER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12471,
#       "modelname": "VFR800A (SPORT TOURER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12472,
#       "modelname": "CB900F (HORNET)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12474,
#       "modelname": "RVT1000R (RC51)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12476,
#       "modelname": "CR85R (COMPETITION)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12477,
#       "modelname": "CR125R (COMPETITION)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12478,
#       "modelname": "CR250R (COMPETITION)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12479,
#       "modelname": "CRF250R (COMPETITION)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12480,
#       "modelname": "CRF450R (COMPETITION)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12481,
#       "modelname": "TRX500TM (FOURTRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12482,
#       "modelname": "TRX500TM (FOREMAN 500)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12483,
#       "modelname": "TRX90 (90cc YOUTH MODEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12484,
#       "modelname": "TRX250EX (250 SPORT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12485,
#       "modelname": "TRX350FE (FOURTRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12486,
#       "modelname": "TRX350FM (FOURTRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12487,
#       "modelname": "TRX350TE (FOURTRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12488,
#       "modelname": "TRX350TM (FOURTRAX RANCHER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12491,
#       "modelname": "GL1800B (GOLDWING BAGGER F6B)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12492,
#       "modelname": "CMX250X (REBEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12493,
#       "modelname": "VTR1000F (SUPERHAWK)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12494,
#       "modelname": "VTX1300C (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12496,
#       "modelname": "VTX1300S (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12497,
#       "modelname": "VT750CS (SHADOW AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12498,
#       "modelname": "C347GL1800 (GOLD WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12499,
#       "modelname": "NRX1800DA (VALKYRIE RUNE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12500,
#       "modelname": "NRX1800DB (VALKYRIE RUNE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12501,
#       "modelname": "NRX1800EA (VALKYRIE RUNE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12502,
#       "modelname": "NRX1800EB (VALKYRIE RUNE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12503,
#       "modelname": "VTX1800C1 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12504,
#       "modelname": "VTX1800C2 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12505,
#       "modelname": "VTX1800C3 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12506,
#       "modelname": "VTX1800F1 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12507,
#       "modelname": "VTX1800F2 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12508,
#       "modelname": "VTX1800N3 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12509,
#       "modelname": "VTX1800N2 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12510,
#       "modelname": "VTX1800N1 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12511,
#       "modelname": "VTX1800R3 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12512,
#       "modelname": "VTX1800R2 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12513,
#       "modelname": "VTX1800R1 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12514,
#       "modelname": "VTX1800S3 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12515,
#       "modelname": "VTX1800S2 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12516,
#       "modelname": "VTX1800S1 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12520,
#       "modelname": "VTX1800F3 (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12523,
#       "modelname": "RC1000VS (RC213V-S)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12527,
#       "modelname": "TRX90 (SPORTRAX90)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12528,
#       "modelname": "TRX250TE (RECON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12529,
#       "modelname": "RX250TM (RECON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12530,
#       "modelname": "TRX400FW (FOURTRAX FOREMAN 400)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12531,
#       "modelname": "TRX450FE (FOURTRAX FOREMAN) "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12532,
#       "modelname": "TRX450FM (FOURTRAX FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12533,
#       "modelname": "CTX700ND"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12534,
#       "modelname": "TRX650FA (FOURTRAX RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12535,
#       "modelname": "TRX650FGA (FOURTRAX RINCON)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12536,
#       "modelname": "CTX700D"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12537,
#       "modelname": "CRF1000A"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12538,
#       "modelname": "CRF1000D"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12539,
#       "modelname": "VFR1200X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12540,
#       "modelname": "VFR1200XD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12541,
#       "modelname": "CHF50A (METROPOLITAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12542,
#       "modelname": "CHF50P (METROPOLITAN II)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12543,
#       "modelname": "CHF50PA (METROPOLITAN II)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12544,
#       "modelname": "CHF50PS (METROPOLITAN II)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12545,
#       "modelname": "GL1800 (GOLD WING)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12546,
#       "modelname": "NRX1800BA (VALKYRIE RUNE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12547,
#       "modelname": "NRX1800BB (VALKYRIE RUNE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12548,
#       "modelname": "VTX1800C (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12552,
#       "modelname": "TRX400FGA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12553,
#       "modelname": "TRX500FGA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12554,
#       "modelname": "CB750 (NIGHTHAWK 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12555,
#       "modelname": "VF750C (MAGNA)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12556,
#       "modelname": "VT750CD (SHADOW ACE * 750 DLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12557,
#       "modelname": "VT750CD2 (SHADOW ACE * 750 DLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12558,
#       "modelname": "VT750CDA (SHADOW ACE * 750 DLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12559,
#       "modelname": "VT750CDB (SHADOW ACE * 750 DLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12560,
#       "modelname": "VT750CDC (SHADOW ACE * 750 DLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12561,
#       "modelname": "VT750CDD (SHADOW ACE * 750 DLX) "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12562,
#       "modelname": "VT750DC (SHADOW SPIRIT 750)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12564,
#       "modelname": "CBR900RR/CBR954RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12565,
#       "modelname": "CBR900RR/CBR929RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12566,
#       "modelname": "CBR900RE/CBR929RR ERION EDITION"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12568,
#       "modelname": "VTX1800R (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12569,
#       "modelname": "VTX1800S (VTX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12570,
#       "modelname": "GL1500CD (VALKYRIE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12571,
#       "modelname": "XR70R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12572,
#       "modelname": "XR50R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12573,
#       "modelname": "CR80R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12574,
#       "modelname": "CR85RB EXPERT"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12575,
#       "modelname": "XR80R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12576,
#       "modelname": "XR100R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12581,
#       "modelname": "VFR800Fi (INTERCEPTOR)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12583,
#       "modelname": "ST1100A"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12584,
#       "modelname": "VT1100C3 (SHADOW AERO)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12585,
#       "modelname": "GL1500C (VALKYRIE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12586,
#       "modelname": "GL1500CD (VALKYRIE TOURER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12587,
#       "modelname": "GL1500CT (VALKYRIE TOURER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12588,
#       "modelname": "GL1500CF (VALKYRIE INTERSTATE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12589,
#       "modelname": "GL1500SE (GOLD WING SE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12590,
#       "modelname": "CR80R (CR80R EXPERT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12591,
#       "modelname": "CR80RB (CR80RB EXPERT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12618,
#       "modelname": "VT600CD2"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12647,
#       "modelname": "VT1100T (SHADOW ACE TOURER)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12651,
#       "modelname": "CR500R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12653,
#       "modelname": "CMX250C2 (REBEL)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12654,
#       "modelname": "VF750C2 (MAGNA)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12658,
#       "modelname": "GL1500A (GOLD WING ASPENCADE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12661,
#       "modelname": "CBR600F4"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12662,
#       "modelname": "VT1100C2 (SHADOW ACE)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12663,
#       "modelname": "Z50R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12664,
#       "modelname": "PC800 (PACIFIC COAST)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12671,
#       "modelname": "XR200"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12709,
#       "modelname": "GL1500i"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12710,
#       "modelname": "EZ90"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12722,
#       "modelname": "RVF750R (RC45)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12839,
#       "modelname": "TRX400FG"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 12840,
#       "modelname": "TRX420FE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13340,
#       "modelname": "VTX1300RL/VTX1300R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13440,
#       "modelname": "TRX500FE2 (FOREMAN ES)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13441,
#       "modelname": "TRX500FM1 (FOREMAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13443,
#       "modelname": "TRX500FM5 (RUBICON IRS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13444,
#       "modelname": "TRX500FM7/ (FourTrax Foreman)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13445,
#       "modelname": "TRX500FM7/ (Rubicon Deluxe)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13446,
#       "modelname": "TRX500FA7/ (Rubicon DCT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13447,
#       "modelname": "TRX500FA7/ (Rubicon DCT Deluxe)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 13450,
#       "modelname": "Cota 300RR"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14008,
#       "modelname": "Honda Utility Vehicle "
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14057,
#       "modelname": "CRF250L/RL"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14058,
#       "modelname": "CRF250LA (RLA)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14060,
#       "modelname": "CBR600RA/CBR600RRA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14249,
#       "modelname": "CLARITY"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14789,
#       "modelname": "CH250"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14790,
#       "modelname": "SE50PI"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14791,
#       "modelname": "CH150"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14792,
#       "modelname": "SE50H"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14793,
#       "modelname": "SE50PH"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14794,
#       "modelname": "NQ50"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14795,
#       "modelname": "CMX450C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14796,
#       "modelname": "VT700C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14797,
#       "modelname": "VR700FII"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14798,
#       "modelname": "VF700C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14799,
#       "modelname": "XL250R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14800,
#       "modelname": "XL600R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14801,
#       "modelname": "TLR200"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14802,
#       "modelname": "CMX250C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14803,
#       "modelname": "CN250"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14804,
#       "modelname": "NB50"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14805,
#       "modelname": "VF1000R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14806,
#       "modelname": "VF500F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14807,
#       "modelname": "CB450SC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14808,
#       "modelname": "TG50"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14809,
#       "modelname": "CB700SC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14810,
#       "modelname": "VF1100C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14811,
#       "modelname": "VT500C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14813,
#       "modelname": "NB50M"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14822,
#       "modelname": "XL80"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14823,
#       "modelname": "XL100S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14824,
#       "modelname": "CB650SC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14825,
#       "modelname": "VF1100S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14826,
#       "modelname": "VF1000F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14827,
#       "modelname": "XL350R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14828,
#       "modelname": "NH80"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14865,
#       "modelname": "CB125"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14866,
#       "modelname": "VF700"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 14867,
#       "modelname": "NN50MD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15210,
#       "modelname": "XL125"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15831,
#       "modelname": "CMX300 (REBEL300)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15834,
#       "modelname": "CMX300A (REBEL300)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15835,
#       "modelname": "CMX500 (REBEL500)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15836,
#       "modelname": "CMX500A (REBEL500)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15843,
#       "modelname": "CBR1000S2/CBR1000RR SP2"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15844,
#       "modelname": "CB1100CA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 15845,
#       "modelname": "CB1100NA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 18864,
#       "modelname": "MSX125A (GROM)"
#     },
#     {
#       "make_id": 7351,
#       "make_name": "SUNDIRO  HONDA MOTORCYCLE CO. LTD ",
#       "model_id": 19706,
#       "modelname": "A1"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 21954,
#       "modelname": "CBR1000S1-CBR1000RR SP"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 21956,
#       "modelname": "GL1800D (Gold Wing Tour)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 21957,
#       "modelname": "GL1800DA (Gold Wing Tour)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 21958,
#       "modelname": "GL1800B (Gold Wing)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 22432,
#       "modelname": "CB650F"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 22433,
#       "modelname": "CB650FA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 23307,
#       "modelname": "NCW50 (METROPOLITAN)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 23308,
#       "modelname": "CRF250L / RL-CRF250L (RALLY)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 23309,
#       "modelname": "CRF250L / RLA-CRF250LA (RALLY)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 24319,
#       "modelname": "CRF1000A (Africa Twin)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 24320,
#       "modelname": "CRF1000D (Africa Twin)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 24321,
#       "modelname": "CRF1000A2 (Africa Twin Adventure Sports)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 24322,
#       "modelname": "CRF1000D2 (Africa Twin Adventure Sports)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 24323,
#       "modelname": "NC750X"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 24324,
#       "modelname": "NC750XD"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 24766,
#       "modelname": "CBF300NA (CBF300N) ABS"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25272,
#       "modelname": "CRF450L"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25273,
#       "modelname": "Z125M (Monkey)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25274,
#       "modelname": "Z125MA (Monkey ABS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25275,
#       "modelname": "GL1800BD (Gold Wing)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25276,
#       "modelname": "GL1800 (Gold Wing Tour)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25757,
#       "modelname": "CB1000RA (CB1000R)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25758,
#       "modelname": "C125A (SUPER CUB C 125) ABS"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25759,
#       "modelname": "CRF250RL (CRF250RALLY)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25760,
#       "modelname": "CRF250LA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25761,
#       "modelname": "CRF250RLA (CRF250RALLY)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25762,
#       "modelname": "CBR650R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25763,
#       "modelname": "CBR650RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25764,
#       "modelname": "CB650R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25765,
#       "modelname": "CB650RA"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25936,
#       "modelname": "CBF300N (CB300R)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 25937,
#       "modelname": "CBF300NA (CB300R) ABS"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26026,
#       "modelname": "CLARITY ELECTRIC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26254,
#       "modelname": "Pioneer"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26688,
#       "modelname": "CRF1100D (AFRICA TWIN DCT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26689,
#       "modelname": "CRF1100A4 (AFRICA TWIN ADVENTURE SPORTS)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26690,
#       "modelname": "CRF1100D4 (AFRICA TWIN ADVENTURE SPORTS DCT)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26826,
#       "modelname": "VT800C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26829,
#       "modelname": "CH125"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26830,
#       "modelname": "CM200"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26831,
#       "modelname": "CM250C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26833,
#       "modelname": "CX500C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26834,
#       "modelname": "CX500TC"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26835,
#       "modelname": "CM450"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26836,
#       "modelname": "VF500C"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26837,
#       "modelname": "XL500S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26839,
#       "modelname": "XR500R"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26840,
#       "modelname": "CB750"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26841,
#       "modelname": "CB650"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26842,
#       "modelname": "VF750S"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26844,
#       "modelname": "VT750CD3 (SHADOW ACE * 750 DLX)"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26847,
#       "modelname": "CB550"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 26850,
#       "modelname": "CX650"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 27165,
#       "modelname": "Accord Crosstour"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 27254,
#       "modelname": "Talon"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 27408,
#       "modelname": "ADV150"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 27409,
#       "modelname": "FIREBLADE"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 27546,
#       "modelname": "CBX"
#     },
#     {
#       "make_id": 474,
     
#       "model_id": 27659,
#       "modelname": "CRF450RL"
#     }
#    ]
# honda = Make.find_by(make_name: "HONDA")
# honda_models.each do |honda| 
#   honda.models.create(honda)
# end 
