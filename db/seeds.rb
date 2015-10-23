
Organization.create!([
  {name: "Poplar Spring Animal Sanctuary", about: "Poplar Spring Animal Sanctuary is a 400 acre non-profit refuge in Poolesville, Maryland for farm animals and wildlife. Founded in 1996, our mission is to offer care, rehabilitation, and permanent sanctuary for neglected, abused or abandoned farm animals, as well as providing a protected habitat for wildlife. We promote compassion and the humane treatment of all animals by educating the public on farm animal and wildlife issues.", url: "http://www.animalsanctuary.org", logo_file_name: "Screenshot_from_2015-10-04_11_18_18.png", logo_content_type: "image/png", logo_file_size: 37048, logo_updated_at: "2015-10-04 06:18:37"},
  {name: "Animal Place", about: "Founded in 1989 Animal Place is one of the oldest and largest sanctuaries for farmed animals in the country. Nestled on 600-acres in Grass Valley, CA, Animal Place provides refuge to hundreds of neglected farmed animals. In addition to permanent sanctuary, Animal Place&#8217;s Rescue Ranch is a 60-acre adoption center, placing needy farmed animals into permanent homes.", url: "http://animalplace.org/", logo_file_name: "AnimalPlace.png", logo_content_type: "image/png", logo_file_size: 11215, logo_updated_at: "2015-10-04 06:28:52"},
  {name: "Living Free Animal Sanctuary", about: "Founded in 1980, Living Free was among the first privately funded, no-kill animal sanctuaries rescuing cats and dogs from imminent shelter euthanasia. We carry on that mission today, and are working to increase public awareness so that soon all shelters can become no-kill. We believe every animal has a right to live with compassion and dignity, and we provide hope until they find their forever home.", url: "http://living-free.org/", logo_file_name: "LivingFree.png", logo_content_type: "image/png", logo_file_size: 35661, logo_updated_at: "2015-10-04 06:48:40"},
  {name: "Farm Sanctuary", about: "Farm Sanctuary was founded in 1986 to combat the abuses of factory farming and encourage a new awareness and understanding about farm animals. Today, Farm Sanctuary is the nation’s largest and most effective farm animal rescue and protection organization. We have rescued thousands of animals and cared for them at our sanctuaries in Watkins Glen, New York; Northern California (Orland); and the Los Angeles area. At Farm Sanctuary, these animals are our friends, not our food. We educate millions of people about their plight and the effects of factory farming on our health and environment. We advocate for laws and policies to prevent suffering and promote compassion, and we reach out to legislators and businesses to bring about institutional reforms.", url: "http://www.farmsanctuary.org", logo_file_name: "FarmSanctuary.png", logo_content_type: "image/png", logo_file_size: 10962, logo_updated_at: "2015-10-04 06:50:14"},
  {name: "Harvest Home Sanctuary", about: "Our mission is to provide life-long care for our rescued animals, and to educate the public about humane animal care and practices. We rehabilitate, both physically and psychologically, mistreated animals and, if possible, we will find appropriate homes for them. In an effort to prevent further cruelty to these animals, we educate the public on caring for companion animals as well as on issues concerning farmed animals.\r\n\r\nHarvest Home is an official sanctuary for House Rabbit Society, based in Richmond, CA.\r\n\r\nNestled in fertile farmland in California’s San Joaquin Valley, our two-acre rescue and rehabilitation sanctuary is home to 11 unique animal species. Our life-saving animal protection efforts are focused primarily on rabbits and birds.", url: "http://harvesthomesanctuary.org", logo_file_name: "HarvestHomeSanc.png", logo_content_type: "image/png", logo_file_size: 11871, logo_updated_at: "2015-10-04 06:51:46"},
  {name: "Lions, Tigers & Bears", about: "Lions Tigers & Bears (LTB) was founded in 2002, by Bobbi Brink.\r\n\r\nLTB is located just outside of Alpine, California on the edge of the Cleveland National Forest in beautiful San Diego County. Located at an elevation of approximately 4,000 feet, we are situated in an idyllic area that provides peace and tranquility for our rescued animal residents to live out the rest of their lives with dignity in a safe and caring environment.\r\n\r\nThe total sanctuary property is 93 acres in size, and about 20 acres are currently developed, meaning we have plenty of room to grow and provide more lifetime homes to abused and abandoned exotic animals in need of a better tomorrow.\r\n\r\nLTB is home to over 60 animals, 19 species in total. These animals include lions, tigers, black bears, bobcats, a mountain lion, leopard, African serval, Himalayan black bears, grizzly bears, llamas, horses, goats, sheep, chickens, a miniature horse, miniature donkey, peacocks, and a macaw!\r\n\r\nOur sanctuary has a volunteer office, feed room, barn, an educational farm animal encounter area, a pasture, an on-site medical facility and eight species-specific habitats for our big cats and bears. ", url: "https://lionstigersandbears.org", logo_file_name: "LionsTigers.png", logo_content_type: "image/png", logo_file_size: 83405, logo_updated_at: "2015-10-04 06:54:04"},
  {name: "Food For Life Global", about: "Food for Life Global was founded in 1995 and is currently based in Ljubljana, Slovenia to serve as the headquarters and coordinating office for Food for Life projects worldwide.\r\n\r\nThe distribution of sanctified plant-based meals has been and will continue to be an essential part of India’s Vedic culture of hospitality from which Food for Life was born. Since its inception in the early 70’s, Food for Life has tried to liberally distribute pure plant-based meals (prasadam) throughout the world with the aim of creating peace and prosperity. The Food for Life Global office, directed by Paul Rodney Turner, facilitates the expansion, co-ordination and promotion of prasadam distribution throughout the world. The project started in 1974 after yoga students of Swami Prabhupada became inspired by his plea that “No one within a ten mile radius of a temple should go hungry!” Today Food for Life is active in over 60 countries.", url: "http://www.ffl.org/", logo_file_name: "ffl.png", logo_content_type: "image/png", logo_file_size: 11397, logo_updated_at: "2015-10-04 10:31:00"}
])
Animal.create!([
  {name: "Bella Bunny", species: "Rabbit", summary: "Buy Bella her favorite Kale & Carrot tops", fullDescription: "Bella Bunny is a Lionhead rabbit who came from a local shelter that was totally full of unwanted rabbits and was ready to euthanize her.\r\n\r\nMany people purchase rabbits thinking they are an easy pet for children and then become tired of caring for them, giving them up to a shelter. Bella was one of the lucky ones, and she will now be able to live for the rest of her life in a happy home.\r\n\r\nShe loves to run and jump and play in the chicken yard, and her favorite treats are carrots with tops and kale.", amount: "50.0", amountRaised: "0.0", picture_file_name: "bella2.jpg", picture_content_type: "image/jpeg", picture_file_size: 323768, picture_updated_at: "2015-10-04 09:43:58", organization_id: 1},
  {name: "Adam", species: "Sheep", summary: "Adam needs vaccines", fullDescription: "Adam is a young mixed breed sheep who was rescued when he was found in a wooded area in D.C. in a small cat carrier with five men surrounding him.\r\n\r\nSomeone who was cutting through the woods walking to a Metro station saw the men and the poor little sheep, and called the police. Adam was confiscated and transported to the D.C. animal shelter.\r\n\r\nLuckily for Adam it is against the law to have livestock in the city, because the men were about to kill him. When Adam first arrived he was very dirty and thin. He had obviously been kept in the carrier for some time, and he was caked with manure and his wool all had to be cut off to clean him.\r\n\r\nAfter a long period of receiving proper care and lots of love, Adam is now a happy and healthy sheep who loves to be pet. He even wags his tail like a dog when you pet him! His favorite treats are apple pieces and popcorn.", amount: "100.0", amountRaised: "25.0", picture_file_name: "adam2.jpg", picture_content_type: "image/jpeg", picture_file_size: 40575, picture_updated_at: "2015-10-04 09:50:17", organization_id: 1},
  {name: "Ivan & Misha", species: "Pig", summary: "Ivan & Misha need a water tub", fullDescription: "Ivan and Mishka were born in 2011 and raised at a pumpkin patch and petting zoo. A visitor to the pumpkin patch was horrified to see the two piglets and inquired about their fate. The owner stated the piglets would be sold for slaughter. The visitor was horrified and worked tirelessly to get custody of both piglets, ensuring their fate would be sanctuary, not slaughter.\r\n\r\nThe pumpkin patch owner agreed never to have animals again!\r\n\r\nIvan (pictured) is shy when outside of the barn but is often interested in belly rubs inside. Mishka is friendly and sweet.", amount: "45.0", amountRaised: "5.0", picture_file_name: "Ivan-300x200.jpg", picture_content_type: "image/jpeg", picture_file_size: 28549, picture_updated_at: "2015-10-04 09:54:37", organization_id: 2},
  {name: "Fergie", species: "Dog", summary: "Buy Fergie some toys", fullDescription: "Fergie, although regal in her demeanor, displays lots of enthusiasm and is always ready for a walk or run. She enjoys a game of catch me if you can with her neighbor, as they race up and down their yards, seeing who can run faster.\r\n\r\nFergie loves everyone, however, when it comes to meeting other dogs she would probably do better with a submissive, calm dog that is well socialized.\r\n\r\nFergie bonds quickly with the staff and volunteers that walk her. She is generally easy going, but at the same time independent. She would benefit from an adopter who is firm, but gentle and consistent in setting boundaries.\r\n\r\nWhy Fergie has not been adopted yet is an absolute mystery! She is waiting for that special owner or family who enjoys energetic walks, playing and training and who want a close bond with their dog.", amount: "35.0", amountRaised: "10.0", picture_file_name: "fergie.jpg", picture_content_type: "image/jpeg", picture_file_size: 25955, picture_updated_at: "2015-10-04 09:56:52", organization_id: 3},
  {name: "Sprinkles", species: "Pig", summary: "Buy Sprinkles & his buddies a new feeder", fullDescription: "Sprinkles came to us as a nervous, skinny little piglet who wouldn’t eat. Rescued from a factory farm that had separated him from his mother, docked his tail, and castrated him without anesthesia, Sprinkles was traumatized and scared of the world. Tim was the runt of his litter. Found malnourished and sickly, he had a badly-injured foot and large hernia and faced premature death. Abandoned by those who were supposed to care for him, Tim was inconsolable when he first arrived at our New York Shelter. Alone, these little pigs were timid, frightened, and sad. And though they warmed up to and sought solace from their caregivers, they still longed for the comfort that only another member of their species could provide. Lucky for them, we had the exact medicine they needed to pull through and wasted no time introducing the two. Bonded within moments of meeting, Sprinkles and Tim received the greatest gifts any animal could ask for — permanent refuge and a friendship that will last a lifetime. Since the happy day they met, the two have been unstoppable, as you can see from their wild romp in this sweet video. Confident and deliriously happy, Sprinkles and Tim are now grown but remain the best of friends.", amount: "150.0", amountRaised: "25.0", picture_file_name: "sprinkles.png", picture_content_type: "image/png", picture_file_size: 243830, picture_updated_at: "2015-10-04 10:04:49", organization_id: 4},
  {name: "Blossom", species: "Bear", summary: "Buy Blossom her favorite food & vegetables...", fullDescription: "Blossom lived with Delilah at the Little River Zoo in Norman, Oklahoma. They were the lone residents left at the zoo, following the closure of the zoo in 2011 due to continuing financial woes. Faced with money problems, zoo officials tried to maintain their standards of care while finding homes for their 240 animals. But sadly for Blossom and Delilah, their diet was neglected, as were the grounds where they were kept. After several months of fruitless searching, officials still had not found a home for the two ill-nourished black bears. The situation was so desperate that negotiations had begun with a “big game” ranch where the bears could be hunted and killed by animal gamers.\r\n\r\nAfter hearing about Blossom and Delilah, Bobbi began working with the zoo to load and transport both bears to LTB. At that time, LTB was in the midst of constructing a new bear habitat for its first rescued bear – Liberty. As construction continued on the bear habitat, LTB began making modifications to a new trailer that could handle the trip to Oklahoma and bring both bears back to LTB safely. New equipment was needed, such as air conditioners and cages that would make their long drive a much healthier ride. Bobbi’s dad worked tirelessly installing the air conditioning on the trailer, installing a new generator and new circuit breakers, helping to build the cage and make it work, and installing new vents for air on top of trailer.\r\n\r\nPrior to the trailer’s completion, Bobbi learned that a heat wave had hit the mid-section of the country, so she immediately flew to Oklahoma to check on the bears’ situation and their health. She found the bears to be in moderate health, a little overweight from the unusual diet they had been fed, but otherwise faring well. LTB then hired an Oklahoma veterinarian to examine the bears and verify that they were healthy enough to make the long journey to San Diego.\r\n\r\nFinal efforts were made to complete the new trailer and, only a week after returning from Oklahoma, Bobbi was off again, this time with trailer in tow, ready to bring the bears home.\r\n\r\nSince then, both Blossom and Delilah have adapted well to their new habitat and new home at LTB. They share their habitat with Liberty, Meatball the Bear, and Sugar Bear.\r\n", amount: "47.5", amountRaised: "0.0", picture_file_name: "blossoma-700x700.jpg", picture_content_type: "image/jpeg", picture_file_size: 147328, picture_updated_at: "2015-10-04 10:10:52", organization_id: 6},
  {name: "Balaram", species: "Cow", summary: "Balaram and his buddies need a new fence ", fullDescription: "Balarama is happy grazing all day like most cows or bulls, only he has the reassurance that he will never be killed and will live a long and natural life. Most people are unaware that cattle can live as long as 25 years, but sadly most dairy cows only live for 3 years. Another odd thing about our modern society is that most people have never seen a cow or bull in the flesh. These docile and kind animals that serve humankind unconditionally are often kept away from public view in crowded feedlots. When people get to see and pat these gentle giants they are overwhelmed with joy and typically feel conflicted afterwards about their decision to eat meat. I am sure that if you ever got to meet Balarama you too would fall in love.", amount: "700.0", amountRaised: "150.0", picture_file_name: "balaram.jpg", picture_content_type: "image/jpeg", picture_file_size: 91473, picture_updated_at: "2015-10-04 10:33:59", organization_id: 7}
])
