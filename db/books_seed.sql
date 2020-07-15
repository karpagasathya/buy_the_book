-- Use JAWS_DB
USE zm03bn07x5wf2337;

-- Insert Books into Book Table
INSERT INTO Book(title,genre,pubYear,price,inventory,bookDescription,createdAt,updatedAt,AuthorId) 

-- Values are || Title | Genre | Published Year | Price | Inventory | Description | Created DtTm | Updated DtTm | Author ID ||
VALUES 
 ('28 Summers','NYT',2020,'28',4,'A relationship that started in 1993 between Mallory Blessing and Jake McCloud comes to light while she is on her deathbed and his wife runs for president.',sysdate(),sysdate(),1)
,('The Vanishing Half','NYT',2020,'27',8,'The lives of twin sisters who run away from a Southern Black community at age 16 diverge as one returns and the other takes on a different racial identity but their fates intertwine.',sysdate(),sysdate(),2)
,('The Room Where it Happened','NYT',2020,'32.50',7,'The former national security advisor gives his account of the 17 months he spent working for President Trump.',sysdate(),sysdate(),3)
,('White Fragility','NYT',2018,'16',4,'Historical and cultural analyses on what causes defensive moves by white people and how this inhibits cross-racial dialogue.',sysdate(),sysdate(),4)
,('Where the Crawdads Sing','NYT',2018,'26',7,'In a quiet town on the North Carolina coast in 1969, a young woman who survived alone in the marsh becomes a murder suspect.',sysdate(),sysdate(),5)
,('Camino Winds','NYT',2020,'28.95',9,'The line between fact and fiction becomes blurred when an author of thrillers is found dead after a hurricane hits Camino Island.',sysdate(),sysdate(),6)
,('How to be an Antiracist','NYT',2019,'27',3,'A primer for creating a more just and equitable society through identifying and opposing racism.',sysdate(),sysdate(),7)
,('Little Fires Everywhere','NYT',2017,'17',5,'An artist with a mysterious past and a disregard for the status quo upends a quiet town outside Cleveland.',sysdate(),sysdate(),8)
,('So You Want To Talk About Race','NYT',2019,'16.99',2,'A look at the contemporary racial landscape of the United States',sysdate(),sysdate(),9)
,('To Kill A Mockingbird','Classic',1960,'15.99',10,'In "To Kill a Mockingbird", author Harper Lee uses memorable characters to explore civil rights and racism in the segregated Southern United States of the 1930s. Told through the eyes of Scout Finch, you learn about her father Atticus Finch, an attorney who hopelessly strives to prove the innocence of a black man unjustly accused of rape; and about Boo Radley, a mysterious neighbor who saves Scout and her brother Jem from being killed.',sysdate(),sysdate(),10)
,('Anne of Green Gables','Classic',1908,'5.99',8,'Anne of Green Gables is the story of a young orphan girl, Anne, who is mistakenly delivered to an older couple looking to adopt a boy to work on their farm in Avonlea on Prince Edward Island. After the couple meets Anne, they decide to keep her despite her not being of the appropriate gender.',sysdate(),sysdate(),11)
,('The Call of the Wild','Classic',1903,'12.95',6,'Based on Jack London''s experiences as a gold prospector in the Canadian wilderness and his ideas about nature and the struggle for existence, The Call of the Wild is a tale about unbreakable spirit and the fight for survival in the frozen Alaskan Klondike.',sysdate(),sysdate(),12)
,('Pride and Prejudice','Classic',1913,'9.00',9,'A classic of English literature , written with incisive wit and superb character delineation, it centres on the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy , a rich aristocratic landowner.',sysdate(),sysdate(),13)
,('The Great Gatsby','Classic',1925,'17.00',4,'The story is of the fabulously wealthy Jay Gatsby and his new love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted "gin was the national drink and sex the national obsession," it is an exquisitely crafted tale of America in the 1920s.',sysdate(),sysdate(),14)
,('Wuthering Heights','Classic',1847,'8.00',7,'Wuthering Heights is a classic gothic horror/romance novel written by Emily Bront and published in England in 1847. The book was originally published under the pen name Ellis Bell and Bronte died the year after it was released. When the book was first released it was considered controversial for its themes of violence and its challenge of Victorian ideals.',sysdate(),sysdate(),15)
,('The Picture of Dorian Gray','Classic',1890,'6.99',5,'In the stately London home of his aunt, Lady Brandon, the well-known artist Basil Hallward meets Dorian Gray. Dorian is a cultured, wealthy, and impossibly beautiful young man who immediately captures Basil''s artistic imagination. Dorian sits for several portraits, and Basil often depicts him as an ancient Greek hero or a mythological figure. The Picture of Dorian Gray is the story of one beautiful, innocent young man''s seduction, moral corruption, and eventual downfall.',sysdate(),sysdate(),16)
,('Animal Farm','Classic',1945,'18.50',3,'One of Orwell''s finest works, it is a political fable based on the events of Russia''s Bolshevik revolution and the betrayal of the cause by Joseph Stalin. The book concerns a group of barnyard animals who overthrow and chase off their exploitative human masters and set up an egalitarian society of their own.',sysdate(),sysdate(),17)
,('The Cather in the Rye','Classic',1951,'9.99',2,'The novel details two days in the life of 16-year-old Holden Caulfield after he has been expelled from prep school. Confused and disillusioned, Holden searches for truth and rails against the phoniness of the adult world. He ends up exhausted and emotionally unstable.',sysdate(),sysdate(),18)
,('The Giving Tree','Childrens',1964,'17.99',8,'The book follows the lives of an apple tree and a boy, who develop a relationship with one another. The tree is very "giving" and the boy evolves into a "taking" teenager, man, then elderly man. Despite the fact that the boy ages in the story, the tree addresses the boy as "Boy" his entire life.',sysdate(),sysdate(),24)
,('Where the Wild Things Are','Childrens',1963,'8.95',9,'This story focuses on a young boy named Max who, after dressing in his wolf costume, wreaks such havoc through his household that he is sent to bed without his supper. Max''s bedroom undergoes a mysterious transformation into a jungle environment, and he winds up sailing to an island inhabited by malicious beasts known as the "Wild Things."',sysdate(),sysdate(),19)
,('The Cat in the Hat','Childrens',1957,'9.99',4,'The Cat in the Hat is a book where an eccentric stranger (who''s a cat!) comes into the house of two young children,Sally and Sam, who are having a very dull day. Their mother is out, and when the Cat comes in, he reassures the kids that their mother won''t mind him or his tricks!',sysdate(),sysdate(),20)
,('The Tale of Peter Rabbit','Childrens',1902,'7.99',6,'The widowed mother rabbit warns her four rabbit children, Flopsy, Mopsy, Cottontail and Peter not to enter the vegetable garden of a man named Mr. McGregor, whose wife, she tells them, put their father in a pie after he entered. Her triplets (Flopsy, Mopsy and Cottontail) obediently refrain from entering the garden, but Peter enters the garden to snack on some vegetables.',sysdate(),sysdate(),21)
,('The Lion, The Witch, and The Wardrobe','Childrens',1950,'8.99',5,'Peter, Susan, Edmund, and Lucy Pevensie are four siblings sent to live in the country with the eccentric Professor Kirke during World War II. The children explore the house on a rainy day and Lucy, the youngest, finds an enormous wardrobe. Lucy steps inside and finds herself in a strange, snowy wood.',sysdate(),sysdate(),22)
,('Charlotte''s Web','Childrens',1952,'9.99',9,'A masterpiece of American childrens literature, Charlotte''s Web is a fable by E.B. White about a runt of a pig named Wilbur, who is loved by a little girl and befriended by a very clever spider named Charlotte.',sysdate(),sysdate(),23)
,('Where the Sidewalk Ends','Childrens',1974,'19.99',7,'Where the Sidewalk Ends is a collection of quirky and imaginative poems by Shel Silverstein. The poems are accompanied by illustrations that capture the often silly, peculiar nature of Silverstein''s witty words.',sysdate(),sysdate(),24)
,('The Very Hungry Catepillar','Childrens',1969,'5.99',5,'This story follows the life of a growing caterpillar who begins as an egg. When he emerges from the egg he is very hungry. He starts to eat everything he can find, more and more each day.',sysdate(),sysdate(),25)
,('The Neverending Story','Childrens',1979,'8.99',3,'The book centres on a boy, Bastian, a strange child who is neglected by his father after the death of Bastian''s mother. While escaping from some bullies, Bastian bursts into the antiquarian book store of Carl Conrad Coreander , where he finds his interest held by a book called The Neverending Story',sysdate(),sysdate(),26)
,('A People''s History of the United States','Top 9',1980,'21.99',5,'A People''s History of the United States is the only volume to tell America''s story from the point of view of and in the words of America''s women, factory workers, African-Americans, Native Americans, the working poor, and immigrant laborers.',sysdate(),sysdate(),27)
,('The Phantom Tollbooth','Top 9',1961,'8.99',6,'The Phantom Tollbooth is the story of Milo, a very bored boy who comes home one day to find a magical tollbooth in his room. When Milo drives his car through the tollbooth gate, he finds himself in the Lands Beyond, a country inhabited by living language in the forms of animals, magicians, royalty, mountains, seas, and cities. From Tock the Watchdog to the listless region of The Doldrums, Milo shakes off boredom as he pursues the kidnapped Princesses Rhyme and Reason and restores peace to the Lands (currently in the clutches of the warring princes, Azaz of Dictionopolis and the Mathemagician of Digitopolis, along with a pack of demons).',sysdate(),sysdate(),28)
,('Slaughterhouse-Five','Top 9',1969,'17.00',10,'Slaughterhouse-Five, an American classic, is one of the worlds great antiwar books. Centering on the infamous firebombing of Dresden, Billy Pilgrims odyssey through time reflects the mythic journey of our own fractured lives as we search for meaning in what we fear most.',sysdate(),sysdate(),29)
,('Things Fall Apart','Top 9',1958,'13.00',11,'It is a classic narrative about Africa''s cataclysmic encounter with Europe as it establishes a colonial presence on the continent. Told through the fictional experiences of Okonkwo, a wealthy and fearless Igbo warrior of Umuofia in the late 1800s, Things Fall Apart explores one man''s futile resistance to the devaluing of his Igbo traditions by British political andreligious forces and his despair as his community capitulates to the powerful new order.',sysdate(),sysdate(),30)
,('Never Let Me Go','Top 9',2005,'16.00',4,'Friends Kathy, Tommy and Ruth grow up together at a seemingly idyllic boarding school in the English countryside. When they leave the school and the horrible truth of their true purpose is revealed to them, they must simultaneously confront deep-seated feelings of love, jealousy and betrayal that threaten to tear their friendship asunder.',sysdate(),sysdate(),31)
,('Maus','Top 9',1991,'35.00',8,'Maus depicts Spiegelman interviewing his father about his experiences as a Polish Jew and Holocaust survivor. The work employs postmodernist techniques and represents Jews as mice, Germans as cats, and Poles as pigs.',sysdate(),sysdate(),32)
,('The Handmaid''s Tale','Top 9',1985,'15.95',7,'The world of the narrator, Offred (from "Of Fred" women no longer have their own names), is chilling, but she is a magnificent survivor and chronicler, and the details of everything from mundane daily life to ritualized sex and violence to her reminiscences of the time before (our contemporary reality, as seen in the ''80s) are absolutely realistic.',sysdate(),sysdate(),33)
,('The Hitchhiker''s Guide to the Galaxy','Top 9',1980,'16.00',8,'A hapless hero with astonishing luck? Ill-tempered aliens hell-bent on destroying Earth? Pithy advice (e.g., "DON''T PANIC")? Check, check, and check and so much more. Even nonsci-fi geeks will be charmed by this hilarious and endlessly entertaining read, with (of course) sequels following.',sysdate(),sysdate(),34)
,('Infinite Jest','Top 9',1996,'20.00',9,'Infinite Jest is unique; it was bred in the optimism and new frontiersmanship of the dot-com 1990s but was simultaneously an early omen of where we are today. It looks into our present beyond what were only horizons when it was written: the tensions of a global economy, the opiate of on-demand entertainment, the near-impossible pursuit of greatness in a winner-take-all society. Tennis phenoms struggle in an absurdly demanding academy and recovering addicts search for something strong enough to help them through, all while a cadre of legless Quebecois assassins search for a movie so entertaining that they plan to use it as a weapon.',sysdate(),sysdate(),35)
,('Origins of American Slavery','Social Justice',2005,'17.00',3,'A concise but thorough overview of how American slavery fits into larger historical processes of the subjugation of black people, Philip Morgans description of slavery as an international institution looks at the institutions centrality in shaping global trends throughout the eighteenth and nineteenth centuries. By placing American slavery in a global context, Morgan explains how the expanding scale of capitalism and a long-standing perception of black inferiority converged to produce an instantiation of slavery that stands out as peculiarly heinous.',sysdate(),sysdate(),36)
,('Mama''s Baby, Papa''s Maybe: An American Grammar Book','Social Justice',1987,'13.00',5,'Hortense Spillers argues that discourses around blackness and gender during slavery continue to determine the ways in which black bodies are read in the United States. By focusing on black women, Spillers contends that we get it wrong when we only view slavery through the experience of enslaved people who identified as male. The machinations of enslavement as an institution fundamentally relied on fully disarticulating black women from the categories of woman and human.',sysdate(),sysdate(),37)
,('Neither Lost nor Found: Slavery and the Visual Archive','Social Justice',2011,'17.00',7,'Stephen Best argues that black people have often been understood as object rather than subjects. Best cites a case in which a photograph of two young black boys from the nineteenth century was advertised as rare at an estate sale. It was later discovered that copies of the photograph could be found at the Schomburg Center for Research in Black Culture and on eBay. Best addresses the paradox of the archival turn in studies of slavery: How can we claim to know that which cannot be known? That is, whether evidence can be found in the archive or not?',sysdate(),sysdate(),38)
,('Black Bodies in Pain and Ecstasy: Terror, Subjectivity, and the Nature of Black Religion','Social Justice',2003,'13.00',4,'Anthony Pinn argues that black religion, a capacious term that he purposefully deploys to reference a range of religious and spiritual practices beyond Christianity, plays a key role in African Americans struggle for what he calls complex subjectivity, a mode of being defined by ambiguity and multidimensionality. If dominant society defined black people by their corporeality during slavery, Pinn argues that black religion, which is an experience mediated by and through the black body, constitutes an important site of resistance against oppression. It contains an aesthetic, both in performance and style, that must be more prominently considered by the field of black religious studies.',sysdate(),sysdate(),39)
,('The Black Body as Souvenir in American Lynching','Social Justice',2005,'16.00',3,'Lynching, a phenomenon of extra-juridical violence used as a tool of social control, continues to be a lesser acknowledged practice in American history. Harvey Young analyzes what it meant for white participants in lynching spectacles to either steal or purchase the body parts of those who had been unjustly hanged, burned, castrated, and otherwise victimized and killed in public. Young asks what it means for white people to treat black bodies as souvenirs, fetish object, and remains.',sysdate(),sysdate(),40)
,('Of Du Bois and Diaspora: The Challenge of African American Studies','Social Justice',2004,'35.00',8,'Michael Gomez focuses on double consciousness, W. E. B. Du Bois term for the experience of African Americans who must simultaneously identify with blackness and Americanness. The nation signified in the latter term oppresses people based on the former term. Gomez makes a case for black intellectuals in the field of African American studies to more thoughtfully engage a larger diasporic approach with their work. Because the study of black people in America is a diasporic project about dispersal, loss, and community building, Gomez''s call for African American studies to take the diasporic turn seriously continues to influence the field.',sysdate(),sysdate(),41)
,('Like I Was a Man: Chain Gangs, Gender, and Domestic Carceral Sphere in Jim Crow Georgia','Social Justice',2013,'15.95',9,'Sarah Haley argues that the prison industrial complex has been an important site in which racialized conceptions of gender have been consolidated. Focusing on a comprehensive and historic prison reform act passed in Georgia in 1908 that forced imprisoned black women onto chain gangs and introduced a system of parole that compelled black women released from prison to become domestic servants in white homes, Haley argues that these reforms illustrate how black women were stripped of their gender. Incarcerated black women were obligated to perform both domestic labor that was gendered as female and hard physical labor that was gendered as male, but also, as a result of this un-gendering, they were legislated out of the category of the human.',sysdate(),sysdate(),42)
,('How Black Nationalism Became Sui Generis','Social Justice',2012,'16.00',2,'Daryl Michael Scott''s exploration of the vicissitudes of black nationalism that developed over the course of the early and mid-twentieth century negotiates a tension between black nationalism and other forms of nationalism. While nationalism on its own may be problematic, black nationalism has described everything from black separatism and sovereignty to an imperium in imperio in which black people could self-determine without founding a new nation to a generic notion of racial solidarity among black people in a Pan-African context. The idea continues to have critical purchase in academia.',sysdate(),sysdate(),43)
,('Whiteness as Property','Social Justice',1993,'20.00',3,'Cheryl Harris explores the extent to which whiteness became a form of property that had to be protected by juridical and legislative means. As she argues, whiteness became valuable when white people could not be reduced to property under slavery. Given this, it is not only the cultural legacy of enslavement that has kept black people oppressed in the United States, but also a legal system that has continued to treat whiteness as the norm. That system actively excludes people of color from the purview of equal rights and protections while also affording economic benefits exclusively or disproportionately to white Americans.',sysdate(),sysdate(),44)
,('Dune','Fantasy',1965,'49.95',8,'Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the spice melange, a drug capable of extending life and enhancing consciousness. Coveted across the known universe, melange is a prize worth killing for....',sysdate(),sysdate(),45)
,('The Witcher','Fantasy',1994,'39.99',8,'The Witcher is a fantasy series of novels and short stories written by Polish author Andrzej Sapkowski. The series revolves around the titular "witcher", Geralt of Rivia. In Sapkowski''s works, "witchers" are beast hunters who develop supernatural abilities at a young age to battle wild beasts and monsters.',sysdate(),sysdate(),46)
,('Lord of The Rings','Fantasy',1937,'35.96',8,'At 33, the age of adulthood among hobbits, Frodo Baggins receives a magic Ring of Invisibility from his uncle Bilbo. Frodo, a Christlike figure, learns that the ring has the power to control the entire world and, he discovers, to corrupt its owner. A fellowship of hobbits, elves, dwarfs, and men is formed to destroy the ring by casting it into the volcanic fires of the Crack of Doom, where it was forged. They are opposed on their harrowing mission by the evil Sauron and his Black Riders. The Lord of the Rings, together with The Hobbit, is considered by many to be the start of the genre known as high fantasy, and these works have had an enormous influence on that genre as a whole.',sysdate(),sysdate(),47)
,('Harry Potter','Fantasy',1998,'55.99',8,'Harry Potter, a boy who learns on his eleventh birthday that he is the orphaned son of two powerful wizards and possesses unique magical powers of his own. He is summoned from his life as an unwanted child to become a student at Hogwarts, an English boarding school for wizards. There, he meets several friends who become his closest allies and help him discover the truth about his parents'' mysterious deaths.',sysdate(),sysdate(),48)
,('Twilight','Fantasy',2005,'45.00',8,'The Twilight saga is a story about love. And vampires. And family. And abstinence. And racism. And the founding of the Mormon faith. And orphans, in a really weird way.',sysdate(),sysdate(),49)
,('A Song of Ice and Fire','Fantasy',1991,'50.00',8,'A Song of Ice and Fire is a series of epic fantasy novels by the American novelist and screenwriter George R. R. Martin. He began the first volume of the series, A Game of Thrones, in 1991, and it was published in 1996.',sysdate(),sysdate(),50)
,('Outlander','Fantasy',1991,'70.00',8,'Outlander is a series of historical romance science fiction novels by American author Diana Gabaldon. Gabaldon began the first volume of the series, Outlander, in the late 1980s, and it was published in 1991. She has published eight out of a planned ten volumes.',sysdate(),sysdate(),51)
,('Wheel of Time','Fantasy',1984,'32.00',8,'Written by Robert Jordan and completed posthumously by Brandon Sanderson, The Wheel of Time is one of the greatest epics of fantasy and a #1 internationally bestselling series. Taking place both in our past and our future, the saga tells the story of a man destined to face the Evil One and save the world or destroy it in the process.',sysdate(),sysdate(),52)
,('Three-Body Problem Trilogy','Fantasy',2008,'50.00',8,'From Hugo Award-winning author Cixin Lu, the most prolific and popular science fiction writer in the People''s Republic of China, the Remembrance of Earth''s Past series is an action-packed, thought-provoking saga of how humanity''s first contact with extraterrestrial life divided Earth between those welcoming the superior beings and those fighting the alien invasion.',sysdate(),sysdate(),53)