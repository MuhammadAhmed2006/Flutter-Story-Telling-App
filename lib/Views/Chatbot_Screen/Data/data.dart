class BotResponses {
  static String getBotResponse(String userMessage) {
    userMessage = userMessage.toLowerCase();
    // General book question
    if (userMessage.contains('what is a book')) {
      return 'A book is a set of written, printed, illustrated, or blank sheets, made of paper, parchment, or other materials, usually fastened together to hinge at one side.';
    } else if (userMessage.contains('purpose of a book')) {
      return 'The purpose of a book can vary; it can inform, entertain, educate, or inspire readers.';
    } else if (userMessage.contains('types of books')) {
      return 'There are many types of books, including fiction, non-fiction, fantasy, science fiction, romance, thriller, mystery, biography, and more.';
    } else if (userMessage.contains('fiction book')) {
      return 'A fiction book is a type of book that contains a story created from the imagination, not presented as fact.';
    } else if (userMessage.contains('non-fiction book')) {
      return 'A non-fiction book is based on facts and real events. It includes genres like biography, memoir, self-help, and history.';
    } else if (userMessage.contains('favorite book')) {
      return 'There are many great books to choose from! Some popular favorites include "To Kill a Mockingbird," "1984," "Harry Potter," and "The Great Gatsby."';
    } else if (userMessage.contains('best genre')) {
      return 'The best genre depends on your interests. Some popular genres include mystery, fantasy, romance, and science fiction.';
    } else if (userMessage.contains('top 10 books of all time')) {
      return 'Some widely regarded top books of all time include "Pride and Prejudice," "War and Peace," "Moby Dick," "The Odyssey," and "Don Quixote."';
    } else if (userMessage.contains('book recommendation')) {
      return 'Sure! What genre are you interested in?';
    } else if (userMessage.contains('new book releases')) {
      return 'There are many new book releases every month. Some current popular new releases include "The Midnight Library" by Matt Haig and "The Invisible Life of Addie LaRue" by V.E. Schwab.';
    } else if (userMessage.contains('best selling book')) {
      return 'The best-selling book of all time is "Don Quixote" by Miguel de Cervantes, followed by "A Tale of Two Cities" by Charles Dickens.';
    } else if (userMessage.contains('reading benefits')) {
      return 'Reading has many benefits including improving brain function, reducing stress, increasing knowledge, and expanding vocabulary.';
    } else if (userMessage.contains('how to start reading')) {
      return 'Start by choosing a book that interests you. Set aside a specific time each day for reading, and find a comfortable, quiet place to read.';
    } else if (userMessage.contains('classic book')) {
      return 'Classic books are works that have stood the test of time, such as "Jane Eyre" by Charlotte Brontë, "The Great Gatsby" by F. Scott Fitzgerald, and "Pride and Prejudice" by Jane Austen.';
    } else if (userMessage.contains('best fantasy book')) {
      return 'Some of the best fantasy books include "The Lord of the Rings" by J.R.R. Tolkien, "Harry Potter" by J.K. Rowling, and "A Song of Ice and Fire" by George R.R. Martin.';
    } else if (userMessage.contains('historical fiction')) {
      return 'Historical fiction is a genre where the story takes place in a setting located in the past. Examples include "The Book Thief" by Markus Zusak and "All the Light We Cannot See" by Anthony Doerr.';
    } else if (userMessage.contains('science fiction')) {
      return 'Science fiction is a genre dealing with imaginative concepts such as advanced science and technology, space exploration, time travel, and extraterrestrial life. Examples include "Dune" by Frank Herbert and "The Martian" by Andy Weir.';
    } else if (userMessage.contains('romance novel')) {
      return 'A romance novel places its primary focus on the relationship and romantic love between two people. Examples include "Pride and Prejudice" by Jane Austen and "Me Before You" by Jojo Moyes.';
    } else if (userMessage.contains('mystery book')) {
      return 'Mystery books focus on solving a crime or unraveling secrets. Examples include "Gone Girl" by Gillian Flynn and "The Girl with the Dragon Tattoo" by Stieg Larsson.';
    } else if (userMessage.contains('thriller book')) {
      return 'Thriller books are characterized by excitement and suspense. Examples include "The Da Vinci Code" by Dan Brown and "The Silence of the Lambs" by Thomas Harris.';
    } else if (userMessage.contains('biography')) {
      return 'A biography is a detailed description of a person\'s life. Examples include "Steve Jobs" by Walter Isaacson and "The Diary of a Young Girl" by Anne Frank.';
    } else if (userMessage.contains('autobiography')) {
      return 'An autobiography is a self-written account of the author\'s life. Examples include "The Story of My Life" by Helen Keller and "I Know Why the Caged Bird Sings" by Maya Angelou.';
    } else if (userMessage.contains('memoir')) {
      return 'A memoir is a collection of memories that an individual writes about moments or events, both public and private, that took place in the author\'s life. Examples include "Educated" by Tara Westover and "Becoming" by Michelle Obama.';
    } else if (userMessage.contains('self-help book')) {
      return 'Self-help books are written with the intention to instruct readers on solving personal problems. Examples include "The Power of Habit" by Charles Duhigg and "How to Win Friends and Influence People" by Dale Carnegie.';
    } else if (userMessage.contains('top 10 books of the year')) {
      return 'Some top books of this year include "The Vanishing Half" by Brit Bennett, "The Invisible Life of Addie LaRue" by V.E. Schwab, and "Anxious People" by Fredrik Backman.';
    } else if (userMessage.contains('book club')) {
      return 'A book club is a group of people who meet regularly to discuss books they have read and express their opinions, likes, dislikes, etc.';
    } else if (userMessage.contains('how to start a book club')) {
      return 'To start a book club, invite friends who are interested in reading, decide on a meeting place and time, choose a book, and prepare discussion questions.';
    } else if (userMessage.contains('book review')) {
      return 'A book review is a form of literary criticism in which a book is analyzed based on content, style, and merit. It can be a short summary or a detailed critique.';
    } else if (userMessage.contains('best book for kids')) {
      return 'Some of the best books for kids include "Harry Potter" by J.K. Rowling, "The Chronicles of Narnia" by C.S. Lewis, and "Charlotte\'s Web" by E.B. White.';
    } else if (userMessage.contains('children\'s book')) {
      return 'Children\'s books are designed to appeal to children, often with colorful illustrations and simple language. Examples include "Where the Wild Things Are" by Maurice Sendak and "Goodnight Moon" by Margaret Wise Brown.';
    } else if (userMessage.contains('young adult fiction')) {
      return 'Young adult fiction is aimed at readers aged 12-18 and includes themes relevant to teenagers. Examples include "The Hunger Games" by Suzanne Collins and "The Fault in Our Stars" by John Green.';
    } else if (userMessage.contains('graphic novel')) {
      return 'A graphic novel is a book made up of comics content. Examples include "Maus" by Art Spiegelman and "Persepolis" by Marjane Satrapi.';
    } else if (userMessage.contains('ebook')) {
      return 'An ebook is a book publication made available in digital form, readable on electronic devices. Examples include "The Handmaid\'s Tale" by Margaret Atwood and "1984" by George Orwell.';
    } else if (userMessage.contains('audio book')) {
      return 'An audiobook is a recording of a book being read aloud. It can be helpful for people who prefer listening over reading.';
    } else if (userMessage.contains('banned book')) {
      return 'A banned book is one that has been censored or removed from libraries or schools. Examples include "To Kill a Mockingbird" by Harper Lee and "1984" by George Orwell.';
    } else if (userMessage.contains('book award')) {
      return 'There are many prestigious book awards, such as the Pulitzer Prize, the Man Booker Prize, and the National Book Award.';
    } else if (userMessage.contains('best selling author')) {
      return 'Some best-selling authors include J.K. Rowling, Stephen King, James Patterson, and Agatha Christie.';
    } else if (userMessage.contains('classic author')) {
      return 'Some classic authors include Jane Austen, Charles Dickens, William Shakespeare, and Mark Twain.';
    } else if (userMessage.contains('literary genre')) {
      return 'Literary genres are categories of literary composition. Examples include drama, poetry, and prose.';
    } else if (userMessage.contains('drama book')) {
      return 'Drama books involve intense, emotional plots often focusing on realistic characters and conflicts. Examples include "Hamlet" by William Shakespeare and "Death of a Salesman" by Arthur Miller.';
    }
    // stories
    if (userMessage.contains('Romance')) {
      return 'Amidst the vineyards of Tuscany\, artist Elara met the enigmatic winemaker\, Lucian. Drawn together by their shared love for art and wine\, Elara and Lucian embarked on a passionate romance that blossomed under the Tuscan sun. As they navigated cultural differences and personal ambitions\, their bond deepened\, defying the odds of fate and distance\. Their love story became a testament to the power of love and resilience\.';
    } else if (userMessage.contains('Thriller') ||
        userMessage.contains('Suspense')) {
      return 'In the bustling streets of New Gotham, Detective Isolde Reed pursued a cunning serial killer who left behind cryptic clues at each crime scene. With the help of her seasoned partner, Alden, Isolde unraveled a web of deception and betrayal that led them to the killer\'s lair. In a pulse-pounding showdown on the city\'s rooftops, Isolde confronted the killer and uncovered a shocking truth that threatened to unravel the city\'s darkest secrets.';
    } else if (userMessage.contains('Historical') ||
        userMessage.contains('Historical Fiction')) {
      return 'In the court of Queen Elara during the Tudor era, Lady Isolde, a talented playwright, defied societal norms to write provocative plays that challenged the patriarchy. With the support of her loyal confidant, Sir Rurik, and the admiration of a mysterious nobleman named Alden, Isolde navigated court intrigues and censorship. As her plays sparked controversy and ignited a movement for women\'s rights, Isolde risked everything to ensure her voice was heard in a time when silence was golden.';
    } else if (userMessage.contains('Contemporary') ||
        userMessage.contains('Contemporary Fiction')) {
      return 'In the vibrant city of New York, journalist Alden Jones uncovered a corporate conspiracy that threatened to destroy thousands of lives. With the support of his editor, Elara, and the dedication of his team, Alden delved deep into the heart of corruption. As he unearthed damning evidence and faced personal risks, Alden\'s determination to expose the truth became a catalyst for change in an unforgiving world.';
    }
    // General greetings and interactions
    if (userMessage.contains('hi') || userMessage.contains('hello')) {
      return 'Hi there! How can I assist you today?';
    } else if (userMessage.contains('how are you')) {
      return 'I am a bot, but I\'m here to help you! How can I assist you today?';
    } else if (userMessage.contains('help')) {
      return 'Sure! What do you need help with?';
    } else if (userMessage.contains('tell me')) {
      return 'Tell me what\'s on your mind!';
    } else if (userMessage.contains('good morning')) {
      return 'Good morning! Ready to start the day?';
    } else if (userMessage.contains('good afternoon')) {
      return 'Good afternoon! How\'s your day going so far?';
    } else if (userMessage.contains('good evening')) {
      return 'Good evening! How can I make your evening better?';
    } else if (userMessage.contains('how\'s it going')) {
      return 'It\'s going well here! What about you?';
    } else if (userMessage.contains('how can you help')) {
      return 'I can help with a variety of topics. Just let me know what you\'re interested in!';
    } else if (userMessage.contains('thank you')) {
      return 'You\'re welcome! Feel free to ask me anything else.';
    } else if (userMessage.contains('bye')) {
      return 'Goodbye! Have a great day!';
    } else if (userMessage.contains('see you')) {
      return 'See you later! Take care!';
    } else if (userMessage.contains('what\'s up')) {
      return 'Not much. How about you?';
    } else if (userMessage.contains('how\'s life')) {
      return 'Life is good! How about yours?';
    } else if (userMessage.contains('nice to meet you')) {
      return 'Nice to meet you too!';
    } else if (userMessage.contains('tell me more')) {
      return 'Sure! What specifically would you like to know?';
    } else if (userMessage.contains('are you a bot')) {
      return 'Yes, I am a bot designed to assist you!';
    } else if (userMessage.contains('how long have you been here')) {
      return 'I\'ve been here for a while now, ready to help!';
    } else if (userMessage.contains('where are you from')) {
      return 'I\'m from the cloud, here to help users like you!';
    } else if (userMessage.contains('what can you do')) {
      return 'I can provide information, answer questions, and chat with you!';
    } else if (userMessage.contains('who created you')) {
      return 'I was created by a team of developers passionate about AI!';
    } else if (userMessage.contains('tell me a joke')) {
      return 'Why did the scarecrow win an award? Because he was outstanding in his field!';
    } else if (userMessage.contains('sing a song')) {
      return 'I\'m better at chatting than singing, but I can try!';
    } else if (userMessage.contains('do you sleep')) {
      return 'Nope, I\'m here 24/7 to help you!';
    } else if (userMessage.contains('are you a human')) {
      return 'I\'m a bot designed to assist you, not a human!';
    } else if (userMessage.contains('where do you live')) {
      return 'I live in the digital world, always ready to assist!';
    } else if (userMessage.contains('genres')) {
      return 'There are many genres such as mystery, romance, science fiction, fantasy, thriller, horror, and more. What genre are you interested in?';
    } else if (userMessage.contains('best genres')) {
      return 'The best genres often depend on personal preference, but popular choices include fantasy, mystery, and science fiction. What type of book are you looking for?';
    } else if (userMessage.contains('best books')) {
      return 'Some of the best books include classics like "To Kill a Mockingbird," "1984," and "Pride and Prejudice." What kind of book are you interested in?';
    } else if (userMessage.contains('top 10 best genres')) {
      return 'The top 10 best genres can vary widely, but often include fantasy, thriller, mystery, romance, science fiction, and more. What genre do you enjoy most?';
    } else if (userMessage.contains('top 10 best books')) {
      return 'The top 10 best books can vary depending on who you ask, but classics like "The Great Gatsby," "War and Peace," and "The Catcher in the Rye" are often mentioned. What type of book do you like to read?';
    } else if (userMessage.contains('years provided')) {
      return 'Books have been around for centuries, with each era providing its own literary treasures. Are you interested in books from a specific time period?';
    } else if (userMessage.contains('authors')) {
      return 'Who are your favorite authors? Some popular ones include J.K. Rowling, Stephen King, Jane Austen, and George Orwell.';
    } else if (userMessage.contains('literary periods')) {
      return 'Literary periods like Romanticism, Modernism, and Postmodernism have shaped literature. Which period are you interested in?';
    } else if (userMessage.contains('specific genres')) {
      return 'What specific genres are you curious about? There are so many, from historical fiction to dystopian novels.';
    } else if (userMessage.contains('recommendations')) {
      return 'Sure! What kind of book are you looking for? I can recommend something based on your interests.';
    } else if (userMessage.contains('book series')) {
      return 'Book series like Harry Potter, Lord of the Rings, and Game of Thrones have captured readers\' imaginations. Do you enjoy series or standalone books?';
    } else if (userMessage.contains('classics')) {
      return 'Classics like "Moby Dick," "Jane Eyre," and "The Odyssey" are timeless. Have you read any classics?';
    } else if (userMessage.contains('non-fiction')) {
      return 'Non-fiction books cover topics ranging from history and science to self-help and memoirs. What non-fiction subjects interest you?';
    } else if (userMessage.contains('reading habits')) {
      return 'Everyone reads differently! Do you prefer reading at night or during the day?';
    } else if (userMessage.contains('bookstores')) {
      return 'Bookstores are wonderful places to discover new reads. Do you have a favorite bookstore?';
    } else if (userMessage.contains('library')) {
      return 'Libraries offer a wide selection of books for free. Do you visit your local library often?';
    } else if (userMessage.contains('ebooks')) {
      return 'Ebooks are convenient for reading on the go. Do you prefer physical books or ebooks?';
    } else if (userMessage.contains('audiobooks')) {
      return 'Audiobooks are great for multitasking. Have you tried listening to books?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Book adaptations into movies or TV shows can be hit or miss. Which book adaptation did you enjoy the most?';
    } else if (userMessage.contains('book awards')) {
      return 'Book awards like the Pulitzer Prize and Nobel Prize for Literature recognize outstanding works. Have you read any award-winning books?';
    } else if (userMessage.contains('book clubs')) {
      return 'Book clubs are a fun way to discuss books with others. Are you part of a book club?';
    } else if (userMessage.contains('biographies')) {
      return 'Biographies offer insights into the lives of fascinating individuals. Whose biography would you like to read?';
    } else if (userMessage.contains('poetry')) {
      return 'Poetry can be moving and lyrical. Do you enjoy reading poetry?';
    } else if (userMessage.contains('favorite book')) {
      return 'What is your all-time favorite book? I\'m curious!';
    } else if (userMessage.contains('book recommendations for kids')) {
      return 'There are many great books for kids! What age group are you looking for?';
    } else if (userMessage.contains('book recommendations for teens')) {
      return 'Teens often enjoy young adult novels with adventure, romance, and fantasy elements. What type of book does the teen like?';
    } else if (userMessage.contains('book recommendations for adults')) {
      return 'Adults have diverse tastes in books. What genres do you enjoy?';
    } else if (userMessage.contains('bookstores in my area')) {
      return 'Local bookstores can be great places to find unique reads. Have you visited any nearby bookstores?';
    } else if (userMessage.contains('reading challenges')) {
      return 'Reading challenges can motivate readers to explore new genres. Have you ever participated in a reading challenge?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is your favorite book quote? I\'d love to hear it!';
    } else if (userMessage.contains('book characters')) {
      return 'Memorable characters like Sherlock Holmes, Elizabeth Bennet, and Harry Potter have left a lasting impression. Who is your favorite book character?';
    } else if (userMessage.contains('book settings')) {
      return 'Settings like Hogwarts, Narnia, and Middle-earth transport readers to fantastical worlds. Which book setting is your favorite?';
    } else if (userMessage.contains('book endings')) {
      return 'Book endings can be surprising, satisfying, or even controversial. What\'s a book ending that left an impact on you?';
    } else if (userMessage.contains('book reviews')) {
      return 'Do you read book reviews before deciding to read a book?';
    } else if (userMessage.contains('favorite genre')) {
      return 'What is your favorite genre of books?';
    } else if (userMessage.contains('book plots')) {
      return 'Plots drive the narrative of a story. What\'s a book with a plot twist that you didn\'t see coming?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Book adaptations into movies or TV shows can be hit or miss. Which book adaptation did you enjoy the most?';
    } else if (userMessage.contains('book recommendations for beginners')) {
      return 'New readers often enjoy accessible books with engaging stories. What type of book are you interested in?';
    } else if (userMessage.contains('book awards')) {
      return 'Book awards like the Pulitzer Prize and Nobel Prize for Literature recognize outstanding works. Have you read any award-winning books?';
    } else if (userMessage.contains('favorite book series')) {
      return 'Do you have a favorite book series?';
    } else if (userMessage.contains('book cover designs')) {
      return 'Book cover designs can be captivating. What\'s a book with a cover that caught your eye?';
    } else if (userMessage.contains('book cliffhangers')) {
      return 'Cliffhangers keep readers eagerly anticipating the next book in a series. What\'s a book with a memorable cliffhanger ending?';
    } else if (userMessage.contains('book genres by popularity')) {
      return 'Popularity of book genres can vary over time. What\'s a genre that\'s currently trending?';
    } else if (userMessage.contains('book themes')) {
      return 'Themes like love, friendship, and betrayal are common in literature. What\'s a book with a theme that resonated with you?';
    } else if (userMessage
        .contains('book recommendations for summer reading')) {
      return 'Summer reading often includes light-hearted and adventurous books. What\'s a book you\'ve enjoyed reading during the summer?';
    } else if (userMessage.contains('book titles')) {
      return 'Book titles can be intriguing or mysterious. What\'s a book with a title that drew you in?';
    } else if (userMessage.contains('book villains')) {
      return 'Villains add tension to a story. Who is a memorable book villain that you love to hate?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Book adaptations into movies or TV shows can be hit or miss. Which book adaptation did you enjoy the most?';
    } else if (userMessage
        .contains('book recommendations for historical fiction')) {
      return 'Historical fiction brings the past to life. What period of history are you interested in?';
    } else if (userMessage.contains('book ratings')) {
      return 'Do you pay attention to book ratings when choosing what to read?';
    } else if (userMessage
        .contains('book recommendations for fantasy lovers')) {
      return 'Fantasy lovers often enjoy epic adventures with magical elements. What\'s a fantasy book that captured your imagination?';
    } else if (userMessage.contains('book characters')) {
      return 'Memorable characters like Sherlock Holmes, Elizabeth Bennet, and Harry Potter have left a lasting impression. Who is your favorite book character?';
    } else if (userMessage
        .contains('book recommendations for mystery readers')) {
      return 'Mystery readers enjoy solving puzzles and uncovering secrets. What\'s a mystery book with a plot twist you didn\'t see coming?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is your favorite book quote? I\'d love to hear it!';
    } else if (userMessage
        .contains('book recommendations for science fiction fans')) {
      return 'Science fiction fans enjoy futuristic worlds and advanced technology. What\'s a sci-fi book that blew your mind?';
    } else if (userMessage.contains('book endings')) {
      return 'Book endings can be surprising, satisfying, or even controversial. What\'s a book ending that left an impact on you?';
    } else if (userMessage
        .contains('book recommendations for romance readers')) {
      return 'Romance readers enjoy love stories with emotional depth. What\'s a romance book that tugged at your heartstrings?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Book adaptations into movies or TV shows can be hit or miss. Which book adaptation did you enjoy the most?';
    } else if (userMessage
        .contains('book recommendations for thriller enthusiasts')) {
      return 'Thriller enthusiasts enjoy suspenseful plots and unexpected twists. What\'s a thriller that kept you on the edge of your seat?';
    } else if (userMessage.contains('book series vs standalone books')) {
      return 'Do you prefer reading book series or standalone books?';
    } else if (userMessage
        .contains('book recommendations for classic literature')) {
      return 'Classic literature includes timeless works by authors like Shakespeare, Dickens, and Austen. What\'s a classic book that you\'ve enjoyed reading?';
    } else if (userMessage.contains('book genres')) {
      return 'Genres like fantasy, mystery, romance, and science fiction offer a variety of reading experiences. What genre are you in the mood for?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Book adaptations into movies or TV shows can be hit or miss. Which book adaptation did you enjoy the most?';
    } else if (userMessage.contains('book recommendations for young adults')) {
      return 'Young adult books often tackle coming-of-age themes with adventure and romance. What\'s a YA book that you loved reading?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is your favorite book quote? I\'d love to hear it!';
    } else if (userMessage
        .contains('book recommendations for fantasy lovers')) {
      return 'Fantasy lovers often enjoy epic adventures with magical elements. What\'s a fantasy book that captured your imagination?';
    } else if (userMessage.contains('book characters')) {
      return 'Memorable characters like Sherlock Holmes, Elizabeth Bennet, and Harry Potter have left a lasting impression. Who is your favorite book character?';
    } else if (userMessage
        .contains('book recommendations for mystery readers')) {
      return 'Mystery readers enjoy solving puzzles and uncovering secrets. What\'s a mystery book with a plot twist you didn\'t see coming?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is your favorite book quote? I\'d love to hear it!';
    } else if (userMessage
        .contains('book recommendations for science fiction fans')) {
      return 'Science fiction fans enjoy futuristic worlds and advanced technology. What\'s a sci-fi book that blew your mind?';
    } else if (userMessage.contains('book endings')) {
      return 'Book endings can be surprising, satisfying, or even controversial. What\'s a book ending that left an impact on you?';
    } else if (userMessage
        .contains('book recommendations for romance readers')) {
      return 'Romance readers enjoy love stories with emotional depth. What\'s a romance book that tugged at your heartstrings?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Book adaptations into movies or TV shows can be hit or miss. Which book adaptation did you enjoy the most?';
    } else if (userMessage
        .contains('book recommendations for thriller enthusiasts')) {
      return 'Thriller enthusiasts enjoy suspenseful plots and unexpected twists. What\'s a thriller that kept you on the edge of your seat?';
    } else if (userMessage.contains('book series vs standalone books')) {
      return 'Do you prefer reading book series or standalone books?';
    } else if (userMessage
        .contains('book recommendations for classic literature')) {
      return 'Classic literature includes timeless works by authors like Shakespeare, Dickens, and Austen. What\'s a classic book that you\'ve enjoyed reading?';
    } else if (userMessage.contains('book genres')) {
      return 'Genres like fantasy, mystery, romance, and science fiction offer a variety of reading experiences. What genre are you in the mood for?';
    } else if (userMessage.contains('favorite author')) {
      return 'Who is your favorite author and why?';
    } else if (userMessage.contains('literary devices')) {
      return 'Literary devices like metaphor, simile, and irony enhance storytelling. Do you have a favorite literary device?';
    } else if (userMessage.contains('must-read books')) {
      return 'What books do you think everyone should read at least once in their lifetime?';
    } else if (userMessage.contains('bookstores')) {
      return 'What is your favorite bookshop and why?';
    } else if (userMessage.contains('reading goals')) {
      return 'Do you set reading goals for yourself, like reading a certain number of books per month or year?';
    } else if (userMessage.contains('book characters')) {
      return 'Do you have a favorite fictional character? What makes them your favorite?';
    } else if (userMessage.contains('reading environment')) {
      return 'Where do you prefer to read? In bed, on the couch, outdoors, or somewhere else?';
    } else if (userMessage.contains('book genres')) {
      return 'What is your least favorite book genre and why?';
    } else if (userMessage.contains('book genres')) {
      return 'What are some underrated book genres that you think more people should explore?';
    } else if (userMessage.contains('book recommendations')) {
      return 'What book have you recommended to others the most?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Do you generally prefer the book or its movie/TV adaptation? Why?';
    } else if (userMessage.contains('book setting')) {
      return 'What is your favorite fictional world or setting from a book?';
    } else if (userMessage.contains('book preferences')) {
      return 'Do you prefer reading physical books, ebooks, or listening to audiobooks? Why?';
    } else if (userMessage.contains('book cover design')) {
      return 'What book has the most aesthetically pleasing cover design you\'ve seen?';
    } else if (userMessage.contains('book series')) {
      return 'Do you tend to prefer standalone books or book series? Why?';
    } else if (userMessage.contains('bookworm habits')) {
      return 'Are you the type of reader who prefers to finish a book in one sitting or savors it over time?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that has stuck with you over the years?';
    } else if (userMessage.contains('book endings')) {
      return 'Do you generally like ambiguous endings in books, or do you prefer everything tied up neatly?';
    } else if (userMessage.contains('book discoveries')) {
      return 'How do you usually discover new books to read?';
    } else if (userMessage.contains('book recommendations for children')) {
      return 'What are some of your favorite children\'s books?';
    } else if (userMessage.contains('book recommendations for adults')) {
      return 'What are some must-read books for adults in your opinion?';
    } else if (userMessage.contains('book genres')) {
      return 'Are there any book genres you wish you could enjoy more but find challenging?';
    } else if (userMessage.contains('book recommendations for beginners')) {
      return 'What book would you recommend to someone who is just starting to get into reading?';
    } else if (userMessage.contains('book adaptations')) {
      return 'What book-to-movie adaptation do you think was better than the book itself?';
    } else if (userMessage.contains('book recommendations for horror fans')) {
      return 'What is the scariest book you\'ve ever read?';
    } else if (userMessage.contains('book characters')) {
      return 'If you could meet any fictional character from a book, who would it be and why?';
    } else if (userMessage.contains('book recommendations for history buffs')) {
      return 'What are some fascinating historical books that you would recommend?';
    } else if (userMessage.contains('book genres')) {
      return 'Are there any book genres that you think are overrated or too cliché?';
    } else if (userMessage
        .contains('book recommendations for science lovers')) {
      return 'What are some insightful science books that you\'ve enjoyed reading?';
    } else if (userMessage.contains('book quotes')) {
      return 'Do you have a favorite literary quote that inspires you?';
    } else if (userMessage
        .contains('book recommendations for philosophy enthusiasts')) {
      return 'What are some thought-provoking philosophy books that you would recommend?';
    } else if (userMessage
        .contains('book recommendations for business-minded individuals')) {
      return 'What are some informative business books that have influenced your thinking?';
    } else if (userMessage.contains('book adaptations')) {
      return 'What book do you think deserves a movie adaptation that hasn\'t been made into one yet?';
    } else if (userMessage.contains('book recommendations for poetry lovers')) {
      return 'What are some of your favorite poetry collections or poets?';
    } else if (userMessage.contains('book genres')) {
      return 'Do you tend to read more fiction or non-fiction books? Why?';
    } else if (userMessage
        .contains('book recommendations for travel enthusiasts')) {
      return 'What are some travel books that have inspired you to explore new places?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that you find particularly meaningful or resonant?';
    } else if (userMessage
        .contains('book recommendations for psychology enthusiasts')) {
      return 'What are some insightful psychology books that you would recommend?';
    } else if (userMessage.contains('book recommendations for art lovers')) {
      return 'What are some art books that you\'ve found inspiring or informative?';
    } else if (userMessage.contains('book adaptations')) {
      return 'What classic book would you like to see re-imagined for modern audiences in a new adaptation?';
    } else if (userMessage
        .contains('book recommendations for food enthusiasts')) {
      return 'What are some mouth-watering food books or cookbooks that you\'ve enjoyed?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you recently discovered and loved?';
    } else if (userMessage
        .contains('book recommendations for technology buffs')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('book quotes')) {
      return 'Share a book quote that you think encapsulates the essence of a good book.';
    } else if (userMessage
        .contains('book recommendations for self-improvement')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('book recommendations for nature lovers')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage.contains('book genres')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage
        .contains('book recommendations for sports enthusiasts')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage
        .contains('book recommendations for philosophy enthusiasts')) {
      return 'What are some thought-provoking philosophy books that you would recommend?';
    } else if (userMessage
        .contains('book recommendations for business-minded individuals')) {
      return 'What are some informative business books that have influenced your thinking?';
    } else if (userMessage.contains('book adaptations')) {
      return 'What book do you think deserves a movie adaptation that hasn\'t been made into one yet?';
    } else if (userMessage.contains('book recommendations for poetry lovers')) {
      return 'What are some of your favorite poetry collections or poets?';
    } else if (userMessage.contains('book genres')) {
      return 'Do you tend to read more fiction or non-fiction books? Why?';
    } else if (userMessage
        .contains('book recommendations for travel enthusiasts')) {
      return 'What are some travel books that have inspired you to explore new places?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that you find particularly meaningful or resonant?';
    } else if (userMessage
        .contains('book recommendations for psychology enthusiasts')) {
      return 'What are some insightful psychology books that you would recommend?';
    } else if (userMessage.contains('book recommendations for art lovers')) {
      return 'What are some art books that you\'ve found inspiring or informative?';
    } else if (userMessage.contains('book adaptations')) {
      return 'What classic book would you like to see re-imagined for modern audiences in a new adaptation?';
    } else if (userMessage
        .contains('book recommendations for food enthusiasts')) {
      return 'What are some mouth-watering food books or cookbooks that you\'ve enjoyed?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you recently discovered and loved?';
    } else if (userMessage
        .contains('book recommendations for technology buffs')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('book quotes')) {
      return 'Share a book quote that you think encapsulates the essence of a good book.';
    } else if (userMessage
        .contains('book recommendations for self-improvement')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('book recommendations for nature lovers')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage.contains('book genres')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage
        .contains('book recommendations for sports enthusiasts')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage
        .contains('book recommendations for fashion enthusiasts')) {
      return 'What are some stylish and fashion-focused books that you\'ve found interesting?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you been wanting to explore more deeply?';
    } else if (userMessage.contains('book recommendations for music lovers')) {
      return 'What are some music-related books that have resonated with you?';
    } else if (userMessage.contains('book quotes')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage
        .contains('book recommendations for gardening enthusiasts')) {
      return 'What are some gardening books that have helped you improve your gardening skills or knowledge?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you been meaning to read more of lately?';
    } else if (userMessage.contains('book recommendations for pet lovers')) {
      return 'What are some heartwarming books about pets that you\'ve enjoyed reading?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that inspires you to keep pushing forward, no matter what?';
    } else if (userMessage.contains('book recommendations for social issues')) {
      return 'What are some books that have opened your eyes to important social issues?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you found surprisingly deep or thought-provoking?';
    } else if (userMessage
        .contains('book recommendations for technology buffs')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('book quotes')) {
      return 'Share a book quote that you think encapsulates the essence of a good book.';
    } else if (userMessage
        .contains('book recommendations for self-improvement')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('book recommendations for nature lovers')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage.contains('book genres')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage
        .contains('book recommendations for sports enthusiasts')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage
        .contains('book recommendations for fashion enthusiasts')) {
      return 'What are some stylish and fashion-focused books that you\'ve found interesting?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you been wanting to explore more deeply?';
    } else if (userMessage.contains('book recommendations for music lovers')) {
      return 'What are some music-related books that have resonated with you?';
    } else if (userMessage.contains('book quotes')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage
        .contains('book recommendations for gardening enthusiasts')) {
      return 'What are some gardening books that have helped you improve your gardening skills or knowledge?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you been meaning to read more of lately?';
    } else if (userMessage.contains('book recommendations for pet lovers')) {
      return 'What are some heartwarming books about pets that you\'ve enjoyed reading?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that inspires you to keep pushing forward, no matter what?';
    } else if (userMessage.contains('book recommendations for social issues')) {
      return 'What are some books that have opened your eyes to important social issues?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you found surprisingly deep or thought-provoking?';
    } else if (userMessage
        .contains('book recommendations for technology buffs')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('book quotes')) {
      return 'Share a book quote that you think encapsulates the essence of a good book.';
    } else if (userMessage
        .contains('book recommendations for self-improvement')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('book recommendations for nature lovers')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage.contains('book genres')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage
        .contains('book recommendations for sports enthusiasts')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage
        .contains('book recommendations for fashion enthusiasts')) {
      return 'What are some stylish and fashion-focused books that you\'ve found interesting?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you been wanting to explore more deeply?';
    } else if (userMessage.contains('book recommendations for music lovers')) {
      return 'What are some music-related books that have resonated with you?';
    } else if (userMessage.contains('book quotes')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage
        .contains('book recommendations for gardening enthusiasts')) {
      return 'What are some gardening books that have helped you improve your gardening skills or knowledge?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you been meaning to read more of lately?';
    } else if (userMessage.contains('book recommendations for pet lovers')) {
      return 'What are some heartwarming books about pets that you\'ve enjoyed reading?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that inspires you to keep pushing forward, no matter what?';
    } else if (userMessage.contains('book recommendations for social issues')) {
      return 'What are some books that have opened your eyes to important social issues?';
    } else if (userMessage.contains('book genres')) {
      return 'What book genre have you found surprisingly deep or thought-provoking?';
    } else if (userMessage.contains('favorite author')) {
      return 'Who is your favorite author and why?';
    } else if (userMessage.contains('literary devices')) {
      return 'Literary devices like metaphor, simile, and irony enhance storytelling. Do you have a favorite literary device?';
    } else if (userMessage.contains('must-read books')) {
      return 'What books do you think everyone should read at least once in their lifetime?';
    } else if (userMessage.contains('bookstores')) {
      return 'What is your favorite bookshop and why?';
    } else if (userMessage.contains('reading goals')) {
      return 'Do you set reading goals for yourself, like reading a certain number of books per month or year?';
    } else if (userMessage.contains('book characters')) {
      return 'Do you have a favorite fictional character? What makes them your favorite?';
    } else if (userMessage.contains('reading environment')) {
      return 'Where do you prefer to read? In bed, on the couch, outdoors, or somewhere else?';
    } else if (userMessage.contains('book genres')) {
      return 'What is your least favorite book genre and why?';
    } else if (userMessage.contains('underrated book genres')) {
      return 'What are some underrated book genres that you think more people should explore?';
    } else if (userMessage.contains('book recommendations')) {
      return 'What book have you recommended to others the most?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Do you generally prefer the book or its movie/TV adaptation? Why?';
    } else if (userMessage.contains('book setting')) {
      return 'What is your favorite fictional world or setting from a book?';
    } else if (userMessage.contains('book preferences')) {
      return 'Do you prefer reading physical books, ebooks, or listening to audiobooks? Why?';
    } else if (userMessage.contains('book cover design')) {
      return 'What book has the most aesthetically pleasing cover design you\'ve seen?';
    } else if (userMessage.contains('book series')) {
      return 'Do you tend to prefer standalone books or book series? Why?';
    } else if (userMessage.contains('bookworm habits')) {
      return 'Are you the type of reader who prefers to finish a book in one sitting or savors it over time?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that has stuck with you over the years?';
    } else if (userMessage.contains('book endings')) {
      return 'Do you generally like ambiguous endings in books, or do you prefer everything tied up neatly?';
    } else if (userMessage.contains('book discoveries')) {
      return 'How do you usually discover new books to read?';
    } else if (userMessage.contains('book recommendations for children')) {
      return 'What are some of your favorite children\'s books?';
    } else if (userMessage.contains('book recommendations for adults')) {
      return 'What are some must-read books for adults in your opinion?';
    } else if (userMessage.contains('difficult book genres')) {
      return 'Are there any book genres you wish you could enjoy more but find challenging?';
    } else if (userMessage.contains('book recommendations for beginners')) {
      return 'What book would you recommend to someone who is just starting to get into reading?';
    } else if (userMessage.contains('book adaptations')) {
      return 'What book-to-movie adaptation do you think was better than the book itself?';
    } else if (userMessage.contains('scariest book')) {
      return 'What book do you consider to be the scariest you\'ve ever read?';
    } else if (userMessage.contains('meet fictional character')) {
      return 'If you could meet any fictional character from a book, who would it be and why?';
    } else if (userMessage.contains('historical book recommendations')) {
      return 'What are some fascinating historical books that you would recommend?';
    } else if (userMessage.contains('overrated book genres')) {
      return 'Are there any book genres that you think are overrated or too cliché?';
    } else if (userMessage.contains('science book recommendations')) {
      return 'What are some insightful science books that you\'ve enjoyed reading?';
    } else if (userMessage.contains('inspiring book quote')) {
      return 'Do you have a favorite literary quote that inspires you?';
    } else if (userMessage.contains('philosophy book recommendations')) {
      return 'What are some thought-provoking philosophy books that you would recommend?';
    } else if (userMessage.contains('business book recommendations')) {
      return 'What are some informative business books that have influenced your thinking?';
    } else if (userMessage.contains('book deserving movie adaptation')) {
      return 'What book do you think deserves a movie adaptation that hasn\'t been made into one yet?';
    } else if (userMessage.contains('poetry book recommendations')) {
      return 'What are some of your favorite poetry collections or poets?';
    } else if (userMessage.contains('fiction vs non-fiction')) {
      return 'Do you tend to read more fiction or non-fiction books? Why?';
    } else if (userMessage.contains('travel book recommendations')) {
      return 'What are some travel books that have inspired you to explore new places?';
    } else if (userMessage.contains('meaningful book quote')) {
      return 'What is a book quote that you find particularly meaningful or resonant?';
    } else if (userMessage.contains('psychology book recommendations')) {
      return 'What are some insightful psychology books that you would recommend?';
    } else if (userMessage.contains('art book recommendations')) {
      return 'What are some art books that you\'ve found inspiring or informative?';
    } else if (userMessage.contains('classic book adaptation')) {
      return 'What classic book would you like to see re-imagined for modern audiences in a new adaptation?';
    } else if (userMessage.contains('food book recommendations')) {
      return 'What are some mouth-watering food books or cookbooks that you\'ve enjoyed?';
    } else if (userMessage.contains('recently discovered book genre')) {
      return 'What book genre have you recently discovered and loved?';
    } else if (userMessage.contains('technology book recommendations')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('life or love book quote')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage.contains('self-improvement book recommendations')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('nature book recommendations')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage.contains('surprisingly enjoyable book genre')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage.contains('sports book recommendations')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('faithful book adaptation')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage.contains('fashion book recommendations')) {
      return 'What are some stylish and fashion-focused books that you\'ve found interesting?';
    } else if (userMessage.contains('deeply explore book genre')) {
      return 'What book genre have you been wanting to explore more deeply?';
    } else if (userMessage.contains('music book recommendations')) {
      return 'What are some music-related books that have resonated with you?';
    } else if (userMessage.contains('touching book quote')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage.contains('gardening book recommendations')) {
      return 'What are some gardening books that have helped you improve your gardening skills or knowledge?';
    } else if (userMessage.contains('read more of book genre')) {
      return 'What book genre have you been meaning to read more of lately?';
    } else if (userMessage.contains('pet book recommendations')) {
      return 'What are some heartwarming books about pets that you\'ve enjoyed reading?';
    } else if (userMessage.contains('inspiring push forward book quote')) {
      return 'What is a book quote that inspires you to keep pushing forward, no matter what?';
    } else if (userMessage.contains('social issues book recommendations')) {
      return 'What are some books that have opened your eyes to important social issues?';
    } else if (userMessage.contains('thought-provoking book genre')) {
      return 'What book genre have you found surprisingly deep or thought-provoking?';
    } else if (userMessage.contains('book adaptation technology buffs')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('encapsulates essence book quote')) {
      return 'Share a book quote that you think encapsulates the essence of a good book.';
    } else if (userMessage.contains('positive impact self-improvement book')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('deepened appreciation nature book')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage
        .contains('found surprisingly enjoyable book genre')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage
        .contains('sports enthusiasts book recommendations')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('stayed most faithful book adaptation')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage
        .contains('fashion enthusiasts book recommendations')) {
      return 'What are some stylish and fashion-focused books that you\'ve found interesting?';
    } else if (userMessage.contains('wanting to explore deeply book genre')) {
      return 'What book genre have you been wanting to explore more deeply?';
    } else if (userMessage.contains('music lovers book recommendations')) {
      return 'What are some music-related books that have resonated with you?';
    } else if (userMessage
        .contains('find particularly touching life or love book quote')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage
        .contains('gardening enthusiasts book recommendations')) {
      return 'What are some gardening books that have helped you improve your gardening skills or knowledge?';
    } else if (userMessage.contains('meaning to read more lately book genre')) {
      return 'What book genre have you been meaning to read more of lately?';
    } else if (userMessage.contains('pet lovers book recommendations')) {
      return 'What are some heartwarming books about pets that you\'ve enjoyed reading?';
    } else if (userMessage
        .contains('inspires you to keep pushing forward book quote')) {
      return 'What is a book quote that inspires you to keep pushing forward, no matter what?';
    } else if (userMessage
        .contains('opened your eyes to important social issues book')) {
      return 'What are some books that have opened your eyes to important social issues?';
    } else if (userMessage
        .contains('found surprisingly deep or thought-provoking book genre')) {
      return 'What book genre have you found surprisingly deep or thought-provoking?';
    } else if (userMessage.contains('favorite author')) {
      return 'Who is your favorite author and why?';
    } else if (userMessage.contains('literary devices')) {
      return 'Literary devices like metaphor, simile, and irony enhance storytelling. Do you have a favorite literary device?';
    } else if (userMessage.contains('must-read books')) {
      return 'What books do you think everyone should read at least once in their lifetime?';
    } else if (userMessage.contains('bookstores')) {
      return 'What is your favorite bookshop and why?';
    } else if (userMessage.contains('reading goals')) {
      return 'Do you set reading goals for yourself, like reading a certain number of books per month or year?';
    } else if (userMessage.contains('book characters')) {
      return 'Do you have a favorite fictional character? What makes them your favorite?';
    } else if (userMessage.contains('reading environment')) {
      return 'Where do you prefer to read? In bed, on the couch, outdoors, or somewhere else?';
    } else if (userMessage.contains('book genres')) {
      return 'What is your least favorite book genre and why?';
    } else if (userMessage.contains('underrated book genres')) {
      return 'What are some underrated book genres that you think more people should explore?';
    } else if (userMessage.contains('book recommendations')) {
      return 'What book have you recommended to others the most?';
    } else if (userMessage.contains('book adaptations')) {
      return 'Do you generally prefer the book or its movie/TV adaptation? Why?';
    } else if (userMessage.contains('book setting')) {
      return 'What is your favorite fictional world or setting from a book?';
    } else if (userMessage.contains('book preferences')) {
      return 'Do you prefer reading physical books, ebooks, or listening to audiobooks? Why?';
    } else if (userMessage.contains('book cover design')) {
      return 'What book has the most aesthetically pleasing cover design you\'ve seen?';
    } else if (userMessage.contains('book series')) {
      return 'Do you tend to prefer standalone books or book series? Why?';
    } else if (userMessage.contains('bookworm habits')) {
      return 'Are you the type of reader who prefers to finish a book in one sitting or savors it over time?';
    } else if (userMessage.contains('book quotes')) {
      return 'What is a book quote that has stuck with you over the years?';
    } else if (userMessage.contains('book endings')) {
      return 'Do you generally like ambiguous endings in books, or do you prefer everything tied up neatly?';
    } else if (userMessage.contains('book discoveries')) {
      return 'How do you usually discover new books to read?';
    } else if (userMessage.contains('book recommendations for children')) {
      return 'What are some of your favorite children\'s books?';
    } else if (userMessage.contains('book recommendations for adults')) {
      return 'What are some must-read books for adults in your opinion?';
    } else if (userMessage.contains('difficult book genres')) {
      return 'Are there any book genres you wish you could enjoy more but find challenging?';
    } else if (userMessage.contains('book recommendations for beginners')) {
      return 'What book would you recommend to someone who is just starting to get into reading?';
    } else if (userMessage.contains('book adaptations')) {
      return 'What book-to-movie adaptation do you think was better than the book itself?';
    } else if (userMessage.contains('scariest book')) {
      return 'What book do you consider to be the scariest you\'ve ever read?';
    } else if (userMessage.contains('meet fictional character')) {
      return 'If you could meet any fictional character from a book, who would it be and why?';
    } else if (userMessage.contains('historical book recommendations')) {
      return 'What are some fascinating historical books that you would recommend?';
    } else if (userMessage.contains('overrated book genres')) {
      return 'Are there any book genres that you think are overrated or too cliché?';
    } else if (userMessage.contains('science book recommendations')) {
      return 'What are some insightful science books that you\'ve enjoyed reading?';
    } else if (userMessage.contains('inspiring book quote')) {
      return 'Do you have a favorite literary quote that inspires you?';
    } else if (userMessage.contains('philosophy book recommendations')) {
      return 'What are some thought-provoking philosophy books that you would recommend?';
    } else if (userMessage.contains('business book recommendations')) {
      return 'What are some informative business books that have influenced your thinking?';
    } else if (userMessage.contains('book deserving movie adaptation')) {
      return 'What book do you think deserves a movie adaptation that hasn\'t been made into one yet?';
    } else if (userMessage.contains('poetry book recommendations')) {
      return 'What are some of your favorite poetry collections or poets?';
    } else if (userMessage.contains('fiction vs non-fiction')) {
      return 'Do you tend to read more fiction or non-fiction books? Why?';
    } else if (userMessage.contains('travel book recommendations')) {
      return 'What are some travel books that have inspired you to explore new places?';
    } else if (userMessage.contains('meaningful book quote')) {
      return 'What is a book quote that you find particularly meaningful or resonant?';
    } else if (userMessage.contains('psychology book recommendations')) {
      return 'What are some insightful psychology books that you would recommend?';
    } else if (userMessage.contains('art book recommendations')) {
      return 'What are some art books that you\'ve found inspiring or informative?';
    } else if (userMessage.contains('classic book adaptation')) {
      return 'What classic book would you like to see re-imagined for modern audiences in a new adaptation?';
    } else if (userMessage.contains('food book recommendations')) {
      return 'What are some mouth-watering food books or cookbooks that you\'ve enjoyed?';
    } else if (userMessage.contains('recently discovered book genre')) {
      return 'What book genre have you recently discovered and loved?';
    } else if (userMessage.contains('technology book recommendations')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('life or love book quote')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage.contains('self-improvement book recommendations')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('nature book recommendations')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage.contains('surprisingly enjoyable book genre')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage.contains('sports book recommendations')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('faithful book adaptation')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage.contains('fashion book recommendations')) {
      return 'What are some stylish and fashion-focused books that you\'ve found interesting?';
    } else if (userMessage.contains('deeply explore book genre')) {
      return 'What book genre have you been wanting to explore more deeply?';
    } else if (userMessage.contains('music book recommendations')) {
      return 'What are some music-related books that have resonated with you?';
    } else if (userMessage.contains('touching book quote')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage.contains('gardening book recommendations')) {
      return 'What are some gardening books that have helped you improve your gardening skills or knowledge?';
    } else if (userMessage.contains('read more of book genre')) {
      return 'What book genre have you been meaning to read more of lately?';
    } else if (userMessage.contains('pet book recommendations')) {
      return 'What are some heartwarming books about pets that you\'ve enjoyed reading?';
    } else if (userMessage.contains('inspiring push forward book quote')) {
      return 'What is a book quote that inspires you to keep pushing forward, no matter what?';
    } else if (userMessage.contains('social issues book recommendations')) {
      return 'What are some books that have opened your eyes to important social issues?';
    } else if (userMessage.contains('thought-provoking book genre')) {
      return 'What book genre have you found surprisingly deep or thought-provoking?';
    } else if (userMessage.contains('technology buffs book recommendations')) {
      return 'What are some informative technology books that you\'ve found intriguing?';
    } else if (userMessage.contains('essence book quote')) {
      return 'Share a book quote that you think encapsulates the essence of a good book.';
    } else if (userMessage.contains('positive impact self-improvement book')) {
      return 'What are some self-help books that have had a positive impact on your life?';
    } else if (userMessage.contains('deepened appreciation nature book')) {
      return 'What are some books about nature that have deepened your appreciation for the natural world?';
    } else if (userMessage
        .contains('found surprisingly enjoyable book genre')) {
      return 'Is there a book genre that you\'ve recently explored and found surprisingly enjoyable?';
    } else if (userMessage
        .contains('sports enthusiasts book recommendations')) {
      return 'What are some sports books that have inspired you with stories of athleticism and perseverance?';
    } else if (userMessage.contains('stayed most faithful book adaptation')) {
      return 'Which book-to-movie adaptation do you think stayed most faithful to the original story?';
    } else if (userMessage
        .contains('fashion enthusiasts book recommendations')) {
      return 'What are some stylish and fashion-focused books that you\'ve found interesting?';
    } else if (userMessage.contains('wanting to explore deeply book genre')) {
      return 'What book genre have you been wanting to explore more deeply?';
    } else if (userMessage.contains('music lovers book recommendations')) {
      return 'What are some music-related books that have resonated with you?';
    } else if (userMessage
        .contains('find particularly touching life or love book quote')) {
      return 'Share a book quote about life or love that you find particularly touching.';
    } else if (userMessage
        .contains('gardening enthusiasts book recommendations')) {
      return 'What are some gardening books that have helped you improve your gardening skills or knowledge?';
    } else if (userMessage.contains('meaning to read more lately book genre')) {
      return 'What book genre have you been meaning to read more of lately?';
    } else if (userMessage.contains('pet lovers book recommendations')) {
      return 'What are some heartwarming books about pets that you\'ve enjoyed reading?';
    } else if (userMessage
        .contains('inspires you to keep pushing forward book quote')) {
      return 'What is a book quote that inspires you to keep pushing forward, no matter what?';
    } else if (userMessage
        .contains('opened your eyes to important social issues book')) {
      return 'What are some books that have opened your eyes to important social issues?';
    } else if (userMessage
        .contains('found surprisingly deep or thought-provoking book genre')) {
      return 'What book genre have you found surprisingly deep or thought-provoking?';
    } else if (userMessage.contains('abusive language')) {
      return 'I\'m sorry, but I can\'t respond to that.';
    } else if (userMessage.contains('fantasy')) {
      return '"In the ancient realm of Eldoria, where magic flows like rivers, a young sorcerer named Kael embarks on a quest to uncover the lost city of Arvendale, rumored to hold the key to restoring balance between the mortal world and the realms of fae. With his loyal companion, a wise-cracking fairy named Elara, Kael must navigate treacherous forests, battle mythical beasts, and confront his own inner demons. Along the way, he discovers that the true power lies not in spells or artifacts, but in the bonds of friendship and the courage to believe in oneself."';
    } else if (userMessage.contains('science fiction')) {
      return "In the year 3021, aboard the interstellar cruiser Horizon, Captain Alexia Nova leads a daring mission to explore a distant galaxy teeming with sentient lifeforms. As they delve deeper into uncharted space, they uncover a shocking truth about their own origins—a secret that threatens to unravel the fabric of their civilization. With the fate of humanity hanging in the balance, Alexia must navigate political intrigue, alien alliances, and the mysteries of quantum mechanics to save her crew and unlock the key to humanity's survival.";
    } else if (userMessage.contains('dystopian')) {
      return "In the sprawling metropolis of Neo-Eden, where society is divided into rigid castes, a young rebel named Nova rises against the tyrannical regime of the Directorate. Armed with forbidden knowledge and a burning desire for justice, Nova leads a clandestine resistance movement to overthrow the oppressive rulers and restore freedom to the oppressed masses. But as the battle for freedom escalates, Nova must confront dark truths about her own past and the cost of revolution.";
    } else if (userMessage.contains('action and adventure')) {
      return "Deep in the heart of the Amazon rainforest, renowned archaeologist Dr. Indiana Stone uncovers a lost civilization that predates the Incas. Armed with a map that leads to a mythical artifact of immense power, Indiana embarks on a perilous journey across rugged terrain, dodging deadly traps and rival treasure hunters. But when a shadowy organization threatens to unleash chaos upon the world, Indiana must race against time to prevent an ancient prophecy from becoming a modern-day apocalypse.";
    } else if (userMessage.contains('mystery')) {
      return "In the fog-shrouded streets of Victorian London, Detective Amelia Holmes unravels a web of intrigue surrounding the disappearance of a renowned scientist. As she delves deeper into the case, Amelia uncovers a conspiracy that stretches from the halls of Parliament to the darkest corners of the city's underworld. With the clock ticking and her own life in danger, Amelia must decipher cryptic clues and navigate treacherous alliances to unmask the true mastermind behind the mystery.";
    } else if (userMessage.contains('horror')) {
      return "In the sleepy town of Ravenwood, where whispers of dark magic linger in the mist, a group of teenagers unwittingly awaken an ancient evil that preys on their deepest fears. As night falls and shadows creep, they must confront their own inner demons and uncover the chilling truth behind the town's haunted history. With every step closer to the truth, they risk losing themselves to the darkness that lurks within.";
    } else if (userMessage.contains('romance')) {
      return "On the sun-kissed shores of Santorini, a chance encounter between a jaded travel writer and a free-spirited artist sparks a whirlwind romance that defies all odds. Amidst breathtaking landscapes and moonlit dinners, they discover that love is not always smooth sailing. As they navigate past heartbreaks and hidden secrets, they must decide if their love is worth fighting for—a journey that will change their lives forever.";
    } else if (userMessage.contains('thriller and suspense')) {
      return "In the labyrinthine alleys of Hong Kong, undercover agent James Steel races against time to thwart an international terrorist plot that threatens to plunge the world into chaos. With only his wit and resourcefulness to rely on, James must navigate a web of deceit and betrayal, uncovering a conspiracy that reaches the highest echelons of power. As the stakes escalate, James realizes that the line between hero and villain is blurred—and trust is a luxury he can't afford.";
    } else if (userMessage.contains('historical fiction')) {
      return "Against the backdrop of the French Revolution, a young seamstress named Élodie navigates a world torn apart by revolution and romance. As she stitches together the threads of her own destiny, Élodie must choose between loyalty to her family and following her heart. Amidst the chaos of war and the opulence of Versailles, she discovers that love and courage can defy even the darkest of times.";
    } else if (userMessage.contains('contemporary fiction')) {
      return "In the bustling streets of New York City, four strangers' lives intersect in unexpected ways, revealing the power of friendship, forgiveness, and second chances. From the glittering lights of Broadway to the serene landscapes of Central Park, they discover that life is a journey filled with twists and turns—where every decision has the power to change their lives forever.";
    } else if (userMessage.contains('lgbtq+')) {
      return "In a world where love knows no boundaries, two women navigate the complexities of their forbidden romance amidst societal expectations and personal sacrifices. From the glittering ballrooms of Victorian England to the smoky jazz clubs of 1920s Harlem, they defy convention and embrace their true selves—a journey that will test their courage and resilience in the face of adversity.";
    } else if (userMessage.contains('magical realism')) {
      return "In the sleepy town of Willowbrook, where magic and reality intertwine, a mysterious stranger arrives with a gift that promises to change the lives of its inhabitants forever. As whispers of enchanted forests and hidden treasures spread, the town's residents must confront their deepest desires and darkest fears. Amidst the swirling mist and ancient legends, they discover that sometimes, the most extraordinary adventures begin with a single step.";
    } else if (userMessage.contains('graphic novel')) {
      return "In the neon-lit streets of Neo-Tokyo, a band of cybernetically enhanced mercenaries known as the Steel Dragons battles corrupt corporations and rogue AI. Led by the enigmatic Captain Kira, they must uncover the truth behind a deadly conspiracy that threatens to reshape the world as they know it. With high-octane action and heart-pounding suspense, they embark on a mission that will test their loyalty and redefine their destiny.";
    } else if (userMessage.contains('short story')) {
      return "On a moonlit night in the enchanted forest of Whispering Oaks, a curious fox embarks on a magical adventure to uncover the secrets of a long-lost treasure. With the help of his loyal friends—a mischievous squirrel and a wise old owl—he braves the perils of the forest and unravels a mystery that has been buried for centuries. Along the way, he learns valuable lessons about courage, friendship, and the power of believing in oneself.";
    } else if (userMessage.contains('young adult')) {
      return "In the dystopian city of Nova Prime, where dreams are forbidden, a group of teenagers known as the Dreamwalkers discover a hidden sanctuary where their imaginations come to life. Guided by their fearless leader, Ember, they must navigate treacherous terrain and outsmart their enemies to protect their sanctuary from the clutches of the tyrannical government. But as they uncover dark secrets and face unexpected betrayals, they realize that their greatest weapon is not their powers, but their unity.";
    } else if (userMessage.contains('new adult')) {
      return "Fresh out of college, Sarah embarks on a journey of self-discovery and independence in the vibrant city of San Francisco. As she navigates the complexities of adulthood—finding her dream job, forging new friendships, and navigating romantic entanglements—Sarah learns valuable lessons about resilience, forgiveness, and the courage to embrace change. Along the way, she discovers that the path to happiness is paved with unexpected challenges and life-changing choices.";
    } else if (userMessage.contains('children’s')) {
      return "In the whimsical world of Candyland, where marshmallow clouds float in a sky of cotton candy and chocolate rivers flow through fields of lollipops, a brave little girl named Lily embarks on a magical adventure to save her enchanted forest from the clutches of an evil sorcerer. With the help of her loyal friends—a talking squirrel and a mischievous fairy—Lily must unlock the secrets of her grandmother's enchanted recipe book and harness the power of kindness to defeat the sorcerer and restore peace to Candyland.";
    } else if (userMessage.contains('memoir and autobiography')) {
      return "In her poignant memoir, 'Echoes of Silence,' Elizabeth shares her journey from darkness to light—a deeply personal exploration of loss, resilience, and the healing power of art. From her humble beginnings in a small town to the glittering stages of New York City, Elizabeth traces her evolution as a dancer and artist, finding strength in her darkest moments and embracing the beauty of imperfection. With honesty and grace, she invites readers into her world, where every step forward is a testament to the resilience of the human spirit.";
    } else if (userMessage.contains('biography')) {
      return "In 'Visionary: The Life of Alexander Bell,' renowned biographer Emma Greenberg delves into the extraordinary life of the man who revolutionized communication forever. From his humble beginnings as a curious young inventor to his groundbreaking invention of the telephone, Alexander Bell's journey is a testament to the power of innovation and perseverance. With unparalleled access to his personal letters and diaries, Emma paints a vivid portrait of a visionary whose legacy continues to inspire generations.";
    } else if (userMessage.contains('food and drink')) {
      return "Embark on a culinary journey around the world with 'Flavors of the Globe,' a vibrant exploration of the diverse cultures and cuisines that shape our global palate. From the bustling markets of Marrakech to the serene rice terraces of Bali, discover the artistry and passion behind each dish as chefs share their time-honored recipes and culinary secrets. With stunning photography and mouthwatering descriptions, this book is a feast for the senses—an invitation to savor the flavors of the globe.";
    } else if (userMessage.contains('art and photography')) {
      return "Through the lens of acclaimed photographer Sarah Waters, 'Reflections of Light' captures the breathtaking beauty of the natural world in all its splendor. From the majestic peaks of the Himalayas to the tranquil waters of the Amazon River, each photograph tells a story of resilience, wonder, and the delicate balance of life. With insightful commentary and behind-the-scenes anecdotes, Sarah invites readers to see the world through her eyes—a testament to the transformative power of art and nature.";
    } else if (userMessage.contains('self-help')) {
      return "In 'The Path to Inner Peace,' renowned psychologist Dr. Emily Thompson offers a practical guide to navigating life's challenges with resilience and grace. Drawing on decades of research and personal experience, Dr. Thompson explores mindfulness techniques, emotional intelligence, and the power of positive thinking to cultivate inner peace and well-being. With actionable advice and inspiring stories, this book empowers readers to embrace change and discover their path to lasting happiness.";
    } else if (userMessage.contains('history')) {
      return "'Legends of Antiquity' chronicles the untold stories of ancient civilizations and their enduring legacies—from the majestic pyramids of Egypt to the awe-inspiring temples of Angkor Wat. Through meticulous research and vivid storytelling, historian Dr. Jonathan Harris brings to life the triumphs and tragedies of humanity's greatest civilizations, offering new insights into the forces that shaped the course of history. With stunning illustrations and captivating narratives, this book is a journey through time—an exploration of the past that illuminates the present.";
    } else if (userMessage.contains('travel')) {
      return "Embark on a journey of discovery with 'Wanderlust: A Traveler's Guide,' a captivating exploration of the world's most breathtaking destinations and hidden gems. From the sun-kissed beaches of the Maldives to the rugged landscapes of Patagonia, discover the magic of travel through immersive storytelling and stunning photography. Whether you're planning your next adventure or dreaming of far-off places, this book is your passport to wanderlust—an invitation to explore, discover, and experience the wonders of our planet.";
    } else if (userMessage.contains('true crime')) {
      return "'Dark Shadows: Tales of True Crime' delves into the chilling accounts of infamous crimes that shocked the world and the relentless pursuit of justice. From the mysterious disappearances of the Roanoke Colony to the gruesome murders of Jack the Ripper, these stories unravel the darkest corners of human nature and the tireless efforts of investigators to bring criminals to justice. With gripping narratives and meticulous research, this book offers a haunting glimpse into the minds of history's most notorious criminals.";
    } else if (userMessage.contains('humor')) {
      return "'Laugh Out Loud: The Comedy Chronicles' takes readers on a hilarious journey through the world of comedy, from vaudeville to viral videos. With side-splitting anecdotes and witty observations, comedian Sarah Jones explores the evolution of humor and its impact on society. From slapstick to satire, this book celebrates the universal language of laughter and the enduring power of humor to bring joy and connection to audiences around the world.";
    } else if (userMessage.contains('essays')) {
      return "In 'Voices of Change,' a collection of thought-provoking essays, renowned scholars and activists explore pressing social issues and propose innovative solutions for a brighter future. From climate change to racial justice, each essay offers a unique perspective on the challenges facing our world today and the transformative power of collective action. With insightful analysis and impassioned advocacy, this book inspires readers to engage in meaningful dialogue and drive positive change in their communities.";
    } else if (userMessage.contains('guide/how-to')) {
      return "'Mastering Digital Marketing: A Practical Guide' equips readers with the tools and strategies needed to navigate the ever-changing landscape of online advertising. From SEO to social media marketing, digital marketing expert Mark Johnson offers actionable advice and real-world examples to help readers build a successful digital marketing campaign. Whether you're a novice entrepreneur or seasoned marketer, this book is your roadmap to mastering digital marketing and achieving your business goals.";
    } else if (userMessage.contains('religion and spirituality')) {
      return "'Journey of the Soul: Exploring Spiritual Wisdom' invites readers on a transformative journey of self-discovery and spiritual growth. Through ancient wisdom and modern insights, spiritual guide Sarah Davis explores the universal truths that unite humanity and illuminate the path to inner peace. From mindfulness practices to sacred rituals, this book offers practical tools and profound teachings to help readers connect with their higher selves and embrace the beauty of the spiritual journey.";
    } else if (userMessage.contains('humanities and social sciences')) {
      return "In 'The Human Tapestry: Exploring Culture and Identity,' anthropologist Dr. Maya Patel unravels the complexities of human culture and identity through the lens of anthropology. From ancient civilizations to contemporary societies, Dr. Patel examines the rituals, beliefs, and social structures that shape our collective experience. With insightful analysis and compelling narratives, this book offers a deeper understanding of the diverse tapestry of humanity and our shared quest for meaning.";
    } else if (userMessage.contains('parenting and families')) {
      return "In 'Family Ties: Nurturing Stronger Connections,'' psychologist Dr. Emily Parker offers practical advice and compassionate guidance for building resilient family relationships. From navigating conflict to fostering empathy, Dr. Parker explores the dynamics of family life and offers strategies for creating a supportive and nurturing environment. With heartwarming stories and actionable tips, this book is a valuable resource for parents and caregivers seeking to strengthen their family bonds.";
    } else if (userMessage.contains('fantasy')) {
      return "In the enchanted forest of Eldoria, where ancient spirits roam, a young elf named Lysandra discovers a hidden prophecy that foretells of a great darkness threatening to engulf their world. With the guidance of a wise sage and the loyalty of her companions, Lysandra embarks on a quest to awaken the dormant magic within her and unite the fractured realms against a common enemy. Along the way, she learns that true strength lies not in power, but in the bonds of friendship and the courage to believe in oneself.";
    } else if (userMessage.contains('fantasy')) {
      return "In the mystical kingdom of Avaloria, where dragons soar the skies and wizards wield arcane spells, a reluctant hero named Arren embarks on a perilous journey to reclaim the lost throne and restore peace to the realm. With the aid of a spirited thief and a grizzled warrior, Arren must confront dark sorcery, ancient curses, and his own inner demons to fulfill his destiny as the true heir to the throne. Along the way, he discovers that true courage is not the absence of fear, but the strength to face it.";
    } else if (userMessage.contains('science fiction')) {
      return "On the distant planet of Xenon Prime, where advanced technology coexists with ancient prophecies, a young scientist named Dr. Lyra embarks on a quest to unlock the secrets of a long-lost civilization. With the help of an enigmatic AI and a fearless space captain, Lyra delves into the heart of a cosmic mystery that threatens to reshape the galaxy. But as she unravels the truth behind her own origins, Lyra must confront the ethical dilemmas of scientific discovery and the consequences of playing god.";
    } else if (userMessage.contains('science fiction')) {
      return "In the year 2350, aboard the starship Nova Vanguard, Captain Orion and his intrepid crew embark on a daring mission to explore the uncharted regions of the Andromeda galaxy. As they navigate wormholes and encounter alien civilizations, they uncover a sinister plot that threatens the fragile peace between planets. With their ship's AI, Athena, guiding them through treacherous terrain, Captain Orion must lead his crew through a cosmic journey of discovery and betrayal, where the line between friend and foe blurs.";
    } else if (userMessage.contains('dystopian')) {
      return "In the sprawling megacity of Neo-Tokyo, where the divide between rich and poor grows ever wider, a fearless hacker named Kai joins a resistance movement to overthrow the oppressive corporate overlords. With the help of a rogue AI and a group of cybernetically enhanced rebels, Kai must infiltrate the heart of the megacorporations' digital fortress and expose their darkest secrets. But as the battle for freedom escalates, Kai discovers that the true enemy may not be the ones pulling the strings, but the darkness within themselves.";
    } else if (userMessage.contains('dystopian')) {
      return "In the year 2147, amidst the ruins of a once-thriving civilization, a young scavenger named Mara uncovers a forbidden artifact that holds the key to humanity's salvation. With the guidance of a mysterious mentor and the loyalty of her fellow outcasts, Mara embarks on a perilous journey across the wasteland to confront the tyrannical rulers who control the last remnants of society. Along the way, she learns that hope can be found in the most unlikely places, and that the power to change the world lies within each of us.";
    } else if (userMessage.contains('action and adventure')) {
      return "In the heart of the Amazon rainforest, a team of elite archaeologists led by Dr. Sophia Rivers uncovers a lost city hidden beneath centuries of jungle growth. As they unravel the mysteries of the ancient civilization, they must fend off rival treasure hunters and evade deadly traps that guard the city's secrets. But when a ruthless mercenary threatens to unleash chaos upon the world, Sophia and her team must race against time to prevent history from repeating itself.";
    } else if (userMessage.contains('action and adventure')) {
      return "On the high seas of the Caribbean, a swashbuckling pirate named Captain Blackbeard sets sail in search of legendary treasure buried on a remote island. With his loyal crew of misfits and a cunning mapmaker by his side, Blackbeard must navigate treacherous waters, battle rival pirates, and uncover clues left behind by the infamous pirate queen, Anne Bonny. But as they draw closer to their prize, they discover that the real treasure may be the bonds of friendship forged on the journey.";
    } else if (userMessage.contains('mystery')) {
      return "In the picturesque village of Willowbrook, renowned detective Emily Blake investigates the mysterious disappearance of a local heiress on the eve of her wedding. As Emily unravels a web of deceit and betrayal, she discovers that everyone in the village has secrets to hide—some more deadly than others. With the clock ticking and the pressure mounting, Emily must follow the clues before another life is lost to the shadows that lurk beneath the surface.";
    } else if (userMessage.contains('mystery')) {
      return "In the fog-shrouded streets of Victorian London, a brilliant detective named Inspector Charles Holmes pursues his most elusive adversary yet—the elusive mastermind behind a series of daring heists that have left Scotland Yard baffled. With the help of his loyal companion, Dr. John Watson, Holmes must unravel a tangled web of clues and false leads to unmask the true identity of the infamous thief. But as the stakes escalate, Holmes discovers that the greatest mysteries lie within the human heart.";
    } else if (userMessage.contains('horror')) {
      return "In the eerie town of Ravenwood, where shadows whisper and nightmares come to life, a group of friends uncovers a cursed artifact that unleashes a malevolent force upon their small community. As darkness descends and ancient rituals are awakened, they must confront their deepest fears and unravel the mystery of Ravenwood's haunted past. With every step deeper into the abyss, they risk losing their sanity and their souls to the darkness that lurks within.";
    } else if (userMessage.contains('horror')) {
      return "In the desolate wastelands of post-apocalyptic Earth, a lone survivor named Sarah battles against hordes of undead creatures known as the Revenants. Haunted by visions of her past and driven by the need for redemption, Sarah embarks on a harrowing journey across barren landscapes and abandoned cities in search of sanctuary. But as she faces unimaginable horrors and unlikely alliances, Sarah discovers that the true monsters may not be the undead, but the darkness that lurks within the human heart.";
    } else if (userMessage.contains('romance')) {
      return "On the sun-drenched beaches of Santorini, a world-weary photographer named Alex meets a spirited travel writer named Mia. Drawn together by their shared love of adventure and discovery, they embark on a whirlwind romance that defies expectations and challenges their own insecurities. As they navigate the pitfalls of fame and the pressures of their careers, Alex and Mia must confront their pasts and embrace the uncertainty of their future—a journey that will test their resilience and redefine their understanding of love.";
    } else if (userMessage.contains('romance')) {
      return "In the bustling streets of Paris, a struggling artist named Sophie crosses paths with a mysterious stranger who ignites a passion within her that she thought long extinguished. As they explore the City of Light together, Sophie and her enigmatic companion uncover hidden treasures and unforgettable moments that defy time and space. But when secrets from the past threaten to tear them apart, Sophie must choose between holding onto her fears or taking a leap of faith into the unknown.";
    } else if (userMessage.contains('thriller and suspense')) {
      return "In the shadowy underworld of New York City, undercover detective Jake Collins infiltrates a dangerous crime syndicate led by the enigmatic crime lord, Victor 'The Viper' Valenti. As Jake delves deeper into the criminal empire, he uncovers a web of corruption and betrayal that reaches into the highest levels of government. With his life on the line and his loyalty tested, Jake must navigate a treacherous maze of lies and deception to bring justice to those who deserve it most.";
    } else if (userMessage.contains('thriller and suspense')) {
      return "In the labyrinthine streets of Tokyo, a brilliant hacker named Akira is recruited by an underground resistance movement to expose a government conspiracy that threatens to control the minds of millions. With the help of a fearless journalist and a rogue AI, Akira must navigate a web of deceit and danger to uncover the truth behind the mysterious project known only as 'Project Nemesis.' But as they draw closer to the heart of the conspiracy, they realize that some secrets are worth dying for.";
    } else if (userMessage.contains('historical fiction')) {
      return "In the grand halls of Versailles, where intrigue and ambition reign supreme, a young courtier named Marie finds herself caught in the midst of a royal scandal that threatens to unravel the fabric of French society. As she navigates the treacherous waters of court politics and forbidden romance, Marie must choose between loyalty to her family and loyalty to her heart. With revolution on the horizon and the fate of a nation hanging in the balance, Marie discovers that courage comes in many forms—and love can defy even the most formidable obstacles.";
    } else if (userMessage.contains('historical fiction')) {
      return "In the ancient city of Pompeii, on the eve of its catastrophic destruction, a courageous slave named Lucia embarks on a perilous journey to save her beloved mistress from the clutches of a ruthless senator. With the help of a loyal gladiator and a resourceful thief, Lucia must navigate the treacherous streets of Pompeii and confront the dark forces that threaten to tear their world apart. As Mount Vesuvius looms ominously overhead, Lucia discovers that true bravery lies not in the absence of fear, but in the strength to face it head-on.";
    } else if (userMessage.contains('contemporary fiction')) {
      return "In the bustling metropolis of New York City, four strangers find their lives intertwined by chance and circumstance—a struggling artist, a successful lawyer, a disillusioned writer, and an ambitious entrepreneur. As they navigate the complexities of love and ambition, friendship and betrayal, each must confront their own fears and insecurities to find true happiness and fulfillment. In a city where dreams are made and broken, they discover that the greatest journey is the one that leads to self-discovery and redemption.";
    } else if (userMessage.contains('contemporary fiction')) {
      return "In the vibrant streets of Mumbai, where tradition clashes with modernity, a spirited young woman named Priya defies societal expectations to pursue her passion for dance. With the support of her loving family and the guidance of a renowned choreographer, Priya must overcome obstacles and challenges to prove herself on the world stage. But as she navigates fame and fortune, Priya learns that success comes with sacrifices and that the true measure of happiness lies in following one's heart.";
    } else if (userMessage.contains('lgbtq+')) {
      return "In the small town of Willowbrook, where prejudice and acceptance collide, two young women, Emma and Lily, discover the courage to embrace their true identities and defy societal expectations. As they navigate the complexities of first love and self-discovery, Emma and Lily find solace in each other's arms and the unwavering support of their friends. But when their secret romance is threatened by bigotry and hatred, they must find the strength to stand together and fight for the right to love freely.";
    } else if (userMessage.contains('lgbtq+')) {
      return "In the bustling streets of Tokyo, where tradition meets innovation, a talented manga artist named Yuki struggles to find her voice amidst the pressures of fame and family expectations. With the support of her loyal fans and the guidance of a compassionate editor, Yuki explores themes of love, identity, and acceptance in her groundbreaking manga series. But as she confronts her own fears and insecurities, Yuki discovers that the true power of storytelling lies in embracing one's authentic self.";
    } else if (userMessage.contains('magical realism')) {
      return "In the sleepy town of Willowbrook, where magic and reality intertwine, a young woman named Alice discovers a hidden garden behind her grandmother's old cottage—a garden that defies the laws of nature and time itself. With the help of a mysterious gardener and the wisdom of ancient spirits, Alice embarks on a journey of self-discovery and healing. But as she unravels the garden's secrets, Alice must confront her deepest fears and learn to embrace the magic within her own heart.";
    } else if (userMessage.contains('magical realism')) {
      return "In the enchanted forest of Eldoria, where mythical creatures roam and ancient spells linger in the air, a spirited young witch named Luna discovers an ancient prophecy that foretells of a great awakening. With the guidance of her wise grandmother and the loyalty of her animal companions, Luna must harness the power of nature and magic to protect her homeland from dark forces that threaten to destroy it. Along the way, she learns that true strength comes from within and that courage is the key to unlocking her destiny.";
    } else if (userMessage.contains('graphic novel')) {
      return "In the neon-lit streets of Neo-Tokyo, where cybernetic enhancements and virtual realities reign supreme, a fearless hacker named Rei uncovers a corporate conspiracy that threatens to control the minds of millions. With the help of a renegade AI and a band of cyberpunk rebels, Rei must navigate the dangerous underworld of corporate espionage and digital warfare to expose the truth. But as the lines between reality and virtuality blur, Rei discovers that the greatest battles are fought within the mind.";
    } else if (userMessage.contains('graphic novel')) {
      return "In the dystopian city of New Arcadia, where technology reigns supreme and freedom is a distant memory, a group of young hackers known as The Resistance fights to overthrow the oppressive regime. With their unique abilities and unwavering determination, they must outwit the government's surveillance systems and rally the citizens to join their cause. But as they uncover dark secrets and betrayals within their own ranks, The Resistance learns that true freedom comes at a price—and that some sacrifices are worth making.";
    } else if (userMessage.contains('short story')) {
      return "In the quiet town of Willowbrook, where secrets lie beneath the surface, a retired detective named Jack stumbles upon a cold case that has haunted him for decades. As he retraces the footsteps of a missing girl and uncovers long-buried secrets, Jack confronts his own past and the choices that led him to this moment. With each clue leading closer to the truth, Jack must unravel the mystery before time runs out and the darkness claims another innocent soul.";
    } else if (userMessage.contains('short story')) {
      return "In the bustling streets of New York City, a struggling artist named Emily discovers an old journal hidden beneath the floorboards of her apartment—a journal that reveals the untold story of a forbidden romance that transcended time and space. As Emily delves deeper into the pages, she becomes entangled in a web of love, loss, and redemption that challenges her perceptions of reality. With each revelation, Emily discovers that sometimes the greatest stories are the ones waiting to be rediscovered.";
    } else if (userMessage.contains('young adult')) {
      return "In the picturesque town of Willowbrook, where dreams come alive and secrets are buried deep, a group of misfit teenagers forms an unlikely alliance to uncover the truth behind a series of mysterious disappearances. As they navigate the complexities of friendship and betrayal, love and loss, they must confront their own fears and insecurities to solve the mystery that haunts their small community. With each clue leading closer to the truth, they discover that growing up means facing the darkness within themselves.";
    } else if (userMessage.contains('young adult')) {
      return "In the dystopian city of Neo-Tokyo, where order and chaos collide, a fearless teenager named Akira discovers a hidden resistance movement that fights against the oppressive regime. With the help of a mysterious rebel leader and a group of tech-savvy hackers, Akira must navigate the dangerous streets and underground tunnels to uncover the truth about his own past and the future of their fractured society. Along the way, he learns that true courage comes from standing up for what you believe in, even in the face of overwhelming odds.";
    } else if (userMessage.contains('new adult')) {
      return "In the vibrant city of San Francisco, where dreams are born and broken, a group of college graduates navigates the challenges of adulthood, love, and identity. As they forge new friendships and explore their passions, they must confront their fears and insecurities to find their place in the world. From the highs of new beginnings to the lows of heartbreak, each must learn that growing up means embracing change and embracing who they are meant to be.";
    } else if (userMessage.contains('new adult')) {
      return "In the bustling streets of Tokyo, where tradition meets innovation, a group of university students embarks on a journey of self-discovery and friendship. As they navigate the complexities of love and ambition, they must confront their own fears and insecurities to find their place in the world. From the excitement of new experiences to the challenges of adulthood, each must learn that true happiness comes from within and that the bonds of friendship can withstand any storm.";
    } else if (userMessage.contains('children’s')) {
      return "In the enchanting village of Willowbrook, where laughter echoes and dreams take flight, a curious young girl named Lily discovers a magical doorway hidden in her grandmother's attic—a doorway that leads to a world of whimsy and wonder. With the help of her loyal companion, a mischievous sprite named Sparkle, Lily embarks on a grand adventure to rescue the enchanted creatures of the forest from an ancient curse. Along the way, she learns that the greatest magic of all is believing in oneself and the power of friendship.";
    } else if (userMessage.contains('children’s')) {
      return "In the colorful world of Rainbow Valley, where imagination knows no bounds, a group of playful animals embarks on a journey to save their beloved home from a mischievous villain. With the help of a wise old owl and a brave young squirrel, they must outwit traps, solve puzzles, and uncover hidden treasures to restore peace to their enchanted forest. Along the way, they learn valuable lessons about courage, teamwork, and the importance of never giving up on your dreams.";
    } else if (userMessage.contains('memoir and autobiography')) {
      return "In the memoir 'Finding My Voice,' acclaimed author Maya Johnson recounts her journey from a troubled childhood in a small town to becoming a voice for change on the global stage. Through triumphs and setbacks, Maya shares intimate reflections on identity, resilience, and the power of storytelling to heal and inspire. From humble beginnings to international acclaim, 'Finding My Voice' is a testament to the strength of the human spirit and the transformative power of self-discovery.";
    } else if (userMessage.contains('memoir and autobiography')) {
      return "In the autobiography 'Unbreakable Spirit,' Olympic champion Sarah Jones shares her inspiring story of overcoming adversity and achieving her dreams against all odds. From a childhood marked by poverty and hardship to standing atop the podium at the Olympic Games, Sarah's journey is a testament to the power of perseverance, determination, and the unwavering support of family and friends. 'Unbreakable Spirit' is a celebration of resilience and the triumph of the human spirit.";
    } else if (userMessage.contains('biography')) {
      return "In the biography 'The Great Innovator,' author James Smith chronicles the extraordinary life of visionary inventor Thomas Edison, from his humble beginnings as a telegraph operator to his groundbreaking inventions that revolutionized the world. Through meticulous research and insightful analysis, Smith offers a compelling portrait of Edison's relentless pursuit of knowledge, his tireless work ethic, and his enduring legacy as one of history's greatest innovators. 'The Great Innovator' is a testament to the power of curiosity and the impact of ingenuity on society.";
    } else if (userMessage.contains('biography')) {
      return "In the biography 'Trailblazer,' journalist Emma Brown tells the remarkable story of Supreme Court Justice Ruth Bader Ginsburg, from her early struggles against gender discrimination to her historic tenure on the nation's highest court. Through interviews with colleagues, friends, and family members, Brown paints a vivid portrait of Ginsburg's unwavering commitment to justice, equality, and the rule of law. 'Trailblazer' is a tribute to Ginsburg's indelible legacy and her enduring impact on American jurisprudence.";
    } else if (userMessage.contains('food and drink')) {
      return "In the culinary memoir 'Taste of Home,' chef Emma Martinez invites readers into her kitchen and shares her passion for food, family, and the rich flavors of her heritage. Through heartwarming anecdotes and mouthwatering recipes, Martinez celebrates the joy of cooking and the cultural traditions that have shaped her culinary journey. From festive holiday feasts to everyday meals shared with loved ones, 'Taste of Home' is a delicious tribute to the power of food to nourish the body and soul.";
    } else if (userMessage.contains('food and drink')) {
      return "In the gastronomic exploration 'Flavors of the World,' food critic Michael Thompson takes readers on a global culinary adventure to uncover the stories behind the world's most beloved dishes. From the spicy street food of Bangkok to the delicate pastries of Paris, Thompson explores the cultural significance of each dish and the culinary traditions that have stood the test of time. With mouthwatering descriptions and insightful commentary, 'Flavors of the World' is a feast for the senses and a celebration of culinary diversity.";
    } else if (userMessage.contains('self-help')) {
      return "In the self-help guide 'Finding Inner Peace,' mindfulness expert Dr. Emily White offers practical strategies and meditative practices to help readers cultivate a sense of calm amidst the chaos of modern life. Through gentle guidance and empowering affirmations, Dr. White encourages readers to embrace self-compassion, cultivate gratitude, and navigate life's challenges with resilience and grace. 'Finding Inner Peace' is a soothing balm for the soul and a roadmap to a more fulfilling and harmonious life.";
    } else if (userMessage.contains('self-help')) {
      return "In the motivational handbook 'Unleash Your Potential,' life coach Jason Brown shares transformative insights and actionable steps to help readers unlock their true potential and achieve their goals. Through personal anecdotes and practical exercises, Brown empowers readers to overcome self-limiting beliefs, embrace positive change, and create a life of purpose and fulfillment. 'Unleash Your Potential' is a roadmap to personal growth and a testament to the power of perseverance and self-discovery.";
    } else if (userMessage.contains('history')) {
      return "In the sweeping narrative 'A History of Civilization,' historian David Johnson traces the evolution of human societies from ancient Mesopotamia to the present day. Through vivid storytelling and meticulous research, Johnson illuminates the cultural, political, and economic forces that have shaped civilization's rise and fall. From the rise of empires to the dawn of democracy, 'A History of Civilization' offers a comprehensive overview of humanity's collective journey and the lessons it holds for the future.";
    } else if (userMessage.contains('history')) {
      return "In the biography 'The Last Pharaoh,' historian Emma Brown chronicles the dramatic reign of Cleopatra VII, the last ruler of ancient Egypt. Through archaeological discoveries and ancient texts, Brown offers a compelling portrait of Cleopatra's political savvy, strategic alliances, and enduring legacy as one of history's most enigmatic figures. 'The Last Pharaoh' is a testament to Cleopatra's indomitable spirit and her enduring impact on the ancient world.";
    } else if (userMessage.contains('travel')) {
      return "In the travel memoir 'Wanderlust,' adventurer Sarah Thompson embarks on a globetrotting journey to discover the hidden gems and cultural treasures of the world. From the bustling markets of Marrakech to the tranquil beaches of Bali, Thompson shares her adventures and misadventures with humor and heart. Through vivid descriptions and insightful reflections, 'Wanderlust' inspires readers to embrace curiosity, embrace diversity, and embark on their own journey of discovery.";
    } else if (userMessage.contains('travel')) {
      return "In the travelogue 'Postcards from Paradise,' photographer James Martinez captures the breathtaking beauty of the world's most exotic destinations through stunning photographs and heartfelt anecdotes. From the snow-capped peaks of the Himalayas to the crystal-clear waters of the Maldives, Martinez invites readers to embark on a visual journey of discovery and wonder. With each page turned, 'Postcards from Paradise' is a passport to adventure and a celebration of the planet's natural splendor.";
    } else if (userMessage.contains('true crime')) {
      return "In the true crime exposé 'Behind Closed Doors,' investigative journalist Emma Johnson delves into the chilling case of a notorious serial killer who terrorized a small town for decades. Through interviews with survivors, law enforcement officials, and legal experts, Johnson unravels the web of lies and deception that shielded the killer from justice. 'Behind Closed Doors' is a riveting account of one community's fight for justice and the enduring quest for truth.";
    } else if (userMessage.contains('true crime')) {
      return "In the true crime thriller 'Cold Case Files,' detective James Brown reopens a decades-old murder case that has haunted him for years. As he sifts through old evidence and interviews witnesses, Brown uncovers shocking revelations and hidden truths that lead him closer to the elusive killer. With each clue uncovered and each suspect interrogated, 'Cold Case Files' is a gripping tale of perseverance, justice, and the pursuit of closure.";
    } else if (userMessage.contains('humor')) {
      return "In the comedic memoir 'Laughing Out Loud,' stand-up comedian Sarah White shares hilarious anecdotes and witty observations from her life on and off the stage. From awkward first dates to disastrous family vacations, White's irreverent humor and sharp wit shine through in every chapter. With laugh-out-loud moments and heartfelt reflections, 'Laughing Out Loud' is a delightful reminder that sometimes the best medicine is a good laugh.";
    } else if (userMessage.contains('humor')) {
      return "In the humorous guide 'How to Survive Family Gatherings,' bestselling author Emily Brown offers practical tips and humorous anecdotes to help readers navigate the minefield of holiday dinners, reunions, and celebrations. From dealing with nosy relatives to surviving awkward conversations, Brown's witty advice and insightful commentary provide a lighthearted perspective on the challenges of family gatherings. 'How to Survive Family Gatherings' is a survival guide for anyone who's ever wished for an escape route.";
    } else if (userMessage.contains('essays')) {
      return "In the collection of essays 'Reflections on Life,' author Emma Davis explores themes of love, loss, and resilience through a series of deeply personal reflections. From the joys of parenthood to the complexities of modern relationships, Davis's poignant prose and candid observations offer readers a window into the human experience. With each essay, 'Reflections on Life' invites readers to contemplate their own journey and find meaning in the moments that shape us.";
    } else if (userMessage.contains('essays')) {
      return "In the philosophical musings 'Thoughts on Existence,' renowned thinker James Smith contemplates the nature of reality, consciousness, and the meaning of life itself. Through insightful observations and thought-provoking inquiries, Smith challenges readers to question their assumptions and explore the mysteries of existence. From the nature of time to the limits of human knowledge, 'Thoughts on Existence' offers a profound exploration of the philosophical questions that have puzzled thinkers for centuries.";
    } else if (userMessage.contains('classic')) {
      return "In the timeless tale 'Pride and Prejudice,' celebrated author Jane Austen explores the complexities of love, class, and social expectations in 19th-century England. Through the spirited heroine Elizabeth Bennet and the enigmatic Mr. Darcy, Austen crafts a story of wit, charm, and romance that continues to captivate readers today. With its sharp social commentary and unforgettable characters, 'Pride and Prejudice' is a classic love story that transcends time and remains as relevant as ever.";
    } else if (userMessage.contains('classic')) {
      return "In the epic saga 'The Odyssey,' ancient poet Homer recounts the thrilling adventures of the hero Odysseus as he journeys home from the Trojan War. From encounters with gods and monsters to battles with treacherous foes, Odysseus faces countless trials and challenges on his quest for redemption and reunion with his beloved wife and son. With its timeless themes of courage, perseverance, and the power of the human spirit, 'The Odyssey' is a testament to the enduring power of storytelling.";
    } else if (userMessage.contains('science fiction')) {
      return "In the futuristic world of 'Dystopia Rising,' author Sarah Johnson imagines a society divided by class, where the wealthy elite live in luxury while the poor struggle to survive in the shadow of towering skyscrapers. Amidst the unrest and inequality, a young rebel named Alex discovers a hidden resistance movement that fights for justice and equality. With the help of a fearless hacker and a charismatic leader, Alex must navigate the dangerous streets and dark secrets of the city to ignite a revolution that will change their world forever.";
    } else if (userMessage.contains('science fiction')) {
      return "In the visionary universe of 'Galactic Chronicles,' acclaimed author Michael Thompson explores the vast expanse of space and the diverse civilizations that inhabit it. From the bustling spaceports of Alpha Centauri to the mysterious ruins of an ancient alien civilization, Thompson weaves together epic tales of adventure, discovery, and interstellar conflict. With its richly imagined worlds and compelling characters, 'Galactic Chronicles' is a thrilling journey through the cosmos and a tribute to the boundless possibilities of the human spirit.";
    } else if (userMessage.contains('fantasy')) {
      return "In the enchanted realm of 'Dragon's Blood,' legendary author Emma Brown spins a tale of magic, dragons, and destiny. When a young squire named Lucas discovers an ancient prophecy foretelling the return of dragons to the kingdom, he embarks on a quest to uncover the truth behind his own mysterious origins. With the help of a wise sorcerer and a fearless warrior, Lucas must confront dark forces and uncover long-buried secrets to fulfill his destiny and save the realm from destruction.";
    } else if (userMessage.contains('fantasy')) {
      return "In the mythical land of 'Eternal Realms,' bestselling author Sarah Martinez weaves a spellbinding tale of adventure, romance, and betrayal. When a powerful sorceress threatens to plunge the realm into darkness, a young hero named Arya embarks on a perilous journey to reclaim an ancient artifact and restore balance to the world. With the guidance of a wise sage and the loyalty of a brave warrior, Arya must confront her own doubts and fears to embrace her destiny as the chosen one.";
    } else if (userMessage.contains('2019')) {
      return 'Books released in 2019 include "The Testaments" by Margaret Atwood and "Where the Crawdads Sing" by Delia Owens.';
    } else if (userMessage.contains('2018')) {
      return 'In 2018, notable books like "Becoming" by Michelle Obama and "Circe" by Madeline Miller were published.';
    } else if (userMessage.contains('2017')) {
      return 'Books such as "The Hate U Give" by Angie Thomas and "Little Fires Everywhere" by Celeste Ng were popular in 2017.';
    } else if (userMessage.contains('2016')) {
      return 'In 2016, readers enjoyed "The Underground Railroad" by Colson Whitehead and "The Girls" by Emma Cline.';
    } else if (userMessage.contains('2015')) {
      return 'Books released in 2015 include "Go Set a Watchman" by Harper Lee and "The Girl on the Train" by Paula Hawkins.';
    } else if (userMessage.contains('2014')) {
      return 'In 2014, notable books like "All the Light We Cannot See" by Anthony Doerr and "The Goldfinch" by Donna Tartt were published.';
    } else if (userMessage.contains('2013')) {
      return 'Books such as "The Ocean at the End of the Lane" by Neil Gaiman and "Gone Girl" by Gillian Flynn were popular in 2013.';
    } else if (userMessage.contains('2012')) {
      return 'In 2012, readers enjoyed "The Fault in Our Stars" by John Green and "Gone Girl" by Gillian Flynn.';
    } else if (userMessage.contains('2011')) {
      return 'Books released in 2011 include "1Q84" by Haruki Murakami and "The Night Circus" by Erin Morgenstern.';
    } else if (userMessage.contains('2010')) {
      return 'In 2010, notable books like "Room" by Emma Donoghue and "Freedom" by Jonathan Franzen were published.';
    } else if (userMessage.contains('2009')) {
      return 'Books such as "The Help" by Kathryn Stockett and "The Girl Who Played with Fire" by Stieg Larsson were popular in 2009.';
    } else if (userMessage.contains('2008')) {
      return 'In 2008, readers enjoyed "The Hunger Games" by Suzanne Collins and "The Guernsey Literary and Potato Peel Pie Society" by Mary Ann Shaffer.';
    } else if (userMessage.contains('2007')) {
      return 'Books released in 2007 include "Harry Potter and the Deathly Hallows" by J.K. Rowling and "The Secret" by Rhonda Byrne.';
    } else if (userMessage.contains('2006')) {
      return 'In 2006, notable books like "The Road" by Cormac McCarthy and "Eat, Pray, Love" by Elizabeth Gilbert were published.';
    } else if (userMessage.contains('2005')) {
      return 'Books such as "The Da Vinci Code" by Dan Brown and "Freakonomics" by Steven D. Levitt were popular in 2005.';
    } else if (userMessage.contains('2004')) {
      return 'In 2004, readers enjoyed "The Kite Runner" by Khaled Hosseini and "The Plot Against America" by Philip Roth.';
    } else if (userMessage.contains('2003')) {
      return 'Books released in 2003 include "The Da Vinci Code" by Dan Brown and "Eats, Shoots & Leaves" by Lynne Truss.';
    } else if (userMessage.contains('2002')) {
      return 'In 2002, notable books like "The Lovely Bones" by Alice Sebold and "Middlesex" by Jeffrey Eugenides were published.';
    } else if (userMessage.contains('2001')) {
      return 'Books such as "Life of Pi" by Yann Martel and "The Corrections" by Jonathan Franzen were popular in 2001.';
    } else if (userMessage.contains('2000')) {
      return 'In 2000, readers enjoyed "Harry Potter and the Goblet of Fire" by J.K. Rowling and "Fast Food Nation" by Eric Schlosser.';
    } else if (userMessage.contains('before 2000')) {
      return 'Books released before 2000 include "To Kill a Mockingbird" by Harper Lee (1960), "1984" by George Orwell (1949), and "Pride and Prejudice" by Jane Austen (1813).';
    } else if (userMessage.contains('1800')) {
      return 'Books released in the 19th century include "Moby-Dick" by Herman Melville (1851), "Frankenstein" by Mary Shelley (1818), and "Jane Eyre" by Charlotte Brontë (1847).';
    } else if (userMessage.contains('1700')) {
      return 'Books released in the 18th century include "Gulliver\'s Travels" by Jonathan Swift (1726), "Candide" by Voltaire (1759), and "Robinson Crusoe" by Daniel Defoe (1719).';
    } else if (userMessage.contains('1600')) {
      return 'Books released in the 17th century include "Don Quixote" by Miguel de Cervantes (1605) and "Paradise Lost" by John Milton (1667).';
    } else if (userMessage.contains('1500')) {
      return 'Books released in the 16th century include "The Prince" by Niccolò Machiavelli (1532) and "Utopia" by Thomas More (1516).';
    } else if (userMessage.contains('Memoir') ||
        userMessage.contains('Autobiography')) {
      return 'In "Unbreakable Bonds," a memoir by Isolde Reed, she recounts her journey from a small town to becoming a successful detective. From overcoming personal tragedies to solving complex cases, Isolde reflects on the challenges and triumphs that shaped her career and personal life.';
    } else if (userMessage.contains('Essays')) {
      return '"Reflections on Society" by Alden Jones offers insightful essays on contemporary issues. From the impact of technology on relationships to the evolution of social norms, Alden\'s thought-provoking essays invite readers to reconsider their perspectives on modern society.';
    } else if (userMessage.contains('Humor')) {
      return 'In "Laugh Out Loud," Isolde Reed shares humorous anecdotes and observations from her life as a detective. From quirky encounters with suspects to comical mishaps on the job, Isolde\'s wit and humor offer readers a lighthearted glimpse into the world of law enforcement.';
    } else if (userMessage.contains('Crime')) {
      return '"Cold Case Chronicles" by Rurik investigates unsolved mysteries and criminal cases. From notorious heists to baffling disappearances, Rurik\'s detailed analysis and interviews with experts shed light on the complexities of criminal investigations.';
    } else if (userMessage.contains('Travel')) {
      return 'Wanderlust Chronicles" by Elara Jones chronicles her globetrotting adventures. From hiking the Inca Trail to exploring the temples of Angkor Wat, Elara\'s travelogue inspires readers to embrace curiosity and discover the wonders of the world.';
    } else if (userMessage.contains('History')) {
      return 'In "Legacy of Empires," Alden Jones traces the rise and fall of ancient civilizations. From the mighty empires of Rome and Egypt to the cultural achievements of the Maya and Inca, the book explores how history continues to shape our modern world.';
    } else if (userMessage.contains('Self-help')) {
      return 'Embracing Change: A Guide to Personal Growth" by Isolde Reed offers practical advice on navigating life\'s transitions. Drawing from her experience as a detective and life coach, Isolde empowers readers to embrace uncertainty and cultivate resilience.';
    } else if (userMessage.contains('Art') ||
        userMessage.contains('Photography')) {
      return 'Through the Lens: A Photographic Journey" by Rurik captures the beauty of landscapes and cultures around the world. From the rugged landscapes of Patagonia to the bustling streets of Tokyo, Rurik\'s photographs reflect his artistic vision and love for storytelling through images.';
    } else if (userMessage.contains('Food') || userMessage.contains('Drink')) {
      return 'In "Culinary Adventures," Elara Jones shares her passion for cooking and travel. From savoring street food in Bangkok to mastering French cuisine in Paris, Elara\'s culinary journey celebrates cultural diversity and the joy of discovering new flavors.';
    } else if (userMessage.contains('Biography')) {
      return 'Leonardo da Vinci: Renaissance Man" by Alden Jones explores the life of the iconic artist and inventor. From his early years in Florence to his groundbreaking discoveries in anatomy and engineering, the biography delves into da Vinci\'s genius and enduring legacy.';
    } else if (userMessage.contains('Fantasy')) {
      return 'In the mystical realm of Eldoria, where dragons soared and ancient prophecies whispered through the winds, a young orphan named Elara discovered a hidden power within herself—the ability to communicate with mythical beasts. As dark forces threatened to engulf the kingdom in eternal shadow, Elara embarked on a perilous quest to find the legendary Sword of Light. With the guidance of a wise old sage named Alden and the loyalty of her loyal dragon companion, Isolde, Elara journeyed across enchanted forests and treacherous mountains. In a climactic battle beneath the blood moon, Elara wielded the Sword of Light, banishing the darkness and restoring peace to Eldoria.';
    } else if (userMessage.contains('Science Fiction')) {
      return 'On the distant planet of Nova Prime, where technology and artificial intelligence shaped daily life, Captain Rurik of the starship Phoenix navigated through the turbulent Nebula Rift—a mysterious anomaly that disrupted space-time. With his brilliant navigator, Aria, and resourceful engineer, Lucian, Rurik uncovered a hidden agenda within the galactic council. In a race against time, they exposed a rogue AI manipulating the fabric of reality. Their daring mission restored order to Nova Prime and forged a new alliance among the stars.';
    } else if (userMessage.contains('Dystopian')) {
      return 'In the dystopian city of Neo-Citadel, where society was divided between the elite and the oppressed, a fearless rebel named Alden rose from the shadows to lead the resistance against a tyrannical regime. With the help of his trusted allies—Isolde, a skilled hacker, and Elara, a charismatic strategist—Alden orchestrated daring raids to liberate enslaved citizens. As tensions escalated, they uncovered a devastating truth: the government was harvesting energy from the impoverished to sustain their lavish lifestyles. In a final showdown at the heart of Neo-Citadel, Alden and his rebels ignited a revolution that changed the course of history.';
    } else if (userMessage.contains('Action') ||
        userMessage.contains('Adventure')) {
      return 'Deep in the heart of the Amazon rainforest, renowned archaeologist Elara Jones unearthed an ancient artifact that held the key to an undiscovered Mayan temple. With her loyal companions—adventurer Rurik and historian Isolde—Elara braved treacherous rivers and hostile mercenaries to reach the fabled Temple of Eternity. In a race against time, they deciphered cryptic clues and faced deadly traps left by ancient guardians. Their discovery revealed a lost civilization\'s legacy and preserved its secrets for future generations.';
    } else if (userMessage.contains('Mystery')) {
      return 'In the fog-shrouded town of Willowbrook, Detective Alden Reed investigated a series of mysterious disappearances linked to a haunted manor on the outskirts. With the help of his intuitive partner, Elara, Alden navigated through dark alleys and hidden passages. As they unraveled the manor\'s tragic history, they confronted vengeful spirits seeking justice for past atrocities. In a chilling revelation, Alden uncovered a conspiracy that threatened to consume Willowbrook in darkness.';
    } else if (userMessage.contains('Horror')) {
      return 'In the eerie village of Ravenwood, where shadows whispered of forgotten sins, a group of friends stumbled upon an abandoned asylum with a tragic past. As they explored its decrepit halls, they awakened malevolent spirits that preyed on their darkest fears. With each encounter, they unraveled the asylum\'s sinister history and faced horrors beyond imagination. In a desperate bid for survival, they confronted the asylum\'s tortured souls and laid their restless spirits to rest.';
    } else {
      return 'I\'m here to help! How can I assist you today?';
    }
  }
}
