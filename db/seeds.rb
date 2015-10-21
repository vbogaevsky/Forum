# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Board.delete_all
Topick.delete_all
Post.delete_all

User.create! handle: "auxilla", email: "auxilla@google.com", moderator: false, admin: false
User.create! handle: "helper", email: "helper@gmail.com", moderator: false, admin: false
Board.create! name: "Animals"
Board.create! name: "Plants"
Board.create! name: "Bacteria"
Topick.create! theme: "Mammals", post_id: 1, user_id: 1, board_id: 1
Post.create! message: "Mammals are any members of a clade of endothermic amniotes distinguished from reptiles and birds by the possession of hair, three middle ear bones, mammary glands, and a neocortex. The mammalian brain regulates body temperature and the circulatory system, including the four-chambered heart.", user_id: 1, topick_id: 1, board_id: 1

Topick.create! theme: "Birds", post_id: 2, user_id: 1, board_id: 1
Post.create! message: "Birds are a group of endothermic vertebrates, characterised by feathers, a beak with no teeth, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a lightweight but strong skeleton. Birds live worldwide and range in size from the 5 cm (2 in) bee hummingbird to the 2.75 m (9 ft) ostrich.", user_id:2, topick_id: 2, board_id: 1

Topick.create! theme: "Trees", post_id: 3, user_id: 1, board_id: 2
Post.create! message: "In botany, a tree is a perennial plant with an elongated stem, or trunk, supporting branches and leaves in most species. In some usages, the definition of a tree may be narrower, including only woody plants with secondary growth, plants that are usable as lumber or plants above a specified height. Trees are not a taxonomic group but include a variety of plant species that have independently evolved a woody trunk and branches as a way to tower above other plants to compete for sunlight.", user_id: 2, topick_id: 3, board_id: 2

Topick.create! theme: "Flowers", post_id: 4, user_id: 1, board_id: 2
Post.create! message: "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs.", user_id: 1, topick_id: 4, board_id: 2

Topick.create! theme: "Thiomargarita namibiensis", post_id: 5, user_id: 2, board_id: 3
Post.create! message: "Thiomargarita namibiensis is a gram-negative coccoid Proteobacterium, found in the ocean sediments of the continental shelf of Namibia. It is one of the largest bacteria ever discovered, as a rule 0.1–0.3 mm (100–300 µm) in diameter, but sometimes attaining 0.75 mm (750 µm).", user_id: 2, topick_id: 5, board_id: 3
Post.create! message: "Cells of Thiomargarita namibiensis are large enough to be visible to the naked eye. Although the species holds the record for the most massive bacterium, Epulopiscium fishelsoni – previously discovered in the gut of surgeonfish – grows slightly longer, but narrower.", user_id: 1, topick_id: 5, board_id: 3

Post.create! message: "The mammals include the largest animals on the planet, the rorquals and other large whales, as well as some of the most intelligent, such as elephants, some primates, including humans, and some of the cetaceans.", user_id: 2, topick_id: 1, board_id: 1
 
