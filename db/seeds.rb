# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.new(
  email: 'user@arkibuhay.com',
  password: 'password',
  password_confirmation: 'password',
  first_name: 'John',
  last_name: 'Doe',
  role: 'Scientist'
)

user1.skip_confirmation!
user1.save!

species1 = Species.new(
  kingdom: 'Animalia',
  phylum: 'Chordata',
  classification: 'Aves',
  order: 'Accipitriformes',
  family: 'Accipitridae',
  genus: 'Pithecophaga',
  species_name: 'jefferyi',
  common_name: 'Philippine Eagle',
  location: 'Leyte, Luzon, Mindanao, and Samar',
  description: "It is also called the “Monkey-Eating Eagle” and can be only found in the Philippines's lowland forests nesting on old, large growth trees. It has a massively arched beak with long crown feathers, the only blue-eyed eagle in the world that can see eight times the distance than humans. They feed on monkeys, lemurs, snakes, bats, and monkeys. Keeps a mate for life and lays a single egg every two years. Has a lifespan of over forty years when captured but less when in the wild."
)
species1.save

species2 = Species.create(
  kingdom: 'Animalia',
  phylum: 'Chordata',
  classification: 'Mammalia',
  order: 'Primates',
  family: 'Tarsiidae',
  genus: 'Carlito',
  species_name: 'syrichta',
  common_name: 'Philippine Tarsier',
  location: 'Bohol, Leyte, Samar, and Mindanao',
  description: 'The Philippine tarsier, known locally as mawumag in Cebuano and other Visayan languages, and magô in Waray, is a species of tarsier endemic to the Philippines. It is found in the southeastern part of the archipelago, particularly on the islands of Bohol, Samar and Leyte. '
)
species2.save

species3 = Species.create(
  kingdom: 'Animalia',
  phylum: 'Chordata',
  classification: 'Mammalia',
  order: 'Artiodactyla',
  family: 'Bovidae',
  genus: 'Bubalus',
  species_name: 'mindorensis',
  common_name: 'Tamaraw',
  location: 'Mindoro',
  description: 'The species is indigenous to Mindoro and populate forests and grasslands. In 2016, a Tamaraw population count of 430 was recorded placing it in the list of critically endangered species. The main threat to Tamaraws are poachers who hunt these species for sports and local consumption. Further, resettlement due to high human population growth is threatening their habitat. The Tamaraw is a small, stocky buffalo with a grayish-black color, and a pair of stout horns which are straight, backward-pointing, and Y-shaped. An adult weighs between 200 to 300 kilograms and a lifespan of 20 to 25 years. The incubation period is from 276 to 315 days and a litter size of 1.'
)
species3.save

Species.create(
  kingdom: 'Animalia',
  phylum: 'Chordata',
  classification: 'Reptilia',
  order: 'Crocodilia ',
  family: 'Crocodylidae',
  genus: 'Crocodylus',
  species_name: 'novaeguineae mindorensis',
  common_name: 'Philippine Freshwater Crocodile',
  location: 'Luzon and Mindanao',
  description: 'This is a small species of a crocodile, they have a broad snout and a heavy armor. Males mature at about 2.1 meters and females at 1.3, they begin mating at this length. Breeding is from December to May and egg laying is from May to August. They can lay eggs up to three times a year with each batch size varying from 7 to 33 eggs. The average life span is from 70 to 80 years old.'
)

Species.create(
  kingdom: 'Animalia',
  phylum: 'Chordata',
  classification: 'Mammalia',
  order: 'Dermoptera',
  family: 'Cynocephalidae',
  genus: 'Cynocephalus',
  species_name: 'volans',
  common_name: 'Philippine Flying Lemur',
  location: 'Basilan, Leyte, Samar, Bohol, and Mindanao',
  description: 'They are one of two species of flying lemurs, it cannot fly but they can glide distances of over 100 meters and they are not lemurs. The kagwang live in heavily forested areas, high up in the trees they hardly touch the ground. The average body weight of the Philippine flying lemur is about 1 to 1.7 kg and the head to body length is 33 to 38 centimeters. They have a big head, broad eyes, small ears, 34 teeth for increased bite strength, and web and clawed feet for fast climbing and gliding. The female gives birth usually to one young. They are considered pests because they eat fruits, their other diets consist of insects, young leaves, plant shoots, and flowers.'
)

Species.create(
  kingdom: 'Animalia',
  phylum: 'Chordata',
  classification: 'Mammalia',
  order: 'Artiodactyla',
  family: 'Tragulidae',
  genus: 'Tragulus',
  species_name: 'nigricans',
  common_name: 'Philippine Mouse-deer',
  location: 'Basilan, Leyte, Samar, Bohol, and Mindanao',
  description: "Locally called pilandok is native to the island of Palawan. It is a shy and nighttime animal that tiptoes away when watched. You will find a hard time spotting them when they are hiding in the midst of thick vegetation. They don't have antlers just like a true deer but they tusk-like teeth to defend themselves. The pilandok is small in size averaging 40 to 50 in length and a height of 18 centimeters at the shoulders. It has dark-brown color with white stripes at the throat and chest. It has suicidal tendencies, they were seen banging their heads against trees and jumping off cliffs to avoid stress."
)

Publication.create(
  title: 'Birds of the World: Recommended English Names',
  summary: 'This book provides the first standardized English-language nomenclature for all living birds of the world. While previous checklists, including those by Sibley and Monroe, Clements, and Howard and Moore, were primarily taxonomic works, Birds of the World provides English-language names based on the rules and principles developed by leading ornithologists worldwide and endorsed by members of the preeminent International Ornithological Congress.',
  url: 'https://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=175560#null',
  species_id: species1.id,
  user_id: user1.id
)

Publication.create(
  title: 'Birds of the World: Recommended English Names - Gill, Frank, and Minturn Wright',
  summary: 'This book provides the first standardized English-language nomenclature for all living birds of the world. While previous checklists, including those by Sibley and Monroe, Clements, and Howard and Moore, were primarily taxonomic works, Birds of the World provides English-language names based on the rules and principles developed by leading ornithologists worldwide and endorsed by members of the preeminent International Ornithological Congress.',
  url: 'https://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=175560#null',
  species_id: species1.id,
  user_id: user1.id
)

Publication.create(
  title: 'Handbook of the Mammals of the World. Volume 3. Primates - 	Mittermeier, Rusell A., Anthony B. Rylands, and Don E. Wilson, eds.',
  summary: 'Primates counts more than 470 of them: 138 species of prosimians - the lemurs, lorises, pottos and tarsiers in Africa and Asia; 157 species of monkeys in the New World tropics; another 158 monkeys in the Old World tropics; and 25 apes, 19 of them gibbons along with six ...',
  url: 'https://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=944114#null',
  species_id: species2.id,
  user_id: user1.id
)

Publication.create(
  title: 'Mammal Species of the World: A Taxonomic and Geographic Reference, 2nd ed., 3rd printing - Wilson, Don E., and DeeAnn M. Reeder, eds.',
  summary: 'This is the 3rd edition of the now classic and official (endorsed by the American Society of Mammalogists), compendium of the living or recently extinct mammal species of the world. This edition is issued in a 2-volume set (the 2nd volume for Rodentia only), including 9,373 references and an index of scientific and common names.',
  url: 'https://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=625123#null',
  species_id: species3.id,
  user_id: user1.id
)
