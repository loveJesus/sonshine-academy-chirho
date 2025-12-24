-- For God so loved the world that he gave his only begotten Son,
-- that whosoever believeth in him should not perish, but have everlasting life.
-- John 3:16 (KJV)

-- Quest Import Script - Generated 2025-12-23T17:54:43.063Z
-- Total quests: 131

BEGIN TRANSACTION;

-- Quest 1: The First Word
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'mSsKqZX-hRfrJRKhUIs24',
  'The First Word',
  'In programming, a function is a reusable block of code that performs a specific task. This is reminiscent of how God spoke the world into existence with His Word; our first task is to make our program ''speak'' by returning a specific sentence.

A sentence or any text in programming is called a string, and we wrap it in quotes (`" "`). The `return` keyword tells the function what value to send back when it''s called.',
  'Your task is to create a function that will serve as the foundational Word of our program.

Follow these steps:
 - Write a function named `getFirstWordChirho`.
 - The function should not accept any arguments (its parentheses should be empty).
 - Inside the function, `return` the string `"In the beginning was the Word."`. This act of returning is how a function produces a result that can be used elsewhere.',
  'function getFirstWordChirho() {
  // Your code here
}',
  'function getFirstWordChirho() {
  return "In the beginning was the Word.";
}',
  'John 1:1 - In the beginning was the Word, and the Word was with God, and the Word was God.',
  'beginner',
  'javascript',
  10,
  3,
  0,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '7zKd966395Qb-iANqt0Uy',
  'mSsKqZX-hRfrJRKhUIs24',
  'Should return the correct foundational string',
  'assert.strictEqual(getFirstWordChirho(), ''In the beginning was the Word.'');',
  1,
  0
);

-- Quest 2: Let There Be Light
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'rlY4KUkcAhib0G4tGw2DR',
  'Let There Be Light',
  'A variable is like a container with a label that holds a piece of information. When God created light, He did so by saying ''Let there be light.''

In our code, we create a container for a string by entering `let lightChirho = "there be light"`. The `let` keyword brings a variable into existence in our program''s memory, and we can then put data inside it.',
  'God''s command brought forth light. Your instruction is to bring forth a variable that holds this command.

Follow these steps:
 - Write a function named `declareLightChirho`.
 - Inside the function, declare a variable named `lightChirho` using the `let` keyword.
 - Assign this variable the string value `"there be light"`.
 - `return` the `lightChirho` variable.',
  'function declareLightChirho() {
  // Your code here
}',
  'function declareLightChirho() {
  let lightChirho = "there be light";
  return lightChirho;
}',
  'Genesis 1:3 - And God said, Let there be light: and there was light.',
  'beginner',
  'javascript',
  10,
  3,
  1,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '_1_wfgFYXKpc-q9J0nwKU',
  'rlY4KUkcAhib0G4tGw2DR',
  'Should declare and return the light variable',
  'assert.strictEqual(declareLightChirho(), ''there be light'');',
  1,
  0
);

-- Quest 3: A New Heart
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'jtQwgayRjOg-iJxynEq4F',
  'A New Heart',
  'Variables declared with `let` are changeable. This is reminiscent of how God transforms us, giving us a new heart. We can update a variable''s value after it has been created.

This process is called reassignment, and it''s a fundamental way to track changes in a program, modeling the change from a heart of stone to a heart of flesh.',
  'Your mission is to model the transformation that God promises. You will create a variable and then change its contents, showing that what once was stone can be made new.

Follow these steps:
 - Write a function named `getNewHeartChirho`.
 - Inside the function, declare a variable `heartChirho` and initialize it with the string value `''stone''`.
 - On a new line, reassign the value of `heartChirho` to be `''flesh''`.
 - `return` the `heartChirho` variable to show its final, transformed state.',
  'function getNewHeartChirho() {
  // Your code here
}',
  'function getNewHeartChirho() {
  let heartChirho = ''stone'';
  heartChirho = ''flesh'';
  return heartChirho;
}',
  'Ezekiel 36:26 - A new heart also will I give you, and a new spirit will I put within you: and I will take away the stony heart out of your flesh, and I will give you an heart of flesh.',
  'beginner',
  'javascript',
  10,
  3,
  2,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'lLbpdGnX2mxY4izfVjTPn',
  'jtQwgayRjOg-iJxynEq4F',
  'Should reassign the heart from stone to flesh',
  'assert.strictEqual(getNewHeartChirho(), ''flesh'');',
  1,
  0
);

-- Quest 4: Counting the People
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'MpJ8qSn195wEUF0bROnUP',
  'Counting the People',
  'Programs work with more than just text. The number data type is for any numerical value, like the number of tribes of Israel, ages, or measurements.

Unlike strings, numbers are not wrapped in quotes. They are fundamental for any kind of calculation, counting, or measurement, reflecting the order and structure God built into creation.',
  'In the Bible, numbers are significant. The 12 tribes of Israel and the 12 apostles are foundational to God''s people. Your task is to represent this significant number.

Follow these steps:
 - Write a function named `countThePeopleChirho`.
 - The function should `return` the number `12`.',
  'function countThePeopleChirho() {
  // Your code here
}',
  'function countThePeopleChirho() {
  return 12;
}',
  'Numbers 1:2 - Take ye the sum of all the congregation of the children of Israel, after their families, by the house of their fathers, with the number of their names, every male by their polls;',
  'beginner',
  'javascript',
  10,
  3,
  3,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ucZJcG-MmHxUjw8CxA5de',
  'MpJ8qSn195wEUF0bROnUP',
  'Should return the number 12',
  'assert.strictEqual(countThePeopleChirho(), 12);',
  1,
  0
);

-- Quest 5: True or False Witness
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'BI2f3E5Zy-smwJIYdS_sU',
  'True or False Witness',
  'God''s law is clear about the importance of truth. In programming, we also need to know if something is simply true or false. This is handled by the boolean data type, which has only two possible values: `true` or `false`.

Booleans are the foundation of all logic and decision-making in code, allowing our programs to act with integrity based on clear conditions.',
  'The ninth commandment instructs us not to bear false witness. Your function must represent the truth.

Follow these steps:
 - Write a function named `isWitnessTrueChirho`.
 - The function should `return` the boolean value `true`.',
  'function isWitnessTrueChirho() {
  // Your code here
}',
  'function isWitnessTrueChirho() {
  return true;
}',
  'Exodus 20:16 - Thou shalt not bear false witness against thy neighbour.',
  'beginner',
  'javascript',
  10,
  3,
  4,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'fllziPkP2ZBYenLLXSIZQ',
  'BI2f3E5Zy-smwJIYdS_sU',
  'Should return the boolean true',
  'assert.strictEqual(isWitnessTrueChirho(), true);',
  1,
  0
);

-- Quest 6: What Is Man?
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'zBsd-TVUZFbtHbGREyW_1',
  'What Is Man?',
  'The Psalmist asks, ''What is man?'' We can ask our program a similar question: what kind of data is this? The `typeof` operator inspects a value and returns a string telling us its type (e.g., `"string"`, `"number"`).

We can make our functions more powerful by letting them accept input, called parameters. Parameters act as placeholder variables, allowing a single function to be wise and discerning about many different kinds of data.',
  'To grow in wisdom, we must be able to discern the nature of things. This function will be your tool for discernment, able to identify the type of any data given to it.

Follow these steps:
 - Write a function named `whatIsItChirho` that accepts one parameter named `inputChirho`.
 - Inside the function, use the `typeof` operator on the `inputChirho`.
 - `return` the result of the `typeof` operation.',
  'function whatIsItChirho(inputChirho) {
  // Your code here
}',
  'function whatIsItChirho(inputChirho) {
  return typeof inputChirho;
}',
  'Psalm 8:4 - What is man, that thou art mindful of him? and the son of man, that thou visitest him?',
  'beginner',
  'javascript',
  10,
  3,
  5,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '2b6lVouM0tN6TN5mFOcAD',
  'zBsd-TVUZFbtHbGREyW_1',
  'Should correctly identify a string',
  'assert.strictEqual(whatIsItChirho(''hello''), ''string'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'P7kzihqMoYty-SuHWaX3H',
  'zBsd-TVUZFbtHbGREyW_1',
  'Should correctly identify a number',
  'assert.strictEqual(whatIsItChirho(12), ''number'');',
  0,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '--3rHkDHzkPrx2r15FaPO',
  'zBsd-TVUZFbtHbGREyW_1',
  'Should correctly identify a boolean',
  'assert.strictEqual(whatIsItChirho(true), ''boolean'');',
  0,
  2
);

-- Quest 7: Feeding the Multitude
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'kgRXYrq2wgWjF9S-pDccP',
  'Feeding the Multitude',
  'With just a few loaves and fish, Jesus performed a miracle of abundance. In code, we can also perform calculations that create a larger result from smaller inputs. However, we must be careful about the order of operations.

By default, multiplication happens before addition. To control this and ensure addition happens first, we can wrap parts of our calculation in parentheses `( )`. The code inside the parentheses will always run first, ensuring our stewardship of the calculation is correct.',
  'Your task is to model the miracle of feeding the multitude, where a small offering is blessed and multiplied.

Follow these steps:
 - Write a function named `feedMultitudeChirho` that accepts two parameters: `loavesChirho` and `fishChirho`.
 - `return` the result of adding `loavesChirho` and `fishChirho` together first, and then multiplying that sum by `1000`.',
  'function feedMultitudeChirho(loavesChirho, fishChirho) {
  // Your code here
}',
  'function feedMultitudeChirho(loavesChirho, fishChirho) {
  return (loavesChirho + fishChirho) * 1000;
}',
  'Mark 6:41 - And when he had taken the five loaves and the two fishes, he looked up to heaven, and blessed, and brake the loaves, and gave them to his disciples to set before them; and the two fishes divided he among them all.',
  'beginner',
  'javascript',
  10,
  3,
  6,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'CaGbTZXCMD_SbxP-jziIA',
  'kgRXYrq2wgWjF9S-pDccP',
  'Should correctly calculate for 5 loaves and 2 fish',
  'assert.strictEqual(feedMultitudeChirho(5, 2), 7000);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'HcEmh5VLcHqO2X9iNfMXn',
  'kgRXYrq2wgWjF9S-pDccP',
  'Should correctly calculate for 10 loaves and 5 fish',
  'assert.strictEqual(feedMultitudeChirho(10, 5), 15000);',
  0,
  1
);

-- Quest 8: One in Christ
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '7flRMMST2TubkVNf7j2OY',
  'One in Christ',
  'In Christ, worldly distinctions fall away, and believers are made one. A core task in programming is also comparing values to see if they are the same. The strict equality operator (`===`) is the best tool for this, as it judges rightly, checking if two values are identical in both value and type.

There is also a loose equality operator (`==`), which can be deceiving. For example, `23 == "23"` is `true` because it ignores the type difference. However, `23 === "23"` is `false` because one is a number and one is a string. To ensure our code acts with integrity, we will use `===`.',
  'Your function must determine if two things are truly one, without being deceived by mere appearances. It must check for true equality in both substance and form.

Follow these steps:
 - Write a function named `areTheyOneChirho` that accepts two parameters: `valueAChirho` and `valueBChirho`.
 - `return` the result of checking if `valueAChirho` is **strictly equal** to `valueBChirho`.',
  'function areTheyOneChirho(valueAChirho, valueBChirho) {
  // Your code here
}',
  'function areTheyOneChirho(valueAChirho, valueBChirho) {
  return valueAChirho === valueBChirho;
}',
  'Galatians 3:28 - There is neither Jew nor Greek, there is neither bond nor free, there is neither male nor female: for ye are all one in Christ Jesus.',
  'beginner',
  'javascript',
  10,
  3,
  7,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'v_U1BgKKw-UYI6KQtkj9A',
  '7flRMMST2TubkVNf7j2OY',
  'Should return true for two identical numbers',
  'assert.strictEqual(areTheyOneChirho(7, 7), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '9k6jMHzucK8HKBDStrDLi',
  '7flRMMST2TubkVNf7j2OY',
  'Should return false for a number and a string of the same value',
  'assert.strictEqual(areTheyOneChirho(23, ''23''), false);',
  1,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Xv26A1XIkPlm3I3JjLjIc',
  '7flRMMST2TubkVNf7j2OY',
  'Should return false for two different strings',
  'assert.strictEqual(areTheyOneChirho(''apple'', ''orange''), false);',
  0,
  2
);

-- Quest 9: Equal Weights and Measures
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'KqWTf6df7ArM3pzwxa79r',
  'Equal Weights and Measures',
  'The Lord requires honesty in our dealings, which includes using accurate measurements. In JavaScript, some data types have built-in information attached to them called properties.

Strings have a `.length` property that tells us exactly how many characters they contain, providing an accurate, consistent measurement. This reflects the principle of having a just and reliable standard.',
  'Your function must act as a just scale, accurately measuring the length of any word given to it.

Follow these steps:
 - Write a function named `measureWeightChirho` that accepts one parameter: `wordChirho`.
 - `return` the length of the `wordChirho` string by accessing its `.length` property.',
  'function measureWeightChirho(wordChirho) {
  // Your code here
}',
  'function measureWeightChirho(wordChirho) {
  return wordChirho.length;
}',
  'Proverbs 11:1 - A false balance is abomination to the LORD: but a just weight is his delight.',
  'beginner',
  'javascript',
  10,
  3,
  8,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'kDPZybFiVSMKZm4Y834jF',
  'KqWTf6df7ArM3pzwxa79r',
  'Should return the correct length of ''Faith''',
  'assert.strictEqual(measureWeightChirho(''Faith''), 5);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ZH_hBxmYx2boDAxfQJUws',
  'KqWTf6df7ArM3pzwxa79r',
  'Should return 0 for an empty string',
  'assert.strictEqual(measureWeightChirho(''''), 0);',
  0,
  1
);

-- Quest 10: Gifts of the Spirit
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'k1lNjAQJ0Qql_B60vFlC5',
  'Gifts of the Spirit',
  'The Holy Spirit gives many gifts, and they are described in scripture as a list. In programming, an array is an ordered list of values, like a list of spiritual gifts. It''s a single variable that can hold multiple items.

We create arrays using square brackets `[ ]`, with each item separated by a comma. Arrays are incredibly useful for organizing and managing collections of data, just as the church is a collection of members with diverse gifts.',
  'Your task is to create a list representing the first and foremost gifts of the Spirit.

Follow these steps:
 - Write a function named `getFirstGiftsChirho`.
 - Inside the function, create an array that contains three string values: `"love"`, `"joy"`, and `"peace"`.
 - `return` this array.',
  'function getFirstGiftsChirho() {
  // Your code here
}',
  'function getFirstGiftsChirho() {
  return ["love", "joy", "peace"];
}',
  'Galatians 5:22-23 - But the fruit of the Spirit is love, joy, peace, longsuffering, gentleness, goodness, faith, Meekness, temperance: against such there is no law.',
  'beginner',
  'javascript',
  10,
  3,
  9,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'siLjKN-Jfac08oPWefpQc',
  'k1lNjAQJ0Qql_B60vFlC5',
  'Should return an array with three specific gifts',
  'const gifts = getFirstGiftsChirho();
assert.strictEqual(Array.isArray(gifts), true);
assert.deepStrictEqual(gifts, [''love'', ''joy'', ''peace'']);',
  1,
  0
);

-- Quest 11: The First Disciple
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '945gYZj4DEhRDQALxv78D',
  'The First Disciple',
  'When Jesus called his disciples, he called them one by one, each with a place and an order. To get an item out of an array, we use its position, which is called an index.

A crucial detail is that indexing starts at zero, not one! So, the first item is at index `[0]`, the second at `[1]`, and so on. This is how we can retrieve specific pieces of data from a list, like identifying the first disciple to be called.',
  'Given a list of disciples, your function must identify the very first one according to programming''s order.

Follow these steps:
 - Write a function named `getFirstDiscipleChirho` that accepts one parameter: `disciplesChirho` (which will be an array).
 - `return` the very first element from the `disciplesChirho` array using index `[0]`.',
  'function getFirstDiscipleChirho(disciplesChirho) {
  // Your code here
}',
  'function getFirstDiscipleChirho(disciplesChirho) {
  return disciplesChirho[0];
}',
  'John 1:41 - He first findeth his own brother Simon, and saith unto him, We have found the Messias, which is, being interpreted, the Christ.',
  'beginner',
  'javascript',
  10,
  3,
  10,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xdg51k6EggxbkA_juu_Hb',
  '945gYZj4DEhRDQALxv78D',
  'Should get ''Andrew'' from a list of disciples',
  'assert.strictEqual(getFirstDiscipleChirho([''Andrew'', ''Peter'', ''John'']), ''Andrew'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'pkCFFzUxuZt6MEPU-jRFN',
  '945gYZj4DEhRDQALxv78D',
  'Should get the first number from a list of numbers',
  'assert.strictEqual(getFirstDiscipleChirho([12, 5, 8]), 12);',
  0,
  1
);

-- Quest 12: Faith and Deeds
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '_OIfAk47mTjpq9JEGDFX2',
  'Faith and Deeds',
  'Scripture teaches that true faith is accompanied by deeds; the two are inseparable for a living faith. In programming, we often need to check if multiple conditions are true at the same time.

The logical AND operator (`&&`) takes two boolean values and returns `true` only if both of them are true. It''s how we model requirements that depend on each other, reflecting how a living faith requires both belief and action.',
  'Your function will test whether a faith is living by checking for the presence of both faith and deeds.

Follow these steps:
 - Write a function named `faithAndDeedsChirho` that accepts two boolean parameters: `hasFaithChirho` and `hasDeedsChirho`.
 - `return` `true` only if both `hasFaithChirho` AND `hasDeedsChirho` are true.',
  'function faithAndDeedsChirho(hasFaithChirho, hasDeedsChirho) {
  // Your code here
}',
  'function faithAndDeedsChirho(hasFaithChirho, hasDeedsChirho) {
  return hasFaithChirho && hasDeedsChirho;
}',
  'James 2:26 - For as the body without the spirit is dead, so faith without works is dead also.',
  'beginner',
  'javascript',
  10,
  3,
  11,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xWgClrjiJeIa-SIMVAtka',
  '_OIfAk47mTjpq9JEGDFX2',
  'Should be true when both faith and deeds are true',
  'assert.strictEqual(faithAndDeedsChirho(true, true), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'jBdkaTKrHqmxZNeS0R6VR',
  '_OIfAk47mTjpq9JEGDFX2',
  'Should be false when only faith is true',
  'assert.strictEqual(faithAndDeedsChirho(true, false), false);',
  1,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'JG4SFo8Yd9gSY7DXxNEGj',
  '_OIfAk47mTjpq9JEGDFX2',
  'Should be false when only deeds are true',
  'assert.strictEqual(faithAndDeedsChirho(false, true), false);',
  0,
  2
);

-- Quest 13: A Living Hope
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'DvX5toPntEPnNr1WmgbHW',
  'A Living Hope',
  'Our hope in Christ is personal and living. When we share this hope, we often do so by name. In programming, combining text (strings) and variables can be clumsy with the `+` sign. A modern and cleaner way is to use template literals.

You create them with backticks (`` ` ``). Inside a template literal, you can embed any variable directly by wrapping it in `${ }`. It''s a powerful way to build dynamic, readable strings that can carry a personal message.',
  'Your task is to craft a personal message of hope. The function will take a name and embed it into a string, making the good news personal.

Follow these steps:
 - Write a function named `createHopeMessageChirho` that accepts one parameter: `recipientNameChirho`.
 - Use a template literal to construct a message.
 - `return` the string `` `There is a living hope for ${recipientNameChirho}.` ``.',
  'function createHopeMessageChirho(recipientNameChirho) {
  // Your code here
}',
  'function createHopeMessageChirho(recipientNameChirho) {
  return `There is a living hope for ${recipientNameChirho}.`;
}',
  '1 Peter 1:3 - Blessed be the God and Father of our Lord Jesus Christ, which according to his abundant mercy hath begotten us again unto a lively hope by the resurrection of Jesus Christ from the dead,',
  'beginner',
  'javascript',
  10,
  3,
  12,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'GcA3UhDruY4i4bktpOgz5',
  'DvX5toPntEPnNr1WmgbHW',
  'Should create a message for ''world''',
  'assert.strictEqual(createHopeMessageChirho(''world''), ''There is a living hope for world.'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'drOWVP56ak5InUh8WPjLx',
  'DvX5toPntEPnNr1WmgbHW',
  'Should create a message for ''you''',
  'assert.strictEqual(createHopeMessageChirho(''you''), ''There is a living hope for you.'');',
  0,
  1
);

-- Quest 14: The Wise and Foolish Builders
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'VBlzbHd2lbZB-yaXftp-N',
  'The Wise and Foolish Builders',
  'Jesus teaches that the wise build on a firm foundation. The most powerful tool in programming is the ability to make decisions based on the foundation of a condition. An `if` statement checks if a condition is `true`.

If it is, one block of code runs. The `else` statement provides an alternative block of code to run if the condition is `false`. This allows our program to respond differently to different situations, reflecting how a wise builder''s outcome is different from a foolish one''s.',
  'You must write a function that determines the wisdom of a builder based on their choice of foundation. The function must make a choice and return one of two outcomes.

Follow these steps:
 - Write a function named `buildHouseChirho` that accepts one parameter: `foundationChirho`.
 - Inside the function, use an `if` statement to check if `foundationChirho` is strictly equal to the string `"rock"`.
 - If it is, `return` the string `"wise"`.
 - Otherwise (using an `else` statement), `return` the string `"foolish"`.',
  'function buildHouseChirho(foundationChirho) {
  // Your code here
}',
  'function buildHouseChirho(foundationChirho) {
  if (foundationChirho === ''rock'') {
    return ''wise'';
  } else {
    return ''foolish'';
  }
}',
  'Matthew 7:24 - Therefore whosoever heareth these sayings of mine, and doeth them, I will liken him unto a wise man, which built his house upon a rock:',
  'beginner',
  'javascript',
  10,
  3,
  13,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'kt2bWH1LLaKFoZ5AgHkIK',
  'VBlzbHd2lbZB-yaXftp-N',
  'Should return ''wise'' for a rock foundation',
  'assert.strictEqual(buildHouseChirho(''rock''), ''wise'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '4Z4KfO7WA7dUvZBx9-dMP',
  'VBlzbHd2lbZB-yaXftp-N',
  'Should return ''foolish'' for a sand foundation',
  'assert.strictEqual(buildHouseChirho(''sand''), ''foolish'');',
  1,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'BNobTLvsizidIYAlwHd0r',
  'VBlzbHd2lbZB-yaXftp-N',
  'Should return ''foolish'' for any other foundation',
  'assert.strictEqual(buildHouseChirho(''dirt''), ''foolish'');',
  0,
  2
);

-- Quest 15: Hot, Cold, or Lukewarm
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'trP3D70iUKVoHcpJvcDFF',
  'Hot, Cold, or Lukewarm',
  'Sometimes a decision isn''t a simple `if`/`else` choice. We may need to check a series of conditions in order. The `if...else if...else` structure lets us do this, allowing for more nuanced and precise logic in our programs.

Remember that the structure of an `if` statement requires the condition you''re testing to be inside **parentheses `( )`**, and the code you want to execute to be inside **curly braces `{ }`**. For example:
```javascript
if (x > 10) {
  // do something
}
```
This allows you to run multiple lines of code for a single condition.',
  'Your function must determine a spiritual state based on a given temperature, judging rightly between the three possibilities.

Follow these steps:
 - Write a function named `getTemperatureStateChirho` that accepts one parameter: `temperatureChirho`.
 - If `temperatureChirho` is greater than `90`, `return` the string `"hot"`.
 - Otherwise, if `temperatureChirho` is less than `50`, `return` the string `"cold"`.
 - For any other temperature, `return` the string `"lukewarm"`.',
  'function getTemperatureStateChirho(temperatureChirho) {
  // Your code here
}',
  'function getTemperatureStateChirho(temperatureChirho) {
  if (temperatureChirho > 90) {
    return ''hot'';
  } else if (temperatureChirho < 50) {
    return ''cold'';
  } else {
    return ''lukewarm'';
  }
}',
  'Revelation 3:15-16 - I know thy works, that thou art neither cold nor hot: I would thou wert cold or hot. So then because thou art lukewarm, and neither cold nor hot, I will spue thee out of my mouth.',
  'beginner',
  'javascript',
  10,
  3,
  14,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'cQLDUycgfeLEauE06OYLM',
  'trP3D70iUKVoHcpJvcDFF',
  'Should return ''hot'' for temperatures above 90',
  'assert.strictEqual(getTemperatureStateChirho(100), ''hot'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'HrKSCY_SDqq8sh7PrLvP8',
  'trP3D70iUKVoHcpJvcDFF',
  'Should return ''cold'' for temperatures below 50',
  'assert.strictEqual(getTemperatureStateChirho(40), ''cold'');',
  1,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'dhHqR0uKAD_C2PPat3Zgn',
  'trP3D70iUKVoHcpJvcDFF',
  'Should return ''lukewarm'' for temperatures between 50 and 90',
  'assert.strictEqual(getTemperatureStateChirho(72), ''lukewarm'');',
  0,
  2
);

-- Quest 16: The Two Ways
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'h5VDwkd1Vou8caiHMQ5DY',
  'The Two Ways',
  'This quest introduces a core concept: expressions vs. statements.

An **expression** is a piece of code that *evaluates* to a single value. Think of it like a question that has an answer. `hasInvitationChirho || knowsPasswordChirho` is an expression whose value will be either `true` or `false`.

A **statement** is a command that performs an action, like `let x = 15;` or an `if/else` block. Statements themselves don''t have a value you can capture. Because the expression itself evaluates to the exact boolean answer we need, we can return the result of the expression directly. This is a more concise and powerful way to write your code.',
  'Your function must determine if there is a valid way to enter a gate. The path is open if at least one of two conditions is met.

Follow these steps:
 - Write a function named `canEnterGateChirho` that accepts two boolean parameters: `hasInvitationChirho` and `knowsPasswordChirho`.
 - Instead of using an `if` statement, `return` the direct result of evaluating if `hasInvitationChirho` is true **OR (`||`)** `knowsPasswordChirho` is true.',
  'function canEnterGateChirho(hasInvitationChirho, knowsPasswordChirho) {
  // Your code here
}',
  'function canEnterGateChirho(hasInvitationChirho, knowsPasswordChirho) {
  return hasInvitationChirho || knowsPasswordChirho;
}',
  'Matthew 7:13-14 - Enter ye in at the strait gate: for wide is the gate, and broad is the way, that leadeth to destruction... Because strait is the gate, and narrow is the way, which leadeth unto life.',
  'beginner',
  'javascript',
  10,
  3,
  15,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'D9qtYiE_PH5DavTPU-87O',
  'h5VDwkd1Vou8caiHMQ5DY',
  'Should return true if both are true',
  'assert.strictEqual(canEnterGateChirho(true, true), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '5DVxoKxCwWsO-sUJ9ouq0',
  'h5VDwkd1Vou8caiHMQ5DY',
  'Should return true if one is true',
  'assert.strictEqual(canEnterGateChirho(false, true), true);',
  1,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'gt9sghRanqQLYU2SkhOuI',
  'h5VDwkd1Vou8caiHMQ5DY',
  'Should return false if both are false',
  'assert.strictEqual(canEnterGateChirho(false, false), false);',
  0,
  2
);

-- Quest 17: Let Your 'No' be 'No'
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'PR6zlQF62pLepesJQlcRA',
  'Let Your ''No'' be ''No''',
  'The logical NOT operator (`!`) is simple but powerful: it flips a boolean value. `!true` becomes `false`, and `!false` becomes `true`. This is an **expression** that evaluates directly to the opposite boolean value.

Because it''s an expression, you can return its result immediately without needing a more complex `if/else` statement.',
  'Let your function''s communication be clear and direct, representing the opposite state of the door.

Follow these steps:
 - Write a function named `isDoorClosedChirho` that accepts one boolean parameter: `isDoorOpenChirho`.
 - Without using an `if` statement, `return` the direct negation of the `isDoorOpenChirho` parameter using the `!` operator.',
  'function isDoorClosedChirho(isDoorOpenChirho) {
  // Your code here
}',
  'function isDoorClosedChirho(isDoorOpenChirho) {
  return !isDoorOpenChirho;
}',
  'Matthew 5:37 - But let your communication be, Yea, yea; Nay, nay: for whatsoever is more than these cometh of evil.',
  'beginner',
  'javascript',
  10,
  3,
  16,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '02HKw8A8JQGIMbvLMB_YJ',
  'PR6zlQF62pLepesJQlcRA',
  'Should return false if the door is open (true)',
  'assert.strictEqual(isDoorClosedChirho(true), false);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '8r6IBKHSXiEvKYEwnUGyL',
  'PR6zlQF62pLepesJQlcRA',
  'Should return true if the door is not open (false)',
  'assert.strictEqual(isDoorClosedChirho(false), true);',
  0,
  1
);

-- Quest 18: The Empty Tomb
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'qNlQuomod6S8KJlrQPDFw',
  'The Empty Tomb',
  'In programming, `null` represents the intentional absence of a value, while `undefined` means a value was never assigned. We often need to check if a variable is empty before we try to use it.

This is a common and important practice to prevent errors, similar to checking the tomb to confirm the resurrection.',
  'Your function must faithfully report whether the tomb is empty by checking for `null` or `undefined` values.

Follow these steps:
 - Write a function named `isTombEmptyChirho` that accepts one parameter: `tombContentsChirho`.
 - The function should `return` `true` if `tombContentsChirho` is `null` or `undefined`.
 - For any other value, it should `return` `false`.
 - Remember to use the strict equality operator (`===`) for your comparisons.',
  'function isTombEmptyChirho(tombContentsChirho) {
  // Your code here
}',
  'function isTombEmptyChirho(tombContentsChirho) {
  return tombContentsChirho === null || tombContentsChirho === undefined;
}',
  'Luke 24:3 - And they entered in, and found not the body of the Lord Jesus.',
  'beginner',
  'javascript',
  10,
  3,
  17,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '5_Fw8b5wtn5GxwYvj0pOW',
  'qNlQuomod6S8KJlrQPDFw',
  'Should return true for null',
  'assert.strictEqual(isTombEmptyChirho(null), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '1ZATuVcaD5nAydp1caKmo',
  'qNlQuomod6S8KJlrQPDFw',
  'Should return true for undefined',
  'assert.strictEqual(isTombEmptyChirho(undefined), true);',
  1,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'L3CKtJ048BYbrAdna9-RN',
  'qNlQuomod6S8KJlrQPDFw',
  'Should return false for a string',
  'assert.strictEqual(isTombEmptyChirho(''body''), false);',
  0,
  2
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'fSr8OqMZoJ6_47ei_VDau',
  'qNlQuomod6S8KJlrQPDFw',
  'Should return false for the number 0',
  'assert.strictEqual(isTombEmptyChirho(0), false);',
  0,
  3
);

-- Quest 19: The Last Will Be First
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'qBs3qgiARyBh4QeYh9k4-',
  'The Last Will Be First',
  'We know how to get the first element of an array with index `[0]`. To get the last element, we need a clever trick. **Array indices always start at 0**. This means an array with 3 items (a length of 3) has indices 0, 1, and 2. Notice that the last index (2) is exactly one less than the length (3).

This is always true! So, we can always find the last element at index `array.length - 1`.',
  'Your function will demonstrate the principle that the last shall be first by correctly identifying and returning the final item in any given list.

Follow these steps:
 - Write a function named `getLastShallBeFirstChirho` that accepts one parameter: `itemsChirho` (an array).
 - The function should `return` the last element from the `itemsChirho` array.',
  'function getLastShallBeFirstChirho(itemsChirho) {
  // Your code here
}',
  'function getLastShallBeFirstChirho(itemsChirho) {
  return itemsChirho[itemsChirho.length - 1];
}',
  'Matthew 20:16 - So the last shall be first, and the first last: for many be called, but few chosen.',
  'beginner',
  'javascript',
  10,
  3,
  18,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'uCIiPI-orfYH1AEZc1y_4',
  'qBs3qgiARyBh4QeYh9k4-',
  'Should get the last item from a string array',
  'assert.strictEqual(getLastShallBeFirstChirho([''first'', ''middle'', ''last'']), ''last'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'zSbd-MQObP4vwv92r4VJN',
  'qBs3qgiARyBh4QeYh9k4-',
  'Should get the last item from a number array',
  'assert.strictEqual(getLastShallBeFirstChirho([10, 20, 30, 40]), 40);',
  0,
  1
);

-- Quest 20: A New Apostle
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'Wiorelu_jw8rARxEzsODd',
  'A New Apostle',
  'Arrays are dynamic; they can grow and shrink. To add a new member to the end of the list, we use the `.push()` method. This is a built-in function for arrays that takes a value and appends it, increasing the array''s length by one.

It''s how we add to a collection, numbering a new member among the existing ones.',
  'Just as Matthias was added to the apostles, your function must add a new name to an existing group.

Follow these steps:
 - Write a function named `addNewApostleChirho` that accepts two parameters: `apostlesChirho` (an array) and `newApostleNameChirho` (a string).
 - Inside the function, use the `.push()` method to add `newApostleNameChirho` to the end of the `apostlesChirho` array.
 - The function should `return` the newly modified `apostlesChirho` array.',
  'function addNewApostleChirho(apostlesChirho, newApostleNameChirho) {
  // Your code here
}',
  'function addNewApostleChirho(apostlesChirho, newApostleNameChirho) {
  apostlesChirho.push(newApostleNameChirho);
  return apostlesChirho;
}',
  'Acts 1:26 - And they gave forth their lots; and the lot fell upon Matthias; and he was numbered with the eleven apostles.',
  'beginner',
  'javascript',
  10,
  3,
  19,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Y2iht3bR6CwJNI-xoETZV',
  'Wiorelu_jw8rARxEzsODd',
  'Should add ''Matthias'' to a list of two apostles',
  'const apostles = [''Peter'', ''John''];
const result = addNewApostleChirho(apostles, ''Matthias'');
assert.deepStrictEqual(result, [''Peter'', ''John'', ''Matthias'']);',
  1,
  0
);

-- Quest 21: Peter's Denial
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ws2j1CDgLg2h_Cvb3D71I',
  'Peter''s Denial',
  'Just as we can add items to an array, we can also remove them. The `.pop()` method removes the very last item from an array and shortens it.

It''s a way of retracting the last entry in a list.',
  'Your function will model a retraction by removing the last disciple from a list.

Follow these steps:
 - Write a function named `removeLastDiscipleChirho` that accepts one parameter: `disciplesChirho` (an array).
 - Inside the function, use the `.pop()` method to remove the last disciple.
 - The function should `return` the modified `disciplesChirho` array.',
  'function removeLastDiscipleChirho(disciplesChirho) {
  // Your code here
}',
  'function removeLastDiscipleChirho(disciplesChirho) {
  disciplesChirho.pop();
  return disciplesChirho;
}',
  'Matthew 26:75 - And Peter remembered the word of Jesus, which said unto him, Before the cock crow, thou shalt deny me thrice. And he went out, and wept bitterly.',
  'beginner',
  'javascript',
  10,
  3,
  20,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xNHXaIYHscvieJe3cJZdM',
  'ws2j1CDgLg2h_Cvb3D71I',
  'Should remove the last disciple from the list',
  'const disciples = [''Peter'', ''James'', ''John''];
const result = removeLastDiscipleChirho(disciples);
assert.deepStrictEqual(result, [''Peter'', ''James'']);',
  1,
  0
);

-- Quest 22: The Prodigal Son Returns
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '5N-wj2YSBxqamnl_V74_d',
  'The Prodigal Son Returns',
  'While `.push()` adds to the end, sometimes we need to add an item to the very beginning of a list, giving it the first position. The `.unshift()` method does exactly this.

It''s a way to welcome someone to the front of the line, giving them a place of honor.',
  'Your function will welcome the prodigal son home by placing him at the very beginning of the family list.

Follow these steps:
 - Write a function named `welcomeSonHomeChirho` that accepts two parameters: `familyChirho` (an array) and `sonNameChirho` (a string).
 - Use the `.unshift()` method to add `sonNameChirho` to the beginning of the `familyChirho` array.
 - The function should `return` the modified `familyChirho` array.',
  'function welcomeSonHomeChirho(familyChirho, sonNameChirho) {
  // Your code here
}',
  'function welcomeSonHomeChirho(familyChirho, sonNameChirho) {
  familyChirho.unshift(sonNameChirho);
  return familyChirho;
}',
  'Luke 15:20 - And he arose, and came to his father. But when he was yet a great way off, his father saw him, and had compassion, and ran, and fell on his neck, and kissed him.',
  'beginner',
  'javascript',
  10,
  3,
  21,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'atXhpwM61WEN52k0ufEEQ',
  '5N-wj2YSBxqamnl_V74_d',
  'Should add the son''s name to the beginning of the family array',
  'const family = [''Father'', ''Older Brother''];
const result = welcomeSonHomeChirho(family, ''Prodigal Son'');
assert.deepStrictEqual(result, [''Prodigal Son'', ''Father'', ''Older Brother'']);',
  1,
  0
);

-- Quest 23: The Walls of Jericho
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'Zaclp2Vp0WFIyFvpe0QsE',
  'The Walls of Jericho',
  'The Israelites marched around Jericho for seven days—a repetitive, faithful act. In programming, when we need to repeat an action a specific number of times, we use a `for` loop. It has three parts in its parentheses, separated by semicolons: a counter is initialized, a condition checks when to stop, and the counter is incremented after each pass.

For example, to log numbers 1 through 3:
```javascript
for (let i = 1; i <= 3; i++) {
  console.log(i); // Logs 1, then 2, then 3
}
```',
  'Your function must model the repetitive marching around Jericho by adding an action to a list a specific number of times.

Follow these steps:
 - Write a function named `marchAroundJerichoChirho` that accepts one parameter `lapsChirho`.
 - The function should create a new empty array called `marchesChirho`.
 - Use a `for` loop to run `lapsChirho` times. Inside the loop, `push` the string `"march"` into the `marchesChirho` array on each lap.
 - After the loop is finished, `return` the `marchesChirho` array.',
  'function marchAroundJerichoChirho(lapsChirho) {
  // Your code here
}',
  'function marchAroundJerichoChirho(lapsChirho) {
  const marchesChirho = [];
  for (let i = 0; i < lapsChirho; i++) {
    marchesChirho.push(''march'');
  }
  return marchesChirho;
}',
  'Joshua 6:4 - And seven priests shall bear before the ark seven trumpets of rams'' horns: and the seventh day ye shall compass the city seven times, and the priests shall blow with the trumpets.',
  'beginner',
  'javascript',
  10,
  3,
  22,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '_jQ3x94NMyAV0kLTRdeAK',
  'Zaclp2Vp0WFIyFvpe0QsE',
  'Should create an array of 7 marches',
  'assert.deepStrictEqual(marchAroundJerichoChirho(7), [''march'', ''march'', ''march'', ''march'', ''march'', ''march'', ''march'']);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'SGDhlJictS-PYOYovcFSs',
  'Zaclp2Vp0WFIyFvpe0QsE',
  'Should create an array of 3 marches',
  'assert.deepStrictEqual(marchAroundJerichoChirho(3), [''march'', ''march'', ''march'']);',
  0,
  1
);

-- Quest 24: Blessing the Disciples
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '0BbQO74RFf77bmziBuxwH',
  'Blessing the Disciples',
  'Loops are perfect for working with arrays. We can use a `for` loop to visit every single element in an array, one by one, to perform an action. By setting the loop''s condition to be `i < array.length`, we ensure it runs exactly once for each item in the list, from the first to the last.',
  'Your function will bestow a blessing upon each disciple in a list, creating a new list of personalized greetings.

Follow these steps:
 - Write a function named `createGreetingsChirho` that accepts one parameter: `disciplesChirho` (an array of names).
 - Create a new empty array called `greetingsChirho`.
 - Use a `for` loop to go through the `disciplesChirho` array. For each name, create a blessing string. For example, if the name is `''Peter''`, the resulting string should be `"Blessings, Peter"`.
 - `push` each new blessing string into the `greetingsChirho` array.
 - `return` the `greetingsChirho` array.',
  'function createGreetingsChirho(disciplesChirho) {
  // Your code here
}',
  'function createGreetingsChirho(disciplesChirho) {
  const greetingsChirho = [];
  for (let i = 0; i < disciplesChirho.length; i++) {
    greetingsChirho.push(`Blessings, ${disciplesChirho[i]}`);
  }
  return greetingsChirho;
}',
  'Matthew 10:2 - Now the names of the twelve apostles are these; The first, Simon, who is called Peter, and Andrew his brother; James the son of Zebedee, and John his brother;',
  'beginner',
  'javascript',
  10,
  3,
  23,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'lDV3CgcgjlYrEu1FJWEgv',
  '0BbQO74RFf77bmziBuxwH',
  'Should create blessings for Peter and John',
  'assert.deepStrictEqual(createGreetingsChirho([''Peter'', ''John'']), [''Blessings, Peter'', ''Blessings, John'']);',
  1,
  0
);

-- Quest 25: Summing the Offerings
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'yljZX-PWyuLkPpj-pfaBh',
  'Summing the Offerings',
  'Another powerful use of loops is to process a list of numbers to find a total sum. This is called **accumulation**. We start a ''total'' variable at 0 before the loop begins. Then, inside the loop, we add the value of each element to our total.

When the loop is finished, the variable will hold the complete sum of all the cheerful gifts.',
  'Your function will act as a treasurer, faithfully summing a list of offerings to determine the total.

Follow these steps:
 - Write a function named `sumOfferingsChirho` that accepts one parameter: `offeringsChirho` (an array of numbers).
 - Declare a variable `totalChirho` and initialize it to `0`.
 - Use a `for` loop to iterate through the `offeringsChirho` array. On each pass, add the current offering to `totalChirho`.
 - After the loop, `return` the final `totalChirho`.',
  'function sumOfferingsChirho(offeringsChirho) {
  // Your code here
}',
  'function sumOfferingsChirho(offeringsChirho) {
  let totalChirho = 0;
  for (let i = 0; i < offeringsChirho.length; i++) {
    totalChirho += offeringsChirho[i];
  }
  return totalChirho;
}',
  '2 Corinthians 9:7 - Every man according as he purposeth in his heart, so let him give; not grudgingly, or of necessity: for God loveth a cheerful giver.',
  'beginner',
  'javascript',
  10,
  3,
  24,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'mT1lfaHv-sQ49flz2YIcL',
  'yljZX-PWyuLkPpj-pfaBh',
  'Should sum a list of positive numbers',
  'assert.strictEqual(sumOfferingsChirho([10, 5, 20]), 35);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'F0twChltnWdjzBN5qrego',
  'yljZX-PWyuLkPpj-pfaBh',
  'Should return 0 for an empty list',
  'assert.strictEqual(sumOfferingsChirho([]), 0);',
  0,
  1
);

-- Quest 26: Until He Returns
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'G-WSLgiljyCYYC8fyg4Fb',
  'Until He Returns',
  'A `for` loop is for when you know exactly how many times you need to loop. A **`while` loop** is for when you need to loop as long as a certain condition remains true, even if you don''t know for how long that will be. The loop will continue ''while'' the condition is met.

For example, a simple countdown:
```javascript
let count = 3;
while (count > 0) {
  console.log(count); // Logs 3, then 2, then 1
  count = count - 1;
}
```',
  'Your function will simulate waiting for a harvest, continuing day by day until the field is ready.

Follow these steps:
 - Write a function named `waitForHarvestChirho` that accepts one parameter: `fieldHealthChirho` (a number).
 - Declare a variable `daysChirho` and initialize it to `0`.
 - Use a `while` loop that continues as long as `fieldHealthChirho` is less than `100`.
 - Inside the loop, increase `fieldHealthChirho` by `10` and increment `daysChirho` by `1`.
 - When the loop finishes, `return` the total `daysChirho`.',
  'function waitForHarvestChirho(fieldHealthChirho) {
  // Your code here
}',
  'function waitForHarvestChirho(fieldHealthChirho) {
  let daysChirho = 0;
  while (fieldHealthChirho < 100) {
    fieldHealthChirho += 10;
    daysChirho++;
  }
  return daysChirho;
}',
  '1 Corinthians 11:26 - For as often as ye eat this bread, and drink this cup, ye do shew the Lord''s death till he come.',
  'beginner',
  'javascript',
  10,
  3,
  25,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'AsU69z0ojtnzV2Z6R1Lxq',
  'G-WSLgiljyCYYC8fyg4Fb',
  'Should take 5 days starting from 50 health',
  'assert.strictEqual(waitForHarvestChirho(50), 5);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '15OH7B5kPZplsANjO6bmF',
  'G-WSLgiljyCYYC8fyg4Fb',
  'Should take 10 days starting from 0 health',
  'assert.strictEqual(waitForHarvestChirho(0), 10);',
  0,
  1
);

-- Quest 27: Every Tribe and Nation
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'qbVCLPtLVrtJ0vRSejkjO',
  'Every Tribe and Nation',
  'When you just need to look at each item in an array and don''t care about the index number (`i`), there''s a simpler and more readable loop called the **`for...of` loop**. It lets you declare a variable that will hold each element of the array, one after the other, for each pass of the loop.

For example:
```javascript
const fruits = ["apple", "orange"];
for (const fruit of fruits) {
  console.log(fruit); // Logs "apple", then "orange"
}
```
It''s a very clean way to visit every member of a collection.',
  'Your function will count the praises from a list of nations, visiting each one to hear its voice.

Follow these steps:
 - Write a function named `praiseFromAllNationsChirho` that accepts one parameter: `nationsChirho` (an array of strings).
 - Create a variable `praiseCountChirho` and initialize it to `0`.
 - Use a `for...of` loop to iterate through the `nationsChirho` array.
 - For each nation in the array, increment `praiseCountChirho`.
 - `return` the final `praiseCountChirho`.',
  'function praiseFromAllNationsChirho(nationsChirho) {
  // Your code here
}',
  'function praiseFromAllNationsChirho(nationsChirho) {
  let praiseCountChirho = 0;
  for (const nation of nationsChirho) {
    praiseCountChirho++;
  }
  return praiseCountChirho;
}',
  'Revelation 7:9 - After this I beheld, and, lo, a great multitude, which no man could number, of all nations, and kindreds, and people, and tongues, stood before the throne, and before the Lamb, clothed with white robes, and palms in their hands;',
  'beginner',
  'javascript',
  10,
  3,
  26,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'fZG3uLTkbadswhzHJIjE4',
  'qbVCLPtLVrtJ0vRSejkjO',
  'Should count 4 nations',
  'assert.strictEqual(praiseFromAllNationsChirho([''Israel'', ''Egypt'', ''Greece'', ''Rome'']), 4);',
  1,
  0
);

-- Quest 28: Finding the Lost Coin
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '-TSZgKhJNg19rO7MovLJY',
  'Finding the Lost Coin',
  'Just like the woman who stops searching once she finds her coin, sometimes we need to stop a loop as soon as we''ve found what we''re looking for. The `break` statement immediately terminates the loop it''s inside, regardless of the loop''s condition.

For example:
```javascript
for (let i = 0; i < 10; i++) {
  if (i === 5) {
    break; // Stops the loop when i is 5
  }
}
```
This makes our code more efficient. It''s also good to know that `for` loops and `while` loops can often achieve similar things. With practice, you''ll learn which is better suited for a particular task.',
  'Your function must diligently search a list of locations, but stop immediately once the precious coin is found.

Follow these steps:
 - Write a function named `findTheCoinChirho` that accepts one parameter: `locationsChirho` (an array of strings).
 - Use a `for...of` loop to search through the `locationsChirho` array.
 - Inside the loop, use an `if` statement to check if the current location is equal to `"coin"`.
 - If it is, `return` the string `"Found!"` immediately.
 - If the loop finishes without finding the coin, `return` the string `"Still lost."`.',
  'function findTheCoinChirho(locationsChirho) {
  // Your code here
}',
  'function findTheCoinChirho(locationsChirho) {
  for (const location of locationsChirho) {
    if (location === ''coin'') {
      return ''Found!'';
    }
  }
  return ''Still lost.'';
}',
  'Luke 15:8 - Either what woman having ten pieces of silver, if she lose one piece, doth not light a candle, and sweep the house, and seek diligently till she find it?',
  'beginner',
  'javascript',
  10,
  3,
  27,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'RBbD_BFs2PgQD1u1vBwNO',
  '-TSZgKhJNg19rO7MovLJY',
  'Should find the coin in the list',
  'assert.strictEqual(findTheCoinChirho([''dust'', ''table'', ''coin'', ''chair'']), ''Found!'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'IQjV0qR1Ny1wdhGoB2dKH',
  '-TSZgKhJNg19rO7MovLJY',
  'Should report the coin is still lost if not in the list',
  'assert.strictEqual(findTheCoinChirho([''dust'', ''table'', ''chair'']), ''Still lost.'');',
  0,
  1
);

-- Quest 29: Separate the Wheat from the Chaff
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'pp_FFkBHvY2IFQ1UFs6b8',
  'Separate the Wheat from the Chaff',
  'While `break` exits a loop entirely, the `continue` statement just skips the rest of the current iteration and moves on to the next one. This is useful when we want to process only certain items in a list and ignore others.

It is like a farmer who, upon finding chaff, discards it and immediately continues on to the next bit of harvest, looking for the valuable wheat.',
  'Your function will act as a discerning harvester, gathering only the wheat from a mixed harvest and leaving the chaff behind.

Follow these steps:
 - Write a function named `gatherTheWheatChirho` that accepts one parameter: `harvestChirho` (an array of strings).
 - Create a new empty array called `garnerChirho`.
 - Use a `for...of` loop to iterate through `harvestChirho`.
 - Inside the loop, if the current item is `"chaff"`, use the `continue` statement to skip it.
 - For any other item, `push` it into the `garnerChirho` array.
 - `return` the `garnerChirho` array.',
  'function gatherTheWheatChirho(harvestChirho) {
  // Your code here
}',
  'function gatherTheWheatChirho(harvestChirho) {
  const garnerChirho = [];
  for (const item of harvestChirho) {
    if (item === ''chaff'') {
      continue;
    }
    garnerChirho.push(item);
  }
  return garnerChirho;
}',
  'Matthew 3:12 - Whose fan is in his hand, and he will throughly purge his floor, and gather his wheat into the garner; but he will burn up the chaff with unquenchable fire.',
  'beginner',
  'javascript',
  10,
  3,
  28,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'TBoztgpNAdXapQr5BsoRG',
  'pp_FFkBHvY2IFQ1UFs6b8',
  'Should separate wheat from chaff',
  'const harvest = [''wheat'', ''chaff'', ''wheat'', ''wheat'', ''chaff''];
assert.deepStrictEqual(gatherTheWheatChirho(harvest), [''wheat'', ''wheat'', ''wheat'']);',
  1,
  0
);

-- Quest 30: The Good Shepherd
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'Sm332SIE0iulinZ5t73O_',
  'The Good Shepherd',
  'So far, we have declared all our functions like this: `function myFunction() {}`. This is called a **function declaration**. There is another common way: creating a function without a name and assigning it to a variable. This is called a **function expression**.

We are defining the function''s actions (what makes a shepherd good) and then assigning that definition to a named constant, giving a title to the role.
```javascript
// Function Declaration
function add(a, b) { return a + b; }

// Function Expression
const add = function(a, b) { return a + b; };
```',
  'Your task is to define the core action of the Good Shepherd as a function and assign it to a constant bearing His name.

Follow these steps:
 - Create a constant named `isGoodShepherdChirho`.
 - Assign it a **function expression** that accepts one boolean parameter: `laysDownLifeChirho`.
 - The function''s logic should `return` the value of the `laysDownLifeChirho` parameter.',
  'const isGoodShepherdChirho = function(laysDownLifeChirho) {
  // Your code here
};',
  'const isGoodShepherdChirho = function(laysDownLifeChirho) {
  return laysDownLifeChirho;
};',
  'John 10:11 - I am the good shepherd: the good shepherd giveth his life for the sheep.',
  'beginner',
  'javascript',
  10,
  3,
  29,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'DGbvcO-Rq-qs_Nvx7Knfr',
  'Sm332SIE0iulinZ5t73O_',
  'Should return true if the shepherd lays down his life',
  'assert.strictEqual(isGoodShepherdChirho(true), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Edx0i9SdIdpOB0QC-g4K5',
  'Sm332SIE0iulinZ5t73O_',
  'Should return false if the shepherd does not',
  'assert.strictEqual(isGoodShepherdChirho(false), false);',
  0,
  1
);

-- Quest 31: Arrow of Prayer
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '5gj_tAcSJrhVzCJvKyv6y',
  'Arrow of Prayer',
  'Building on function expressions, there is an even more compact way to write them called **arrow functions**. They are a modern shorthand. Instead of the `function` keyword, you use a ''fat arrow'' `=>` between the parameters and the body.

```javascript
// Function Expression
const add = function(a, b) { return a + b; };

// Arrow Function
const add = (a, b) => { return a + b; };

// Arrow Function (with implicit return for single expressions)
const add = (a, b) => a + b;
```
They are especially useful for short, direct functions, like a prayer sent straight to its target.',
  'Your task is to write a function for multiplication, but you must use the direct and modern arrow function syntax.

Follow these steps:
 - Create a constant named `multiplyChirho`.
 - Assign it an **arrow function** that accepts two parameters: `baseChirho` and `multiplierChirho`.
 - The function''s body should `return` the product of the two parameters.',
  'const multiplyChirho = (baseChirho, multiplierChirho) => {
  // Your code here
};',
  'const multiplyChirho = (baseChirho, multiplierChirho) => {
  return baseChirho * multiplierChirho;
};',
  'Psalm 5:3 - My voice shalt thou hear in the morning, O LORD; in the morning will I direct my prayer unto thee, and will look up.',
  'beginner',
  'javascript',
  10,
  3,
  30,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'QIdjm8Lb9U7NR-G_rbT1L',
  '5gj_tAcSJrhVzCJvKyv6y',
  'Should correctly multiply 7 by 7',
  'assert.strictEqual(multiplyChirho(7, 7), 49);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'H0P3FU760P_FfvyEUAIlM',
  '5gj_tAcSJrhVzCJvKyv6y',
  'Should correctly multiply 12 by 12',
  'assert.strictEqual(multiplyChirho(12, 12), 144);',
  0,
  1
);

-- Quest 32: A Person of Faith
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '7SOwqjgDDZMK4asKZbNFP',
  'A Person of Faith',
  'While an array is an ordered list, an **object** is a collection of named properties. We use objects to model things from the real world. Think of a person in the Bible: they have a `name`, an `age`, and a `role`.

We create objects using curly braces `{ }`, with each property as a `key: value` pair separated by commas.',
  'Your task is to create an object that models a person of God.

For example, an object describing a book would look like this:
```javascript
// This object describes a book
const bookChirho = {
  titleChirho: "Proverbs",
  chaptersChirho: 31
}; // the constant bookChirho now holds an object with two properties
```

Now, follow these steps:
 - Write a function named `createManOfGodChirho`.
 - Inside the function, create an object representing a person.
 - The object should have three properties:
    - `nameChirho` with a string value of `"Timothy"`.
    - `faithChirho` with a boolean value of `true`.
    - `ageChirho` with a number value of `25`.
 - `return` the entire object.',
  'function createManOfGodChirho() {
  // Your code here
}',
  'function createManOfGodChirho() {
  const manOfGodChirho = {
    nameChirho: "Timothy",
    faithChirho: true,
    ageChirho: 25
  };
  return manOfGodChirho;
}',
  '1 Timothy 6:11 - But thou, O man of God, flee these things; and follow after righteousness, godliness, faith, love, patience, meekness.',
  'beginner',
  'javascript',
  10,
  3,
  31,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'asMsGVEJ8Ce-DGiSDECRT',
  '7SOwqjgDDZMK4asKZbNFP',
  'Should create an object with correct properties',
  'const man = createManOfGodChirho();
assert.strictEqual(man.nameChirho, ''Timothy'');
assert.strictEqual(man.faithChirho, true);
assert.strictEqual(man.ageChirho, 25);',
  1,
  0
);

-- Quest 33: The Keys of the Kingdom
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'bi7A88hSdgl5AkWqg4Hni',
  'The Keys of the Kingdom',
  'Once you have an object, you need a way to get the information stored inside it. The most common way is **dot notation**. You simply type the name of the object, followed by a dot (`.`), and then the name of the property you want to access. It''s like using a specific key to open a specific lock.',
  'You will be given an object representing an apostle and must use dot notation to access his name.

For example:
```javascript
const apostleChirho = {
  nameChirho: "Peter",
  roleChirho: "disciple"
};

// To get the name, we use dot notation:
let nameValueChirho = apostleChirho.nameChirho; // the variable nameValueChirho will now contain "Peter"
```

Now, follow these steps:
 - Write a function named `getKingdomKeyChirho` that accepts one parameter: `kingdomObjectChirho`.
 - Using dot notation, access the `keyNameChirho` property from the `kingdomObjectChirho`.
 - `return` the value of that property.',
  'function getKingdomKeyChirho(kingdomObjectChirho) {
  // Your code here
}',
  'function getKingdomKeyChirho(kingdomObjectChirho) {
  return kingdomObjectChirho.keyNameChirho;
}',
  'Matthew 16:19 - And I will give unto thee the keys of the kingdom of heaven...',
  'beginner',
  'javascript',
  10,
  3,
  32,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'PJD8fPRacpX32q4jAsBQ2',
  'bi7A88hSdgl5AkWqg4Hni',
  'Should access the keyNameChirho property',
  'const obj = { keyNameChirho: ''Authority'', otherProp: ''test'' };
assert.strictEqual(getKingdomKeyChirho(obj), ''Authority'');',
  1,
  0
);

-- Quest 34: A Prophet's Name
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'CvVhWggZeQ1N0hqLndHXr',
  'A Prophet''s Name',
  'Besides dot notation, there''s another way to access object properties: **bracket notation**. With this method, you use square brackets `[ ]` and put the property name inside as a string. This is very useful when the property name is stored in a variable.',
  'You will be given an object and a variable containing a property name. You must use bracket notation to look up the correct value.

For example:
```javascript
const prophetChirho = {
  nameChirho: "Jeremiah",
  bookChirho: "Lamentations"
};

let propertyToGetChirho = "bookChirho";
// We use the variable inside the brackets:
let bookValueChirho = prophetChirho[propertyToGetChirho]; // bookValueChirho now contains "Lamentations"
```

Now, follow these steps:
 - Write a function named `getProphetNameChirho` that accepts two parameters: `prophetObjectChirho` and `propertyNameChirho`.
 - Using bracket notation, access the property from `prophetObjectChirho` whose name is stored in `propertyNameChirho`.
 - `return` the value of that property.',
  'function getProphetNameChirho(prophetObjectChirho, propertyNameChirho) {
  // Your code here
}',
  'function getProphetNameChirho(prophetObjectChirho, propertyNameChirho) {
  return prophetObjectChirho[propertyNameChirho];
}',
  'Isaiah 43:1 - But now, thus saith the LORD that created thee, O Jacob, and he that formed thee, O Israel, Fear not: for I have redeemed thee, I have called thee by thy name; thou art mine.',
  'beginner',
  'javascript',
  10,
  3,
  33,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'qC1LQocOxnAntvV23VJHq',
  'CvVhWggZeQ1N0hqLndHXr',
  'Should access the property name passed in the variable',
  'const prophet = { nameChirho: ''Daniel'', statusChirho: ''Faithful'' };
assert.strictEqual(getProphetNameChirho(prophet, ''statusChirho''), ''Faithful'');',
  1,
  0
);

-- Quest 35: The Good Shepherd's Work
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'G0K9l1TLc1RGd8kxTHu2W',
  'The Good Shepherd''s Work',
  'Objects can store not only data (like strings and numbers) but also actions. A function stored as a property on an object is called a **method**. This allows our objects to *do* things. A shepherd object, for example, could have a method for counting the sheep.',
  'You will create an object that has both a property and a method that can perform a calculation.

For example:
```javascript
const scrollChirho = {
  nameChirho: "Genesis",
  wordCountChirho: 38262,
  summarizeChirho: function() {
    return "This is the book of beginnings.";
  }
};

scrollChirho.summarizeChirho(); // this calls the method and returns the string "This is the book of beginnings."
```

Now, follow these steps:
 - Write a function named `createShepherdChirho`.
 - Inside the function, create an object named `shepherdChirho`.
 - Give the object a property named `sheepCountChirho` with a value of `100`.
 - Give it a method named `tendSheepChirho` that accepts `lostSheepChirho` and `return`s `100 - lostSheepChirho`.
 - `return` the `shepherdChirho` object.',
  'function createShepherdChirho() {
  // Your code here
}',
  'function createShepherdChirho() {
  const shepherdChirho = {
    sheepCountChirho: 100,
    tendSheepChirho: function(lostSheepChirho) {
      return 100 - lostSheepChirho;
    }
  };
  return shepherdChirho;
}',
  'John 10:11 - I am the good shepherd. The good shepherd lays down his life for the sheep.',
  'beginner',
  'javascript',
  10,
  3,
  34,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xQzzr6Sn0krePhHMjFX5J',
  'G0K9l1TLc1RGd8kxTHu2W',
  'Should create an object with a working method',
  'const shepherd = createShepherdChirho();
assert.strictEqual(shepherd.tendSheepChirho(1), 99);',
  1,
  0
);

-- Quest 36: I AM
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'pcIi5nVJAUOieX-mXUkYI',
  'I AM',
  'The special keyword `this` is powerful. Inside a method, `this` refers to the object that the method belongs to. So, `this.sheepCountChirho` allows a method to access its *own* object''s properties. It''s how an object refers to itself, allowing its methods to be aware of its own state.',
  'You will build a better shepherd object whose methods can access the object''s own properties.

For example:
```javascript
const scrollChirho = {
  nameChirho: "Genesis",
  wordCountChirho: 38262,
  summarizeChirho: function() {
    // Inside summarizeChirho, ''this'' refers to the scrollChirho object itself
    return `The scroll of ${this.nameChirho} is important.`;
  }
};

let messageChirho = scrollChirho.summarizeChirho(); // messageChirho now contains "The scroll of Genesis is important."
```

Now, follow these steps:
 - Write a function named `createBetterShepherdChirho`.
 - Inside, create an object `shepherdChirho` with a property `sheepCountChirho` set to `100`.
 - Add a method named `findLostSheepChirho` that takes no parameters.
 - Inside `findLostSheepChirho`, use `this` to access its own `sheepCountChirho`, subtract `1`, and `return` the new count.
 - `return` the `shepherdChirho` object.',
  'function createBetterShepherdChirho() {
  // Your code here
}',
  'function createBetterShepherdChirho() {
  const shepherdChirho = {
    sheepCountChirho: 100,
    findLostSheepChirho: function() {
      return this.sheepCountChirho - 1;
    }
  };
  return shepherdChirho;
}',
  'Exodus 3:14 - And God said unto Moses, I AM THAT I AM...',
  'beginner',
  'javascript',
  10,
  3,
  35,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'NHZeagM5D9sJYmdwfHcRE',
  'pcIi5nVJAUOieX-mXUkYI',
  'Should create an object with a method that uses ''this''',
  'const shepherd = createBetterShepherdChirho();
assert.strictEqual(shepherd.findLostSheepChirho(), 99);',
  1,
  0
);

-- Quest 37: Changing a Heart of Stone
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'aWdxaPu_FkbiEahUPvQCj',
  'Changing a Heart of Stone',
  'Just as we can reassign variables, we can also update the properties of an object after it''s been created. You simply access the property using dot or bracket notation and use the assignment operator (`=`) to give it a new value. This allows our objects to change state over time.',
  'Your function will receive an object and must transform a property on it from one state to another.

For example:
```javascript
const believerChirho = {
  statusChirho: "lost"
};

// Update the status
believerChirho.statusChirho = "found"; // the statusChirho property on the believerChirho object is now "found"
```

Now, follow these steps:
 - Write a function named `transformHeartChirho` that accepts one parameter: `personObjectChirho`.
 - The incoming object will have a property `heartChirho` with the value `''stone''`.
 - Using dot notation, update the `heartChirho` property to be `''flesh''`.
 - `return` the modified `personObjectChirho`.',
  'function transformHeartChirho(personObjectChirho) {
  // Your code here
}',
  'function transformHeartChirho(personObjectChirho) {
  personObjectChirho.heartChirho = ''flesh'';
  return personObjectChirho;
}',
  'Ezekiel 11:19 - And I will give them one heart, and I will put a new spirit within you; and I will take the stony heart out of their flesh, and will give them an heart of flesh:',
  'beginner',
  'javascript',
  10,
  3,
  36,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '7j7HGPiZfzZyk7uh0Ldiz',
  'aWdxaPu_FkbiEahUPvQCj',
  'Should change the heart property to ''flesh''',
  'const person = { heartChirho: ''stone'' };
const result = transformHeartChirho(person);
assert.strictEqual(result.heartChirho, ''flesh'');',
  1,
  0
);

-- Quest 38: Adding a Virtue
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'sjgxja8160BsBpmwfM6sx',
  'Adding a Virtue',
  'Objects are dynamic. Even after an object is created, you can add new properties to it at any time. You simply write `object.newPropertyName = value`, and the new property will be added. This is reminiscent of how we are called to continually add virtues to our faith.',
  'Your function will receive a believer object and must add a new property to it.

For example:
```javascript
const believerChirho = {
  faithChirho: true
};

// Add a new property to the object
believerChirho.virtueChirho = "patience"; // the believerChirho object now has a new property, virtueChirho
```

Now, follow these steps:
 - Write a function named `addVirtueChirho` that accepts one parameter: `believerObjectChirho`.
 - The incoming object will have a property `faithChirho`.
 - Add a new property to the object named `virtueChirho` and set its value to `''diligence''`.
 - `return` the modified `believerObjectChirho`.',
  'function addVirtueChirho(believerObjectChirho) {
  // Your code here
}',
  'function addVirtueChirho(believerObjectChirho) {
  believerObjectChirho.virtueChirho = ''diligence'';
  return believerObjectChirho;
}',
  '2 Peter 1:5 - And beside this, giving all diligence, add to your faith virtue; and to virtue knowledge;',
  'beginner',
  'javascript',
  10,
  3,
  37,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'FhzFZSrrQfzi7nLofUN3T',
  'sjgxja8160BsBpmwfM6sx',
  'Should add the virtueChirho property to the object',
  'const believer = { faithChirho: true };
const result = addVirtueChirho(believer);
assert.strictEqual(result.virtueChirho, ''diligence'');',
  1,
  0
);

-- Quest 39: Is it a Multitude?
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'YRS4k6Wd1KxmVTAebzwGR',
  'Is it a Multitude?',
  'Sometimes we need to know if a variable is an array before we try to loop over it. Using `typeof` on an array returns `"object"`, which isn''t specific enough. To solve this, JavaScript provides a special function, `Array.isArray()`, which takes a variable and returns `true` if it''s an array and `false` otherwise.',
  'Your function must be able to discern between a list (an array) and a single item (an object).

For example:
```javascript
const listChirho = [1, 2, 3];
const itemChirho = { nameChirho: "item" };

Array.isArray(listChirho); // this expression evaluates to true
Array.isArray(itemChirho); // this expression evaluates to false
```

Now, follow these steps:
 - Write a function named `isMultitudeChirho` that accepts one parameter: `groupChirho`.
 - Use `Array.isArray()` to check the `groupChirho`.
 - `return` the boolean result.',
  'function isMultitudeChirho(groupChirho) {
  // Your code here
}',
  'function isMultitudeChirho(groupChirho) {
  return Array.isArray(groupChirho);
}',
  'Numbers 11:4 - And the mixt multitude that was among them fell a lusting...',
  'beginner',
  'javascript',
  10,
  3,
  38,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'MYiH7SFXnMtMoQy0qQnTl',
  'YRS4k6Wd1KxmVTAebzwGR',
  'Should return true for an array',
  'assert.strictEqual(isMultitudeChirho([1, 2, 3]), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'hv3eYo6xaWUjs1q-pYWDI',
  'YRS4k6Wd1KxmVTAebzwGR',
  'Should return false for an object',
  'assert.strictEqual(isMultitudeChirho({ a: 1 }), false);',
  0,
  1
);

-- Quest 40: The Good Portion
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'aeAwbkiKpnsZaIuCEjkus',
  'The Good Portion',
  'The `.slice()` method lets you ''slice'' out a portion of an array and create a new array from it without changing the original. If you provide negative numbers, it counts from the end of the array. This is useful for working with a part of a list without accidentally changing the original.',
  'You will be given a list of disciples and must choose the ''good portion'', which we will define as the last two.

For example:
```javascript
const disciplesChirho = ["Peter", "James", "John", "Andrew"];

// Get the last two disciples
const lastTwoChirho = disciplesChirho.slice(-2); // lastTwoChirho is a new array: ["John", "Andrew"]
```

Now, follow these steps:
 - Write a function named `chooseGoodPortionChirho` that accepts one parameter: `offeringsChirho`.
 - Use `.slice()` to create a new array containing only the last two elements of `offeringsChirho`.
 - `return` the new array.',
  'function chooseGoodPortionChirho(offeringsChirho) {
  // Your code here
}',
  'function chooseGoodPortionChirho(offeringsChirho) {
  return offeringsChirho.slice(-2);
}',
  'Luke 10:42 - But one thing is needful: and Mary hath chosen that good part, which shall not be taken away from her.',
  'beginner',
  'javascript',
  10,
  3,
  39,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'isZf8XQK_eMSRAR0FGxsr',
  'aeAwbkiKpnsZaIuCEjkus',
  'Should get the last two items from a list',
  'assert.deepStrictEqual(chooseGoodPortionChirho([10, 20, 30, 40]), [30, 40]);',
  1,
  0
);

-- Quest 41: Paul and Barnabas Part Ways
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'vlyL8v7qExrtaTiNXo-4L',
  'Paul and Barnabas Part Ways',
  'While `.slice()` is for copying, `.splice()` is for *removing* or *replacing* parts of an array. It''s a ''destructive'' method because it permanently alters the array. It also has a unique feature: it *returns* an array containing the elements that were removed.',
  'Your function will model the separation of Paul and Barnabas by removing one person from a missionary team.

For example:
```javascript
const teamChirho = ["Paul", "Mark", "Barnabas"];

// Starting at index 1, remove 1 element.
const removedChirho = teamChirho.splice(1, 1);
// teamChirho is now ["Paul", "Barnabas"].
// removedChirho is now ["Mark"].
```

Now, follow these steps:
 - Write a function named `removeMissionaryChirho` that accepts `teamChirho` and `missionaryNameChirho`.
 - First, find the index of `missionaryNameChirho` in the `teamChirho` array.
 - Then, use `.splice()` to remove that one missionary from the array.
 - `return` the modified `teamChirho` array.',
  'function removeMissionaryChirho(teamChirho, missionaryNameChirho) {
  // Your code here
}',
  'function removeMissionaryChirho(teamChirho, missionaryNameChirho) {
  const indexChirho = teamChirho.indexOf(missionaryNameChirho);
  if (indexChirho > -1) {
    teamChirho.splice(indexChirho, 1);
  }
  return teamChirho;
}',
  'Acts 15:39 - And the contention was so sharp between them, that they departed asunder one from the other: and so Barnabas took Mark, and sailed unto Cyprus;',
  'beginner',
  'javascript',
  10,
  3,
  40,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'HiMyDW11dfox1oM52-DZL',
  'vlyL8v7qExrtaTiNXo-4L',
  'Should remove ''Mark'' from the team',
  'assert.deepStrictEqual(removeMissionaryChirho([''Paul'', ''Barnabas'', ''Mark''], ''Mark''), [''Paul'', ''Barnabas'']);',
  1,
  0
);

-- Quest 42: Every Tribe and Nation Proclaims
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '4e1SiFmDjuoj2c2HGuWF4',
  'Every Tribe and Nation Proclaims',
  'The `.join()` method takes an array of items and joins them together into a single string. You can provide an optional ''separator'' string to put between each item. It''s like taking a list of individual voices and joining them into one unified proclamation.',
  'Your function will take an array of tribes and join them into a single, unified string of praise.

For example:
```javascript
const wordsChirho = ["Faith", "Hope", "Love"];

// Join them with a separator
const messageChirho = wordsChirho.join(" & "); // the constant messageChirho now holds the string "Faith & Hope & Love"
```

Now, follow these steps:
 - Write a function named `proclaimFromAllChirho` that accepts one parameter: `tribesChirho`.
 - Use the `.join()` method to convert the array into a single string.
 - Each tribe name in the string should be separated by `", and "`.
 - `return` the final string.',
  'function proclaimFromAllChirho(tribesChirho) {
  // Your code here
}',
  'function proclaimFromAllChirho(tribesChirho) {
  return tribesChirho.join('', and '');
}',
  'Revelation 5:9 - And they sung a new song, saying, Thou art worthy... for thou wast slain, and hast redeemed us to God by thy blood out of every kindred, and tongue, and people, and nation;',
  'beginner',
  'javascript',
  10,
  3,
  41,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '8fODiIxUt6DtnEMgiCZ54',
  '4e1SiFmDjuoj2c2HGuWF4',
  'Should join the tribes into a single string',
  'assert.strictEqual(proclaimFromAllChirho([''Judah'', ''Levi'', ''Benjamin'']), ''Judah, and Levi, and Benjamin'');',
  1,
  0
);

-- Quest 43: Putting Things in Order
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ImZp5JQi2KueqoEiY5WVL',
  'Putting Things in Order',
  'The `.sort()` method arranges the elements of an array in a specific order and changes the array in place. By default, it sorts alphabetically for strings. It''s a direct way to bring order to a list of items.',
  'Your function must bring order to a list of disciples by sorting them alphabetically.

For example:
```javascript
const disciplesChirho = ["John", "Peter", "Andrew"];

// Sort the array alphabetically
disciplesChirho.sort(); // This modifies the original disciplesChirho array in place. It is now ["Andrew", "John", "Peter"].
```

Now, follow these steps:
 - Write a function named `orderTheDisciplesChirho` that accepts one parameter: `disciplesChirho`.
 - Use the `.sort()` method to arrange the names in alphabetical order.
 - `return` the sorted `disciplesChirho` array.',
  'function orderTheDisciplesChirho(disciplesChirho) {
  // Your code here
}',
  'function orderTheDisciplesChirho(disciplesChirho) {
  return disciplesChirho.sort();
}',
  '1 Corinthians 14:40 - Let all things be done decently and in order.',
  'beginner',
  'javascript',
  10,
  3,
  42,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'dLqbK-aCqPvrTLgv2PS4U',
  'ImZp5JQi2KueqoEiY5WVL',
  'Should sort the disciples'' names alphabetically',
  'assert.deepStrictEqual(orderTheDisciplesChirho([''Peter'', ''James'', ''Andrew'']), [''Andrew'', ''James'', ''Peter'']);',
  1,
  0
);

-- Quest 44: Default Welcome
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '2SRsoPnU3SpP2AGyEEuB8',
  'Default Welcome',
  'Sometimes you want a function''s parameter to have a default value in case no argument is provided. You can set a default value directly in the parameter list using the `=` sign. This ensures the function always has a value to work with, offering a default welcome to all.',
  'Your function will provide a welcoming message, with a default greeting for when no name is provided.

For example:
```javascript
function greetChirho(nameChirho = "believer") {
  return `Greetings, ${nameChirho}!`;
}

greetChirho("Paul");  // returns "Greetings, Paul!"
greetChirho();        // returns "Greetings, believer!" because no name was provided
```

Now, follow these steps:
 - Write a function named `welcomeBrotherChirho` that accepts one parameter: `nameChirho`.
 - Set a default value for `nameChirho` to be the string `"friend"`.
 - The function should `return` a greeting string, like `"Welcome, friend!"`.',
  'function welcomeBrotherChirho(nameChirho = ''friend'') {
  // Your code here
}',
  'function welcomeBrotherChirho(nameChirho = ''friend'') {
  return `Welcome, ${nameChirho}!`;
}',
  'Romans 15:7 - Wherefore receive ye one another, as Christ also received us to the glory of God.',
  'beginner',
  'javascript',
  10,
  3,
  43,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'JLR7BmsYlhVU8lsaUSAeO',
  '2SRsoPnU3SpP2AGyEEuB8',
  'Should use the provided name',
  'assert.strictEqual(welcomeBrotherChirho(''Barnabas''), ''Welcome, Barnabas!'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'qzL2D00JNtafxy80VIdvB',
  '2SRsoPnU3SpP2AGyEEuB8',
  'Should use the default name ''friend''',
  'assert.strictEqual(welcomeBrotherChirho(), ''Welcome, friend!'');',
  0,
  1
);

-- Quest 45: Global and Local Truth
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'mFb8WQjluBSB9-ktTu9G0',
  'Global and Local Truth',
  '**Scope** determines where variables can be accessed. A variable declared outside of any function is **global**—it can be seen everywhere. A variable declared inside a function is **local**—it only exists within that function. This is a foundational principle: a local truth is confined to its context, while a global Truth is accessible everywhere.',
  'You will observe how a function can access both a global truth and its own local truth.

For example:
```javascript
let globalMessageChirho = "God is good"; // Global scope

function shareMessageChirho() {
  let localMessageChirho = "all the time"; // Local scope
  // This function can access both the global and its own local variables
  return `${globalMessageChirho}, ${localMessageChirho}.`;
}

shareMessageChirho(); // returns "God is good, all the time."
// console.log(localMessageChirho); // This would cause an error!
```

Now, follow these steps:
 - *Outside* of any function, declare a global variable `globalTruthChirho` with the value `"Jesus is Lord"`.
 - Then, write a function named `proclaimTruthChirho`.
 - Inside this function, declare a local variable `localTruthChirho` with the value `"Hallelujah"`.
 - The function should `return` a string that combines them: `globalTruthChirho + ", " + localTruthChirho`.',
  'let globalTruthChirho = "Jesus is Lord";

function proclaimTruthChirho() {
  // Your code here
}',
  'let globalTruthChirho = "Jesus is Lord";

function proclaimTruthChirho() {
  let localTruthChirho = "Hallelujah";
  return globalTruthChirho + ", " + localTruthChirho;
}',
  'Jesus saith unto him, I am the way, the truth, and the life: no man cometh unto the Father, but by me.',
  'beginner',
  'javascript',
  10,
  3,
  44,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'm96aBY6UXDjbguUB5MtuF',
  'mFb8WQjluBSB9-ktTu9G0',
  'Should combine global and local truths',
  'assert.strictEqual(proclaimTruthChirho(), ''Jesus is Lord, Hallelujah'');',
  1,
  0
);

-- Quest 46: The Helper
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'KCqgjjcLQ3r12p3A8qzoz',
  'The Helper',
  'Good programming often involves breaking down a large problem into smaller ones. You can write small functions that do one specific task well (these are often called **helper functions**) and then have a main function that calls these helpers. It''s a picture of how the Holy Spirit helps us in our main task of living for Christ.',
  'You will build a small helper function and a main function that uses it.

For example:
```javascript
// This is the helper function. It has one specific job.
function doubleChirho(numberChirho) {
  return numberChirho * 2;
}

// This is the main function. It uses the helper to do its work.
function calculateDoubleChirho(valueChirho) {
  // It calls the helper function and returns the result.
  return doubleChirho(valueChirho);
}

calculateDoubleChirho(10); // returns 20
```

Now, follow these steps:
 - First, write a helper function named `calculateTitheChirho` that accepts `incomeChirho` and returns 10% of that number.
 - Second, write a main function named `calculateFinancesChirho` that accepts `incomeChirho`.
 - Inside `calculateFinancesChirho`, call your `calculateTitheChirho` helper function to get the tithe amount.
 - `calculateFinancesChirho` should `return` the original `incomeChirho` minus the tithe amount.',
  '// Helper Function
function calculateTitheChirho(incomeChirho) {
  // Your code here
}

// Main Function
function calculateFinancesChirho(incomeChirho) {
  // Your code here
}',
  '// Helper Function
function calculateTitheChirho(incomeChirho) {
  return incomeChirho * 0.10;
}

// Main Function
function calculateFinancesChirho(incomeChirho) {
  const titheAmountChirho = calculateTitheChirho(incomeChirho);
  return incomeChirho - titheAmountChirho;
}',
  'John 14:26 - But the Comforter, which is the Holy Ghost, whom the Father will send in my name, he shall teach you all things...',
  'beginner',
  'javascript',
  10,
  3,
  45,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'dF5qDf6WA0y8-vgVOLVIT',
  'KCqgjjcLQ3r12p3A8qzoz',
  'Should correctly calculate finances after tithe',
  'assert.strictEqual(calculateFinancesChirho(100), 90);',
  1,
  0
);

-- Quest 47: For Each One a Blessing
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '6a7_mwsfclEynItvZGi1R',
  'For Each One a Blessing',
  'The `.forEach()` method is a cleaner way to loop over an array than a traditional `for` loop. It calls a function you provide—a ''callback function''—once for each element in the array. It''s perfect for when you need to perform an action for every item in a list.

While `.forEach()` itself doesn''t return a value, the callback function can modify variables outside of its own scope, which allows us to track the results of its work.',
  'Your task is to count blessings by modifying a variable from within the `.forEach()` callback.

For example:
```javascript
const disciplesChirho = ["Peter", "John"];
let countChirho = 0;

disciplesChirho.forEach(function(discipleNameChirho) {
  // This action is performed for each item, modifying the external variable.
  countChirho = countChirho + 1;
});
// After the loop, countChirho would be 2.
```

Now, follow these steps:
 - Write a function named `blessEachOneChirho` that accepts `congregationChirho` (an array of names).
 - Inside the function, create a variable `blessingCountChirho` and initialize it to `0`.
 - Use the `.forEach()` method on the `congregationChirho` array.
 - For each person in the congregation, increment `blessingCountChirho` by 1.
 - After the `.forEach()` loop is finished, `return` the final `blessingCountChirho`.',
  'function blessEachOneChirho(congregationChirho) {
  // Your code here
}',
  'function blessEachOneChirho(congregationChirho) {
  let blessingCountChirho = 0;
  congregationChirho.forEach(function(personChirho) {
    blessingCountChirho++;
  });
  return blessingCountChirho;
}',
  '1 Peter 4:10 - Each of you should use whatever gift you have received to serve others, as faithful stewards of God’s grace in its various forms.',
  'beginner',
  'javascript',
  10,
  3,
  46,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'h87EbtrkLrtReCMGVywZ9',
  '6a7_mwsfclEynItvZGi1R',
  'Should return the correct count for the congregation',
  'assert.strictEqual(blessEachOneChirho([''Paul'', ''Lydia'', ''Timothy'']), 3);',
  1,
  0
);

-- Quest 48: Transformation
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'km_ISHrkD-vVi6eLYNsGL',
  'Transformation',
  'The `.map()` method is one of the most useful array methods. It creates a **new array** by calling a function on every element of the original array and collecting the results. It''s a way to transform each item in a list into something new, reminiscent of how our minds are renewed and transformed.

For example, to double each number in a list:
```javascript
const numbersChirho = [1, 2, 3];

// The map method will create a new array with the results.
const doubledNumbersChirho = numbersChirho.map(function(numberChirho) {
  return numberChirho * 2;
}); // doubledNumbersChirho is now [2, 4, 6]
```',
  'Your task is to renew a list of thoughts by adding 10 to each one.

Follow these steps:
 - Write a function named `renewMindsChirho` that accepts `thoughtsChirho` (an array of numbers).
 - Use the `.map()` method to create a new array where each number from `thoughtsChirho` has been increased by 10.
 - `return` the new, transformed array.',
  'function renewMindsChirho(thoughtsChirho) {
  // Your code here
}',
  'function renewMindsChirho(thoughtsChirho) {
  return thoughtsChirho.map(function(thoughtChirho) {
    return thoughtChirho + 10;
  });
}',
  'Romans 12:2 - Be not conformed to this world: but be ye transformed by the renewing of your mind...',
  'beginner',
  'javascript',
  10,
  3,
  47,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'TUAUzv6kFijF2XJ5d6m21',
  'km_ISHrkD-vVi6eLYNsGL',
  'Should add 10 to each number in the array',
  'assert.deepStrictEqual(renewMindsChirho([5, 10, 15]), [15, 20, 25]);',
  1,
  0
);

-- Quest 49: Choosing the Pure
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'S7kLVverEAt7A8cTIxWkN',
  'Choosing the Pure',
  'The `.filter()` method creates a **new array** containing only the elements from the original array that pass a test. Your callback function for `.filter()` must return a boolean (`true` or `false`). If it returns `true`, the element is kept; if `false`, it''s left out. This is how we select only the items that meet a certain standard of purity or truth.',
  'Your function will sift through a list of thoughts (represented by numbers) and keep only those that are pure and even.

For example, to keep only numbers greater than 25:
```javascript
const numbersChirho = [10, 25, 30, 45, 50];

const highNumbersChirho = numbersChirho.filter(function(numberChirho) {
  return numberChirho > 25;
}); // highNumbersChirho is now [30, 45, 50]
```

Now, follow these steps:
 - Write a function named `choosePureThoughtsChirho` that accepts `thoughtsChirho` (an array of numbers).
 - Use the `.filter()` method to create a new array containing only the even numbers.
 - An even number is one that has no remainder when divided by 2. (Hint: `number % 2 === 0`).
 - `return` the new array of pure, even thoughts.',
  'function choosePureThoughtsChirho(thoughtsChirho) {
  // Your code here
}',
  'function choosePureThoughtsChirho(thoughtsChirho) {
  return thoughtsChirho.filter(function(thoughtChirho) {
    return thoughtChirho % 2 === 0;
  });
}',
  'Philippians 4:8 - Finally, brethren, whatsoever things are true, whatsoever things are honest, whatsoever things are just, whatsoever things are pure... think on these things.',
  'beginner',
  'javascript',
  10,
  3,
  48,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'PffnwmRcwsiMOYNfS0dxR',
  'S7kLVverEAt7A8cTIxWkN',
  'Should filter out odd numbers',
  'assert.deepStrictEqual(choosePureThoughtsChirho([1, 2, 3, 4, 5, 6]), [2, 4, 6]);',
  1,
  0
);

-- Quest 50: Find the One
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '4bi8f5FoZr6twXxLDGBiS',
  'Find the One',
  'While `.filter()` returns an array of *all* matches, the `.find()` method returns only the **first element** in an array that satisfies a provided testing function. If no values satisfy the testing function, `undefined` is returned. It''s perfect for when you are searching for one specific item, like the one lost sheep.',
  'Your function must search a flock of sheep and find the single one that is lost.

For example, to find a specific disciple by name:
```javascript
const disciplesChirho = [
  { nameChirho: "Peter", roleChirho: "Fisherman" },
  { nameChirho: "Matthew", roleChirho: "Tax Collector" },
  { nameChirho: "John", roleChirho: "Fisherman" }
];

const matthewChirho = disciplesChirho.find(function(discipleChirho) {
  return discipleChirho.nameChirho === "Matthew";
}); // matthewChirho is now the object for Matthew
```

Now, follow these steps:
 - Write a function named `findTheLostSheepChirho` that accepts `sheepChirho` (an array of objects).
 - Each sheep object will have a `nameChirho` and an `isLostChirho` property.
 - Use the `.find()` method to find the first sheep object where `isLostChirho` is `true`.
 - `return` that single sheep object.',
  'function findTheLostSheepChirho(sheepChirho) {
  // Your code here
}',
  'function findTheLostSheepChirho(sheepChirho) {
  return sheepChirho.find(function(sheep) {
    return sheep.isLostChirho === true;
  });
}',
  'Luke 15:4 - Suppose one of you has a hundred sheep and loses one of them. Doesn’t he leave the ninety-nine in the open country and go after the lost sheep until he finds it?',
  'beginner',
  'javascript',
  10,
  3,
  49,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'DbahpRDC8M-RHzrQ5ZP-A',
  '4bi8f5FoZr6twXxLDGBiS',
  'Should find the lost sheep object',
  'const flock = [{nameChirho: ''A'', isLostChirho: false}, {nameChirho: ''B'', isLostChirho: true}, {nameChirho: ''C'', isLostChirho: false}];
assert.deepStrictEqual(findTheLostSheepChirho(flock), {nameChirho: ''B'', isLostChirho: true});',
  1,
  0
);

-- Quest 51: Finding the Place
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'WaJcCGPITK9z_7E2JIdX2',
  'Finding the Place',
  'The `.findIndex()` method is similar to `.find()`, but instead of returning the element itself, it returns the **index** of the first element in the array that passes the test. If no element passes the test, it returns -1. This is useful when you need to know *where* something is in a list.',
  'You must find the place prepared for Barnabas in the missionary team by returning his index in the list.

For example:
```javascript
const disciplesChirho = ["Andrew", "Peter", "John"];

const petersLocationChirho = disciplesChirho.findIndex(function(discipleChirho) {
  return discipleChirho === "Peter";
}); // petersLocationChirho is now 1
```

Now, follow these steps:
 - Write a function named `findPlaceForBarnabasChirho` that accepts `teamChirho` (an array of names).
 - Use the `.findIndex()` method to find the index of the name `"Barnabas"` in the array.
 - `return` the index.',
  'function findPlaceForBarnabasChirho(teamChirho) {
  // Your code here
}',
  'function findPlaceForBarnabasChirho(teamChirho) {
  return teamChirho.findIndex(function(nameChirho) {
    return nameChirho === ''Barnabas'';
  });
}',
  'John 14:2 - In my Father''s house are many mansions: if it were not so, I would have told you. I go to prepare a place for you.',
  'beginner',
  'javascript',
  10,
  3,
  50,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'VEg-hPML7UUOJmt4t_Thb',
  'WaJcCGPITK9z_7E2JIdX2',
  'Should find the index of Barnabas',
  'assert.strictEqual(findPlaceForBarnabasChirho([''Paul'', ''Silas'', ''Barnabas'']), 2);',
  1,
  0
);

-- Quest 52: The Sum of All Things
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'meREBydHzqWq8Mj06wVM6',
  'The Sum of All Things',
  'The `.reduce()` method is powerful. It executes a ''reducer'' function on each element of the array, resulting in a single output value. The reducer function takes two arguments: an `accumulator` (the value from the last pass) and the `currentValue`.

For example, to sum a list of numbers:
```javascript
const offeringsChirho = [5, 10, 2];

// The 0 is the initial value for our accumulator (total).
const totalOfferingChirho = offeringsChirho.reduce(function(totalChirho, currentOfferingChirho) {
  return totalChirho + currentOfferingChirho;
}, 0); // totalOfferingChirho is now 17
```',
  'Your function will gather together many words into one, single sentence.

Follow these steps:
 - Write a function named `sumAllThingsChirho` that accepts `wordsChirho` (an array of strings).
 - Use the `.reduce()` method to combine all the strings in the array into one sentence.
 - The initial value for the accumulator should be the string `"In Christ,"`.
 - In the reducer, add a space and then the current word to the accumulator.
 - `return` the final sentence.',
  'function sumAllThingsChirho(wordsChirho) {
  // Your code here
}',
  'function sumAllThingsChirho(wordsChirho) {
  return wordsChirho.reduce(function(sentenceChirho, currentWordChirho) {
    return sentenceChirho + '' '' + currentWordChirho;
  }, ''In Christ,'');
}',
  'Ephesians 1:10 - That in the dispensation of the fulness of times he might gather together in one all things in Christ...',
  'intermediate',
  'javascript',
  15,
  5,
  51,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Apf7vl9xXE-Zbe349sjON',
  'meREBydHzqWq8Mj06wVM6',
  'Should reduce the words to a single sentence',
  'assert.strictEqual(sumAllThingsChirho([''all'', ''things'', ''are'', ''made'', ''new'']), ''In Christ, all things are made new'');',
  1,
  0
);

-- Quest 53: Does Anyone Believe?
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'czbRGpzUnLwWql7J5hkT7',
  'Does Anyone Believe?',
  'The `.some()` method tests whether **at least one** element in the array passes the test implemented by the provided function. It returns a boolean value (`true` or `false`). It stops searching as soon as it finds one true case, making it very efficient.',
  'Your function will survey a crowd to see if there is at least one believer present.

For example:
```javascript
const crowdChirho = [
  { nameChirho: "Pharisee", believesChirho: false },
  { nameChirho: "Nicodemus", believesChirho: true },
  { nameChirho: "Sadducee", believesChirho: false }
];

const isThereFaithChirho = crowdChirho.some(function(personChirho) {
  return personChirho.believesChirho;
}); // isThereFaithChirho is true because of Nicodemus
```

Now, follow these steps:
 - Write a function named `isAnyoneRighteousChirho` that accepts `peopleChirho`.
 - Each person object has an `isRighteousChirho` boolean property.
 - Use `.some()` to check if there is at least one person for whom `isRighteousChirho` is `true`.
 - `return` the boolean result.',
  'function isAnyoneRighteousChirho(peopleChirho) {
  // Your code here
}',
  'function isAnyoneRighteousChirho(peopleChirho) {
  return peopleChirho.some(function(personChirho) {
    return personChirho.isRighteousChirho;
  });
}',
  'John 12:42 - Yet at the same time many even among the leaders believed in him.',
  'beginner',
  'javascript',
  10,
  3,
  52,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'tT9uNvg5bIXOt-gmOgRw9',
  'czbRGpzUnLwWql7J5hkT7',
  'Should return true if someone is righteous',
  'const people = [{isRighteousChirho: false}, {isRighteousChirho: true}];
assert.strictEqual(isAnyoneRighteousChirho(people), true);',
  1,
  0
);

-- Quest 54: Are All Righteous?
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'e1wYQ6ElmA-oRpsJ89Zgw',
  'Are All Righteous?',
  'The `.every()` method is the opposite of `.some()`. It tests whether **all** elements in the array pass the test implemented by the provided function. It also returns a boolean value.',
  'Your function must examine a group of people and confirm if every single one is sinless.

For example:
```javascript
const apostlesChirho = [
  { nameChirho: "Peter", wasFishermanChirho: true },
  { nameChirho: "Matthew", wasFishermanChirho: false },
  { nameChirho: "Andrew", wasFishermanChirho: true }
];

const areAllFishermenChirho = apostlesChirho.every(function(apostleChirho) {
  return apostleChirho.wasFishermanChirho;
}); // areAllFishermenChirho is false because of Matthew
```

Now, follow these steps:
 - Write a function named `areAllSinlessChirho` that accepts `peopleChirho`.
 - Each person object has an `isSinlessChirho` boolean property.
 - Use the `.every()` method to check if `isSinlessChirho` is `true` for every person.
 - `return` the boolean result.',
  'function areAllSinlessChirho(peopleChirho) {
  // Your code here
}',
  'function areAllSinlessChirho(peopleChirho) {
  return peopleChirho.every(function(personChirho) {
    return personChirho.isSinlessChirho;
  });
}',
  'Romans 3:10 - As it is written, There is none righteous, no, not one.',
  'beginner',
  'javascript',
  10,
  3,
  53,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '8gtp-Kz6gpe6Y_E-h-bPE',
  'e1wYQ6ElmA-oRpsJ89Zgw',
  'Should return false if one person is not sinless',
  'const people = [{isSinlessChirho: true}, {isSinlessChirho: false}];
assert.strictEqual(areAllSinlessChirho(people), false);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'lRW9J1cDRffXYWiOKlJ3M',
  'e1wYQ6ElmA-oRpsJ89Zgw',
  'Should return true if all are sinless',
  'const people = [{isSinlessChirho: true}, {isSinlessChirho: true}];
assert.strictEqual(areAllSinlessChirho(people), true);',
  0,
  1
);

-- Quest 55: A Song of Ascents
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'FoeiReZFCeVYzElYXj1OI',
  'A Song of Ascents',
  'The true power of modern array methods is revealed when you **chain** them together. Because methods like `.map()` and `.filter()` return new arrays, you can immediately call another array method on the result. This allows you to perform multi-step data transformations in a clean, readable way.',
  'Your function will perform a two-step transformation on a list of offerings.

For example:
```javascript
const numbersChirho = [1, 2, 3, 4, 5, 6];

const resultChirho = numbersChirho
  .filter(numChirho => numChirho % 2 === 0) // Step 1: Get even numbers -> [2, 4, 6]
  .map(numChirho => numChirho * 10);      // Step 2: Multiply them by 10 -> [20, 40, 60]
```

Now, follow these steps:
 - Write a function named `processOfferingsChirho` that accepts `offeringsChirho`.
 - First, `.filter()` the array to keep only the offerings greater than `10`.
 - Then, chain a `.map()` to the result to double each of the remaining offerings.
 - `return` the final transformed array.',
  'function processOfferingsChirho(offeringsChirho) {
  // Your code here
}',
  'function processOfferingsChirho(offeringsChirho) {
  return offeringsChirho
    .filter(function(offering) { return offering > 10; })
    .map(function(offering) { return offering * 2; });
}',
  'Psalm 121:1 - I will lift up mine eyes unto the hills, from whence cometh my help.',
  'intermediate',
  'javascript',
  15,
  5,
  54,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'o4Zt8nMrS6WAGc2zJFMg7',
  'FoeiReZFCeVYzElYXj1OI',
  'Should filter and then map the offerings',
  'const offerings = [5, 12, 8, 20, 10];
assert.deepStrictEqual(processOfferingsChirho(offerings), [24, 40]);',
  1,
  0
);

-- Quest 56: What are the Properties?
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'LKS99tkWFGiFLvJNDBM5V',
  'What are the Properties?',
  'A modern way to get an object''s properties is the `Object.keys()` method. It takes an object as an argument and returns an **array containing all of the object''s keys** (property names).',
  'Your function will inspect the Armor of God and list all of its pieces by their property names.

For example:
```javascript
const armorChirho = { helmetChirho: "salvation", shieldChirho: "faith" };

const keysChirho = Object.keys(armorChirho); // keysChirho is now ["helmetChirho", "shieldChirho"]
```

Now, follow these steps:
 - Write a function named `getArmorKeysChirho` that accepts `armorObjectChirho`.
 - Use `Object.keys()` to get an array of all the property names from the object.
 - `return` the array of keys.',
  'function getArmorKeysChirho(armorObjectChirho) {
  // Your code here
}',
  'function getArmorKeysChirho(armorObjectChirho) {
  return Object.keys(armorObjectChirho);
}',
  'Romans 1:20 - For the invisible things of him from the creation of the world are clearly seen, being understood by the things that are made, even his eternal power and Godhead...',
  'beginner',
  'javascript',
  10,
  3,
  55,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'WQcGnJuSh_GMIDsPeBh8x',
  'LKS99tkWFGiFLvJNDBM5V',
  'Should return the keys of the armor object',
  'const armor = { helmet: ''salvation'', shield: ''faith'' };
assert.deepStrictEqual(getArmorKeysChirho(armor), [''helmet'', ''shield'']);',
  1,
  0
);

-- Quest 57: What are the Values?
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '9NLHsOAkwp9X82Zb9GG8O',
  'What are the Values?',
  'Similar to `Object.keys()`, the `Object.values()` method takes an object and returns an **array containing all of the object''s values**. This is very useful when you don''t care about the property names, only the data they hold.',
  'Your function will inspect an object representing the Fruit of the Spirit and list all of its values.

For example:
```javascript
const armorChirho = { helmetChirho: "salvation", shieldChirho: "faith" };

const valuesChirho = Object.values(armorChirho); // valuesChirho is now ["salvation", "faith"]
```

Now, follow these steps:
 - Write a function named `getFruitValuesChirho` that accepts `fruitObjectChirho`.
 - Use `Object.values()` to get an array of all the values from the object.
 - `return` the array of values.',
  'function getFruitValuesChirho(fruitObjectChirho) {
  // Your code here
}',
  'function getFruitValuesChirho(fruitObjectChirho) {
  return Object.values(fruitObjectChirho);
}',
  'Galatians 5:22 - But the fruit of the Spirit is love, joy, peace, longsuffering, gentleness, goodness, faith...',
  'beginner',
  'javascript',
  10,
  3,
  56,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xWsh2tTKIKIGgd51Qdsbc',
  '9NLHsOAkwp9X82Zb9GG8O',
  'Should return the values of the fruit object',
  'const fruit = { a: ''love'', b: ''joy'', c: ''peace'' };
assert.deepStrictEqual(getFruitValuesChirho(fruit), [''love'', ''joy'', ''peace'']);',
  1,
  0
);

-- Quest 58: The Full Account
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'W6AaeCMMByb1NK4TysUh8',
  'The Full Account',
  'The `Object.entries()` method gives you the most complete picture of an object. It returns an **array of arrays**, where each inner array is a `[key, value]` pair. This is incredibly useful when you need to work with both the property name and its value at the same time, especially inside a loop.',
  'Your function must provide a full account of an object by listing all of its properties and their corresponding values together.

For example:
```javascript
const armorChirho = { helmetChirho: "salvation", shieldChirho: "faith" };

const entriesChirho = Object.entries(armorChirho);
// entriesChirho is now [ ["helmetChirho", "salvation"], ["shieldChirho", "faith"] ]
```

Now, follow these steps:
 - Write a function named `getFullAccountChirho` that accepts `accountObjectChirho`.
 - Use `Object.entries()` to get an array of its key-value pairs.
 - `return` the array of entries.',
  'function getFullAccountChirho(accountObjectChirho) {
  // Your code here
}',
  'function getFullAccountChirho(accountObjectChirho) {
  return Object.entries(accountObjectChirho);
}',
  'Hebrews 4:13 - ...all things are naked and opened unto the eyes of him with whom we have to do.',
  'beginner',
  'javascript',
  10,
  3,
  57,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '_N-tRIEaBGlK9lDehieEo',
  'W6AaeCMMByb1NK4TysUh8',
  'Should return an array of key-value pairs',
  'const account = { talent: 5, stewardship: ''good'' };
assert.deepStrictEqual(getFullAccountChirho(account), [[''talent'', 5], [''stewardship'', ''good'']]);',
  1,
  0
);

-- Quest 59: God-Given Attributes
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'AHl1bSCnU71bOVBCOWQia',
  'God-Given Attributes',
  '**Destructuring** is a convenient way to extract properties from an object and assign them to their own variables. It''s a clean shorthand that avoids having to write `object.property` over and over again.',
  'Your function will receive an object representing a skilled workman and must extract his attributes into variables.

For example:
```javascript
const personChirho = { nameChirho: "Bezalel", skillChirho: "craftsmanship" };

// This one line creates two new constants:
const { nameChirho, skillChirho } = personChirho;

// At this point, nameChirho is a new constant with the value "Bezalel"
// and skillChirho is a new constant with the value "craftsmanship"
```

Now, follow these steps:
 - Write a function `getWorkmanSkillsChirho` that accepts `workmanObjectChirho`.
 - The object will have `wisdomChirho`, `understandingChirho`, and `knowledgeChirho` properties.
 - Use destructuring to extract these three properties into their own constants.
 - `return` a string that combines them, like `"Wisdom, understanding, and knowledge."`.',
  'function getWorkmanSkillsChirho(workmanObjectChirho) {
  // Your code here
}',
  'function getWorkmanSkillsChirho(workmanObjectChirho) {
  const { wisdomChirho, understandingChirho, knowledgeChirho } = workmanObjectChirho;
  return `${wisdomChirho}, ${understandingChirho}, and ${knowledgeChirho}.`;
}',
  'Exodus 31:3 - And I have filled him with the spirit of God, in wisdom, and in understanding, and in knowledge, and in all manner of workmanship...',
  'beginner',
  'javascript',
  10,
  3,
  58,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '-O76Ifu0hhtFNh-Rcd3Ge',
  'AHl1bSCnU71bOVBCOWQia',
  'Should destructure properties and create a summary string',
  'const workman = { wisdomChirho: ''Wisdom'', understandingChirho: ''understanding'', knowledgeChirho: ''knowledge'' };
assert.strictEqual(getWorkmanSkillsChirho(workman), ''Wisdom, understanding, and knowledge.'');',
  1,
  0
);

-- Quest 60: The Armor of God
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '0LqkQ_5BnjAtVOAkCtrmt',
  'The Armor of God',
  'We''ve used `for...of` to loop over array elements. To loop over the **properties of an object**, we use a **`for...in` loop**. This loop iterates over the keys (property names) of an object. To get the corresponding value for each key, you must use the key with bracket notation inside the loop.',
  'Your function will inspect the Armor of God and list the substance of each piece, not just its name.

For example:
```javascript
const armorChirho = {
  helmetChirho: "salvation",
  shieldChirho: "faith"
};

for (const pieceKeyChirho in armorChirho) {
  // pieceKeyChirho is the key ("helmetChirho", then "shieldChirho")
  // armorChirho[pieceKeyChirho] is the value ("salvation", then "faith")
}
```

Now, follow these steps:
 - Write a function named `listArmorValuesChirho` that accepts `armorObjectChirho`.
 - Create a new empty array named `valuesChirho`.
 - Use a `for...in` loop to iterate over the keys of `armorObjectChirho`.
 - Inside the loop, get the **value** of each property and `push` it into the `valuesChirho` array.
 - `return` the `valuesChirho` array.',
  'function listArmorValuesChirho(armorObjectChirho) {
  // Your code here
}',
  'function listArmorValuesChirho(armorObjectChirho) {
  const valuesChirho = [];
  for (const keyChirho in armorObjectChirho) {
    valuesChirho.push(armorObjectChirho[keyChirho]);
  }
  return valuesChirho;
}',
  'Ephesians 6:11 - Put on the whole armour of God, that ye may be able to stand against the wiles of the devil.',
  'beginner',
  'javascript',
  10,
  3,
  59,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'u_QCDeG8R10WV1URa1_kQ',
  '0LqkQ_5BnjAtVOAkCtrmt',
  'Should return an array of the object''s values',
  'const armor = { helmet: ''salvation'', shield: ''faith'' };
assert.deepStrictEqual(listArmorValuesChirho(armor), [''salvation'', ''faith'']);',
  1,
  0
);

-- Quest 61: Spreading the Word
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '2bL5X2ZknxR4pRQxtcqhB',
  'Spreading the Word',
  'The **spread operator (`...`)** allows you to ''spread out'' the elements of an array or the properties of an object into a new one. It''s a powerful tool for making copies or for combining multiple arrays/objects together without modifying the originals.',
  'Your function will take the disciples and the apostles and combine them into one unified group to spread the Word.

For example:
```javascript
const oldTestamentChirho = ["Genesis", "Exodus"];
const newTestamentChirho = ["Matthew", "Mark"];

// Spread both arrays into a new one
const bibleChirho = [...oldTestamentChirho, ...newTestamentChirho];
// the bibleChirho constant is now a new array: ["Genesis", "Exodus", "Matthew", "Mark"]
```

Now, follow these steps:
 - Write a function `spreadTheWordChirho` that accepts two arrays: `disciplesChirho` and `apostlesChirho`.
 - Use the spread operator to combine both arrays into a single new array.
 - `return` the new, combined array.',
  'function spreadTheWordChirho(disciplesChirho, apostlesChirho) {
  // Your code here
}',
  'function spreadTheWordChirho(disciplesChirho, apostlesChirho) {
  return [...disciplesChirho, ...apostlesChirho];
}',
  'Acts 13:49 - And the word of the Lord was published throughout all the region.',
  'beginner',
  'javascript',
  10,
  3,
  60,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'bLq5nUlIGFegkLCbymuTO',
  '2bL5X2ZknxR4pRQxtcqhB',
  'Should combine the two arrays into one',
  'const disciples = [''Stephen'', ''Philip''];
const apostles = [''Peter'', ''John''];
assert.deepStrictEqual(spreadTheWordChirho(disciples, apostles), [''Stephen'', ''Philip'', ''Peter'', ''John'']);',
  1,
  0
);

-- Quest 62: Casting Lots
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '62Ct_hTFsYrRUvLQ0Snl8',
  'Casting Lots',
  'The built-in `Math` object has many useful methods. `Math.random()` gives you a random decimal number between 0 and 1 (but not including 1). To get a random whole number for picking from an array, we multiply the random number by the array''s length and then use `Math.floor()` to round it down to the nearest whole number.',
  'Your function will simulate casting a lot to choose a candidate from a list.

For example:
```javascript
// Get a random index for an array of length 3 (indices 0, 1, 2)
const arrayLengthChirho = 3;
const randomIndexChirho = Math.floor(Math.random() * arrayLengthChirho);
// randomIndexChirho will be 0, 1, or 2
```

Now, follow these steps:
 - Write a function named `castTheLotChirho` that accepts `candidatesChirho`.
 - Calculate a random index that is valid for the `candidatesChirho` array.
 - Use this random index to select one candidate from the array.
 - `return` the name of the chosen candidate.',
  'function castTheLotChirho(candidatesChirho) {
  // Your code here
}',
  'function castTheLotChirho(candidatesChirho) {
  const randomIndexChirho = Math.floor(Math.random() * candidatesChirho.length);
  return candidatesChirho[randomIndexChirho];
}',
  'Acts 1:26 - And they gave forth their lots; and the lot fell upon Matthias...',
  'beginner',
  'javascript',
  10,
  3,
  61,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '8e6NagcdH8Y1O7YS7XBWn',
  '62Ct_hTFsYrRUvLQ0Snl8',
  'Should return one of the candidates from the array',
  'const candidates = [''Matthias'', ''Justus''];
const choice = castTheLotChirho(candidates);
assert.strictEqual(candidates.includes(choice), true);',
  1,
  0
);

-- Quest 63: A Time for Everything
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '867T7I6yfTizWGfFFOsEz',
  'A Time for Everything',
  'To work with dates and times in JavaScript, you can create a new instance of the `Date` object. `new Date()` will give you an object representing the current date and time. You can then use its various methods like `.getFullYear()` or `.toLocaleDateString()` to get specific information from it.',
  'Your function must determine the current year, acknowledging the season and time God has appointed.

For example:
```javascript
// Create a date object for the current moment
const nowChirho = new Date();

// Get the year from the date object
const yearChirho = nowChirho.getFullYear();
```

Now, follow these steps:
 - Write a function named `getTheCurrentYearChirho`.
 - Inside the function, create a new `Date` object to get the current date.
 - Use the appropriate method to get the full four-digit year.
 - `return` the year as a number.',
  'function getTheCurrentYearChirho() {
  // Your code here
}',
  'function getTheCurrentYearChirho() {
  const nowChirho = new Date();
  return nowChirho.getFullYear();
}',
  'Ecclesiastes 3:1 - To every thing there is a season, and a time to every purpose under the heaven:',
  'beginner',
  'javascript',
  10,
  3,
  62,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'i40rjcMtBwTwdh-J-oaDi',
  '867T7I6yfTizWGfFFOsEz',
  'Should return the current year as a number',
  'const year = new Date().getFullYear();
assert.strictEqual(getTheCurrentYearChirho(), year);',
  1,
  0
);

-- Quest 64: A Stumbling Block
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '7mwXhnBL-9qINb7-chTL5',
  'A Stumbling Block',
  'Sometimes, code can fail for reasons you don''t expect. If an error occurs, the program will crash. The `try...catch` statement provides a way to handle this gracefully. You put the code that might fail in the `try { }` block. If an error occurs, the code in the `catch (error) { }` block will run, and the program won''t crash. It''s a way to anticipate stumbling blocks and handle them with grace.',
  'Your function will attempt to parse a string that might be invalid, and it must not crash if it fails.

For example:
```javascript
try {
  // This code might cause an error
  let userChirho = JSON.parse("{ ''name'': ''John'' }"); // Invalid JSON
} catch (errorChirho) {
  // This code runs if an error happens
  console.log("An error occurred, but we handled it.");
}
```

Now, follow these steps:
 - Write a function named `parseUserDataChirho` that accepts `jsonStringChirho`.
 - Inside a `try` block, attempt to parse the `jsonStringChirho` using `JSON.parse()`. `return` the result.
 - If an error occurs, the `catch (errorChirho)` block should run. Inside the `catch` block, `return` the string `"Invalid data, could not parse."`.',
  'function parseUserDataChirho(jsonStringChirho) {
  // Your code here
}',
  'function parseUserDataChirho(jsonStringChirho) {
  try {
    return JSON.parse(jsonStringChirho);
  } catch (errorChirho) {
    return ''Invalid data, could not parse.'';
  }
}',
  '1 Corinthians 8:9 - But take heed lest by any means this liberty of yours become a stumblingblock to them that are weak.',
  'intermediate',
  'javascript',
  15,
  5,
  63,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '_K4RfII44Qi7LHRn-lTqF',
  '7mwXhnBL-9qINb7-chTL5',
  'Should parse valid JSON',
  'assert.deepStrictEqual(parseUserDataChirho(''{"name":"Paul"}''), { name: ''Paul'' });',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'kCunz93lknAlBjHpvPaPw',
  '7mwXhnBL-9qINb7-chTL5',
  'Should handle invalid JSON gracefully',
  'assert.strictEqual(parseUserDataChirho(''{name:"Paul"}''), ''Invalid data, could not parse.'');',
  0,
  1
);

-- Quest 65: Line upon Line
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'HErrapXkbR67AGgSLLc3L',
  'Line upon Line',
  '**Recursion** is a powerful but advanced concept where a function calls itself to solve a problem. A recursive function must have two things:
1. A **base case**: A condition that tells the function when to stop calling itself.
2. A **recursive step**: The part where the function calls itself, usually with a slightly simpler version of the problem.
It''s like breaking down a large task into smaller, identical tasks until you reach one that''s simple enough to solve directly.',
  'You will write a function that builds upon itself, line upon line, to calculate a sum.

For example, `sumUpToChirho(3)` should calculate `3 + 2 + 1` and return `6`.

Follow these steps:
 - Write a recursive function named `sumUpToChirho` that accepts `numberChirho`.
 - **Base Case:** If `numberChirho` is `1`, the function should `return 1`.
 - **Recursive Step:** Otherwise, `return` `numberChirho` plus the result of calling `sumUpToChirho` with `numberChirho - 1`.',
  'function sumUpToChirho(numberChirho) {
  // Your code here
}',
  'function sumUpToChirho(numberChirho) {
  if (numberChirho === 1) {
    return 1;
  }
  return numberChirho + sumUpToChirho(numberChirho - 1);
}',
  'Isaiah 28:10 - For precept must be upon precept, precept upon precept; line upon line, line upon line; here a little, and there a little:',
  'intermediate',
  'javascript',
  15,
  5,
  64,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'pPEMKNFu_BiUR0c0QcHH1',
  'HErrapXkbR67AGgSLLc3L',
  'Should correctly sum up to 5',
  'assert.strictEqual(sumUpToChirho(5), 15);',
  1,
  0
);

-- Quest 66: Destined from the Start
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'oJ04feqGzamfJ9vwC4qEF',
  'Destined from the Start',
  'Just as we can destructure objects, we can also destructure arrays. This allows us to pull elements out of an array and assign them to distinct variables in a single, clean line of code.',
  'Your function will receive an array of disciples and must create variables for the first two using destructuring.

For example:
```javascript
const disciplesChirho = ["Peter", "Andrew", "James"];

// This one line creates two new constants:
const [firstChirho, secondChirho] = disciplesChirho;

// At this point, firstChirho is a new constant with the value "Peter"
// and secondChirho is a new constant with the value "Andrew"
```

Now, follow these steps:
 - Write a function named `getFirstTwoDisciplesChirho` that accepts `disciplesArrayChirho`.
 - Use array destructuring to assign the first two elements to variables `firstChirho` and `secondChirho`.
 - `return` a new array containing just those two variables: `[firstChirho, secondChirho]`.',
  'function getFirstTwoDisciplesChirho(disciplesArrayChirho) {
  // Your code here
}',
  'function getFirstTwoDisciplesChirho(disciplesArrayChirho) {
  const [firstChirho, secondChirho] = disciplesArrayChirho;
  return [firstChirho, secondChirho];
}',
  'Ephesians 1:11 - In whom also we have obtained an inheritance, being predestinated according to the purpose of him who worketh all things after the counsel of his own will:',
  'beginner',
  'javascript',
  10,
  3,
  65,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'cDmGOrPEDtxhqB_MeoHmR',
  'oJ04feqGzamfJ9vwC4qEF',
  'Should extract the first two disciples from the array',
  'assert.deepStrictEqual(getFirstTwoDisciplesChirho([''Peter'', ''Andrew'', ''James'', ''John'']), [''Peter'', ''Andrew'']);',
  1,
  0
);

-- Quest 67: A Holy Nation, A Peculiar People
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'mSyZmDUuGirIiJQrExzov',
  'A Holy Nation, A Peculiar People',
  'An array can hold duplicate values, but sometimes you need a collection where every item is unique. A **`Set`** is a special kind of object that only lets you store unique values. If you try to add an item that''s already in the `Set`, it simply does nothing. This makes it perfect for gathering a ''peculiar people'' where each member is distinct.',
  'Your function will take a list of people, which may contain the same person multiple times, and produce a list where each person is represented only once.

For example:
```javascript
// Note the duplicates in the input array
const namesChirho = ["Peter", "John", "Peter", "Andrew"];

// Create a Set from the array to instantly remove duplicates
const uniqueDisciplesChirho = new Set(namesChirho);
// the Set now contains only {"Peter", "John", "Andrew"}
```

Now, follow these steps:
 - Write a function named `createUniqueNationChirho` that accepts `peopleChirho`.
 - Create a new `Set` from the `peopleChirho` array to remove all duplicates.
 - Convert the `Set` back into an array. You can do this using the spread operator: `[...mySet]`.
 - `return` the new array of unique people.',
  'function createUniqueNationChirho(peopleChirho) {
  // Your code here
}',
  'function createUniqueNationChirho(peopleChirho) {
  const uniqueSetChirho = new Set(peopleChirho);
  return [...uniqueSetChirho];
}',
  '1 Peter 2:9 - But ye are a chosen generation, a royal priesthood, an holy nation, a peculiar people...',
  'beginner',
  'javascript',
  10,
  3,
  66,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Qa-fJbLRY70lJOF1fDslp',
  'mSyZmDUuGirIiJQrExzov',
  'Should remove duplicate names from the array',
  'const people = [''Paul'', ''Lydia'', ''Timothy'', ''Paul''];
assert.deepStrictEqual(createUniqueNationChirho(people), [''Paul'', ''Lydia'', ''Timothy'']);',
  1,
  0
);

-- Quest 68: Storing Treasures
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'efowKe3AEqXT_QFSfRm42',
  'Storing Treasures',
  'A plain object is great, but it''s limited to using strings as keys. A **`Map`** is a more powerful data structure that lets you use *any* data type as a key, including objects and functions. It''s a more flexible way to store treasures, where the ''key'' to the treasure can be more complex than just a simple name.',
  'Your task is to store treasures in a `Map`, using objects as the keys.

For example:
```javascript
// Create a new Map
const heavenlyTreasuresChirho = new Map();
const keyObjectChirho = { id: 1 };

// Use .set() to add an item, with an object as the key
heavenlyTreasuresChirho.set(keyObjectChirho, "Eternal Life");

// Use .get() to retrieve an item
let treasureChirho = heavenlyTreasuresChirho.get(keyObjectChirho); // treasureChirho now contains "Eternal Life"
```

Now, follow these steps:
 - Write a function named `storeScriptureTreasuresChirho`.
 - Create a new `Map` called `scriptureMapChirho`.
 - Create two objects: `johnKeyChirho = { author: "John" }` and `paulKeyChirho = { author: "Paul" }`.
 - Use the `.set()` method to add two entries to the map:
    - Set `johnKeyChirho` to the value `"In the beginning was the Word..."`.
    - Set `paulKeyChirho` to the value `"For the wages of sin is death..."`.
 - `return` the `scriptureMapChirho`.',
  'function storeScriptureTreasuresChirho() {
  // Your code here
}',
  'function storeScriptureTreasuresChirho() {
  const scriptureMapChirho = new Map();
  const johnKeyChirho = { author: "John" };
  const paulKeyChirho = { author: "Paul" };
  scriptureMapChirho.set(johnKeyChirho, ''In the beginning was the Word...'');
  scriptureMapChirho.set(paulKeyChirho, ''For the wages of sin is death...'');
  return scriptureMapChirho;
}',
  'Matthew 6:19-20 - Lay not up for yourselves treasures upon earth... But lay up for yourselves treasures in heaven...',
  'intermediate',
  'javascript',
  15,
  5,
  67,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'PnIgEbzUELYbAkyIrOtnz',
  'efowKe3AEqXT_QFSfRm42',
  'Should create a map with object keys',
  'const map = storeScriptureTreasuresChirho();
assert.strictEqual(map.size, 2);
assert.strictEqual(map.get(Array.from(map.keys())[0]), ''In the beginning was the Word...'');',
  1,
  0
);

-- Quest 69: Interpreting the Message
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ubb7h-jA_BxiuFs0qLh7j',
  'Interpreting the Message',
  '**JSON** (JavaScript Object Notation) is the universal format for sending data across the web. To send our JavaScript objects, we must first convert them into a JSON string using `JSON.stringify()`. When we receive a JSON string, we must ''interpret'' it back into a usable JavaScript object using `JSON.parse()`. This two-step process is essential for any program that communicates with a server.',
  'Your function will receive a message as a JSON string and must interpret it to reveal its contents.

For example:
```javascript
const messageObjectChirho = { verse: "John 3:16", topic: "Salvation" };

// Convert the object to a JSON string
const jsonStringChirho = JSON.stringify(messageObjectChirho);
// jsonStringChirho is now ''{"verse":"John 3:16","topic":"Salvation"}''

// Parse the string back into an object
const receivedObjectChirho = JSON.parse(jsonStringChirho);
```

Now, follow these steps:
 - Write a function named `interpretMessageChirho` that accepts a JSON string, `messageStringChirho`.
 - Use `JSON.parse()` to convert the incoming string into a JavaScript object.
 - Access the `contentChirho` property of the newly created object.
 - `return` the value of the `contentChirho` property.',
  'function interpretMessageChirho(messageStringChirho) {
  // Your code here
}',
  'function interpretMessageChirho(messageStringChirho) {
  const messageObjectChirho = JSON.parse(messageStringChirho);
  return messageObjectChirho.contentChirho;
}',
  'Matthew 13:11 - And he answered and said unto them, It is given unto you to know the mysteries of the kingdom of heaven, but to them it is not given.',
  'beginner',
  'javascript',
  10,
  3,
  68,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'T53-GMvU3WTv2DNnv4DKr',
  'ubb7h-jA_BxiuFs0qLh7j',
  'Should parse the JSON and return the content',
  'const json = ''{"title":"Parable of the Sower","contentChirho":"A sower went out to sow his seed"}'';
assert.strictEqual(interpretMessageChirho(json), ''A sower went out to sow his seed'');',
  1,
  0
);

-- Quest 70: Ordering by Strength
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'SSPw34Zd5s1WOvqNTbc0b',
  'Ordering by Strength',
  'When you use `.sort()` on numbers, it can give strange results because it sorts them alphabetically (e.g., 10 comes before 2). To sort numbers, or properties on objects, correctly, you must provide a **compare function**. This function takes two arguments (`aChirho`, `bChirho`) and should return a negative number if `aChirho` comes first, a positive number if `bChirho` comes first, or 0. For sorting objects by a numeric property in ascending order, `aChirho.property - bChirho.property` works perfectly.',
  'Your function will sort a list of warriors based on their strength property, from weakest to strongest.

For example, to sort disciples by age:
```javascript
const disciplesChirho = [
  { nameChirho: ''John'', ageChirho: 90 },
  { nameChirho: ''Peter'', ageChirho: 65 },
  { nameChirho: ''Andrew'', ageChirho: 60 }
];

disciplesChirho.sort(function(aChirho, bChirho) {
  return aChirho.ageChirho - bChirho.ageChirho;
});
// disciplesChirho is now sorted by age: [Andrew, Peter, John]
```

Now, follow these steps:
 - Write a function named `orderWarriorsByStrengthChirho` that accepts `warriorsChirho` (an array of objects).
 - Each object has a `strengthChirho` property.
 - Use `.sort()` with a compare function to sort the objects by `strengthChirho` in ascending order.
 - `return` the sorted array.',
  'function orderWarriorsByStrengthChirho(warriorsChirho) {
  // Your code here
}',
  'function orderWarriorsByStrengthChirho(warriorsChirho) {
  warriorsChirho.sort(function(aChirho, bChirho) {
    return aChirho.strengthChirho - bChirho.strengthChirho;
  });
  return warriorsChirho;
}',
  'Matthew 19:30 - But many that are first shall be last; and the last shall be first.',
  'intermediate',
  'javascript',
  15,
  5,
  69,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '8QHXtx6WAGhgeAJ7njf9p',
  'SSPw34Zd5s1WOvqNTbc0b',
  'Should sort warriors by their strength property',
  'const warriors = [{strengthChirho: 100}, {strengthChirho: 50}, {strengthChirho: 120}];
const expected = [{strengthChirho: 50}, {strengthChirho: 100}, {strengthChirho: 120}];
assert.deepStrictEqual(orderWarriorsByStrengthChirho(warriors), expected);',
  1,
  0
);

-- Quest 71: Image and Likeness
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'yrwDWnkmUI8-AAM0gwwyU',
  'Image and Likeness',
  'When you copy an object or array using the spread operator (`...`), you are creating a **shallow copy**. The new variable holds a new container, but if the original container held complex items like objects, the new container just holds a *reference* to those same inner objects. Changing a nested object in the copy will also change it in the original!

To create a true, independent copy, you need a **deep copy**. A simple (but limited) way to do this is to convert the object to a JSON string and then parse it back. This breaks the references to the original nested objects.',
  'You will observe the difference between a shallow copy (a mere likeness) and a deep copy (a new creation).

First, an example of a **shallow copy** where the original is changed:
```javascript
const originalChirho = { name: "Adam", family: { wife: "Eve" } };
const shallowCopyChirho = { ...originalChirho };

// Modifying the nested object in the copy
shallowCopyChirho.family.wife = "CHANGED";
// The original is also changed because family is a shared reference!
console.log(originalChirho.family.wife); // "CHANGED"
```

Now, an example of a **deep copy** where the original is preserved:
```javascript
const original2Chirho = { name: "Adam", family: { wife: "Eve" } };
const deepCopyChirho = JSON.parse(JSON.stringify(original2Chirho));

// Modifying the nested object in the copy
deepCopyChirho.family.wife = "CHANGED";
// The original remains untouched!
console.log(original2Chirho.family.wife); // "Eve"
```

Your task:
 - Write a function `createLikenessChirho` that accepts `personObjectChirho`.
 - Create a `shallowCopyChirho` of the object using the spread operator.
 - Modify a nested property: `shallowCopyChirho.attributesChirho.faith = 0;`.
 - `return` the *original* `personObjectChirho` to observe how it was changed.',
  'function createLikenessChirho(personObjectChirho) {
  // Your code here
}',
  'function createLikenessChirho(personObjectChirho) {
  const shallowCopyChirho = { ...personObjectChirho };
  shallowCopyChirho.attributesChirho.faith = 0;
  return personObjectChirho;
}',
  'Genesis 1:27 - So God created man in his own image, in the image of God created he him; male and female created he them.',
  'intermediate',
  'javascript',
  15,
  5,
  70,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'C-ukQ8Ei3NzXlcnphaw4z',
  'yrwDWnkmUI8-AAM0gwwyU',
  'Should demonstrate that the original object is mutated',
  'const original = { name: ''David'', attributesChirho: { faith: 100 } };
const result = createLikenessChirho(original);
assert.strictEqual(result.attributesChirho.faith, 0);',
  1,
  0
);

-- Quest 72: The Appointed Time
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'KjTgJRA1sMsohyXmZVHIh',
  'The Appointed Time',
  'So far, our code has run line-by-line, synchronously. But some actions take time. JavaScript handles this with **asynchronous** code. A **callback function** is the key: it''s a function you pass to another function to be executed later, at an ''appointed time''—for example, after a timer finishes or data arrives from a server. The next few quests on `setTimeout` and Promises will build directly on this foundational concept of scheduling a function to run later.',
  'Your function will receive a message and a callback, and it will be responsible for executing that callback at the proper time (in this case, immediately) with a modified message.

For example:
```javascript
function mainTaskChirho(callbackFunctionChirho) {
  // Do some work...
  // Now, call the function that was passed in.
  callbackFunctionChirho();
}

// We pass a function in as the argument.
mainTaskChirho(function() {
  console.log("The callback was executed!");
});
```

Now, follow these steps:
 - Write a function named `doAtAppointedTimeChirho` that accepts `messageChirho` and `callbackChirho`.
 - Create a new string by adding `"! Amen."` to the end of the `messageChirho`.
 - Call the `callbackChirho` function, passing your new string as its argument.
 - This quest doesn''t return anything itself; its job is to execute the callback.',
  'function doAtAppointedTimeChirho(messageChirho, callbackChirho) {
  // Your code here
}',
  'function doAtAppointedTimeChirho(messageChirho, callbackChirho) {
  const fullMessageChirho = messageChirho + ''! Amen.'';
  callbackChirho(fullMessageChirho);
}',
  'Acts 1:7 - And he said, It is not for you to know the times or the seasons, which the Father hath put in his own power.',
  'beginner',
  'javascript',
  10,
  3,
  71,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'kmmOfQsbH_tEHJb3WCicn',
  'KjTgJRA1sMsohyXmZVHIh',
  'Should call the callback with the modified message',
  'let result = '''';
doAtAppointedTimeChirho(''God is good'', (msg) => { result = msg; });
assert.strictEqual(result, ''God is good! Amen.'');',
  1,
  0
);

-- Quest 73: A Sabbath Rest
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'xWrxMlL4Zk2H7_F5DShoA',
  'A Sabbath Rest',
  'The `setTimeout` function is a built-in way to see asynchronous code in action. It takes a callback function and a number of milliseconds as arguments. It will then wait for that amount of time before executing the callback, allowing the rest of your program to continue running in the meantime. It''s like taking a programmed rest before continuing.',
  'Your function must schedule a callback to run after a 1-second Sabbath rest.

For example:
```javascript
console.log("Work begins.");

// This message will appear after 2000 milliseconds (2 seconds)
setTimeout(function() {
  console.log("The Sabbath rest is over.");
}, 2000);

console.log("Other work continues...");
```

Now, follow these steps:
 - Write a function named `takeSabbathRestChirho` that accepts one parameter: `callbackChirho`.
 - Inside the function, use `setTimeout` to call the `callbackChirho` function after a `1000` millisecond (1 second) delay.',
  'function takeSabbathRestChirho(callbackChirho) {
  // Your code here
}',
  'function takeSabbathRestChirho(callbackChirho) {
  setTimeout(callbackChirho, 1000);
}',
  'Exodus 20:10 - But the seventh day is the sabbath of the LORD thy God: in it thou shalt not do any work...',
  'intermediate',
  'javascript',
  15,
  5,
  72,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'BtZqgvRehWoqhf-5z3zvZ',
  'xWrxMlL4Zk2H7_F5DShoA',
  'Should execute the callback after a delay',
  'return new Promise(resolve => {
  takeSabbathRestChirho(() => {
    assert.ok(true, ''Callback was called'');
    resolve();
  });
});',
  1,
  0
);

-- Quest 74: A Future and a Hope
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'A2qXhhOyyDDFJtSIbPRiB',
  'A Future and a Hope',
  'A **`Promise`** is an object that represents a future value. It starts in a ''pending'' state. Inside the promise, you are given two functions: `resolve` and `reject`. You don''t `return` them; you *call* them to change the Promise''s state. Calling `resolve(value)` fulfills the promise and sends that value to the success handler. Calling `reject(error)` rejects the promise and sends that error to the failure handler. This gives us a much cleaner way to manage code that takes time.',
  'Your function must return a Promise that either resolves with a message of hope or rejects with a message of evil based on a condition.

For example:
```javascript
const myPromiseChirho = new Promise(function(resolve, reject) {
  let success = true;
  if (success) {
    resolve("The promise is fulfilled!"); // Call resolve on success
  } else {
    reject("The promise was broken."); // Call reject on failure
  }
});
```

Now, follow these steps:
 - Write a function named `makeAPromiseChirho` that accepts `isPeacefulChirho`.
 - The function should `return` a new `Promise`.
 - Inside the promise, if `isPeacefulChirho` is `true`, call `resolve` with the string `"A future and a hope."`.
 - If `isPeacefulChirho` is `false`, call `reject` with the string `"Thoughts of evil."`.',
  'function makeAPromiseChirho(isPeacefulChirho) {
  // Your code here
}',
  'function makeAPromiseChirho(isPeacefulChirho) {
  return new Promise(function(resolve, reject) {
    if (isPeacefulChirho) {
      resolve(''A future and a hope.'');
    } else {
      reject(''Thoughts of evil.'');
    }
  });
}',
  'Jeremiah 29:11 - For I know the thoughts that I think toward you, saith the LORD, thoughts of peace, and not of evil, to give you an expected end.',
  'intermediate',
  'javascript',
  15,
  5,
  73,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'GAmEiwTDtnxaDEPG2BF9U',
  'A2qXhhOyyDDFJtSIbPRiB',
  'Should resolve with the correct message',
  'return makeAPromiseChirho(true).then(message => {
  assert.strictEqual(message, ''A future and a hope.'');
});',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'K9NlBudfhC5VqzB8zttuw',
  'A2qXhhOyyDDFJtSIbPRiB',
  'Should reject with the correct message',
  'return makeAPromiseChirho(false).catch(error => {
  assert.strictEqual(error, ''Thoughts of evil.'');
});',
  0,
  1
);

-- Quest 75: Patiently Waiting
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'gEMKVdxV1p5LlgZjd45IM',
  'Patiently Waiting',
  '`async` and `await` are special keywords that make working with Promises even easier. You declare a function with `async`. Inside that function, you can use `await` in front of any function that returns a Promise. The real power here is that `await` makes asynchronous code **non-blocking**. When a function `await`s a result (like a file download), other parts of your application can continue to run, keeping everything responsive. The program doesn''t freeze; it just patiently waits for that one task to finish before continuing *within that function*.',
  'Your task is to create an `async` function that patiently waits for a promise to be fulfilled.

For example:
```javascript
// Assume makeAPromiseChirho from the last quest exists.
async function getPromisedEndChirho() {
  // ''await'' pauses here until the promise resolves.
  const resultChirho = await makeAPromiseChirho(true);
  // resultChirho will contain "A future and a hope."
  return resultChirho;
}
```

Now, follow these steps:
 - Write an `async` function named `patientlyWaitForPromiseChirho` that accepts `promiseChirho`.
 - Inside the function, use the `await` keyword to wait for `promiseChirho` to resolve.
 - `return` the resolved value from the promise.',
  'async function patientlyWaitForPromiseChirho(promiseChirho) {
  // Your code here
}',
  'async function patientlyWaitForPromiseChirho(promiseChirho) {
  const resultChirho = await promiseChirho;
  return resultChirho;
}',
  'Romans 8:25 - But if we hope for that we see not, then do we with patience wait for it.',
  'intermediate',
  'javascript',
  15,
  5,
  74,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'd7C-WpXDiQ2RNnWpr-iV7',
  'gEMKVdxV1p5LlgZjd45IM',
  'Should correctly await and return the resolved value',
  'const promise = Promise.resolve(''Patiently Waited'');
return patientlyWaitForPromiseChirho(promise).then(result => {
  assert.strictEqual(result, ''Patiently Waited'');
});',
  1,
  0
);

-- Quest 76: The Living Stones
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'vHFoT6WK2HEAoa2f7My-h',
  'The Living Stones',
  'When a web page is loaded, the browser creates a model of the page called the **DOM** (Document Object Model). It''s a tree-like structure of objects representing all the HTML elements. JavaScript can interact with this DOM to change the page''s content, structure, and style *after* it has loaded. The page''s elements are like ''living stones'' that we can manipulate to build a dynamic experience.',
  'This quest is conceptual but demonstrates access to the most fundamental object on a web page.

Follow these steps:
 - Write a function named `getTheDocumentChirho`.
 - In a browser environment, there is a global object called `document` that represents the entire DOM.
 - The function should simply `return` the `document` object.',
  'function getTheDocumentChirho() {
  // Your code here
}',
  'function getTheDocumentChirho() {
  return document;
}',
  '1 Peter 2:5 - Ye also, as lively stones, are built up a spiritual house...',
  'beginner',
  'javascript',
  10,
  3,
  75,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'CRNFPBqaQTbwf7oxA1WaY',
  'vHFoT6WK2HEAoa2f7My-h',
  'Should return the document object',
  'assert.strictEqual(typeof getTheDocumentChirho(), ''object'');',
  1,
  0
);

-- Quest 77: Finding the Cornerstone
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'SPXRWCTMiaxrRGdlKUwBK',
  'Finding the Cornerstone',
  'To manipulate an element on a web page, you first need to find it. The simplest way is to give the element an `id` attribute in your HTML (e.g., `<div id="cornerstone">`). Then, in JavaScript, you can use the `document.getElementById()` method to get that specific element as an object.',
  'Your function will be tested in an environment with a mock web page. You must find the cornerstone of this page.

Follow these steps:
 - Write a function named `findTheCornerstoneChirho`.
 - Use `document.getElementById()` to find the element with the ID of `"cornerstone_chirho"`.
 - `return` the element object.',
  'function findTheCornerstoneChirho() {
  // Your code here
}',
  'function findTheCornerstoneChirho() {
  return document.getElementById(''cornerstone_chirho'');
}',
  'Psalm 118:22 - The stone which the builders refused is become the head stone of the corner.',
  'beginner',
  'javascript',
  10,
  3,
  76,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ipAfgG2_zg170du9FazUu',
  'SPXRWCTMiaxrRGdlKUwBK',
  'Should find and return the cornerstone element',
  'const el = document.createElement(''div'');
el.id = ''cornerstone_chirho'';
document.body.appendChild(el);
assert.strictEqual(findTheCornerstoneChirho(), el);
document.body.removeChild(el);',
  1,
  0
);

-- Quest 78: Rewriting the Heart
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'UccnwDnKUYjcBLYe34ksG',
  'Rewriting the Heart',
  'Once you''ve selected a DOM element, you can change the text inside it by modifying its `.textContent` property. When you assign a new string to this property, the text on the web page updates instantly. This is how we can dynamically change labels, messages, and titles.',
  'Your function will receive an element and a message, and it must write that message onto the element, like the law upon a heart.

Follow these steps:
 - Write a function named `writeTheLawChirho` that accepts `elementChirho` and `messageChirho`.
 - Set the `.textContent` of the `elementChirho` to be the `messageChirho`.
 - The function does not need to return a value; its purpose is to modify the element.',
  'function writeTheLawChirho(elementChirho, messageChirho) {
  // Your code here
}',
  'function writeTheLawChirho(elementChirho, messageChirho) {
  elementChirho.textContent = messageChirho;
}',
  'Jeremiah 31:33 - I will put my law in their inward parts, and write it in their hearts...',
  'beginner',
  'javascript',
  10,
  3,
  77,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'cgmZrwBHa8CiluGww6Nqf',
  'UccnwDnKUYjcBLYe34ksG',
  'Should change the element''s text content',
  'const el = document.createElement(''p'');
writeTheLawChirho(el, ''Love the Lord'');
assert.strictEqual(el.textContent, ''Love the Lord'');',
  1,
  0
);

-- Quest 79: A Joyful Noise
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'xCkJbNWy_vETHQ9K3QFWi',
  'A Joyful Noise',
  'To make a web page interactive, we need to listen for user actions, like clicks. The `.addEventListener()` method lets us do this. You call it on an element, tell it what event to listen for (e.g., `"click"`), and provide a callback function to run whenever that event happens.',
  'Your function must attach a callback to a button so that it makes a ''joyful noise'' (by running the callback) when clicked.

Follow these steps:
 - Write a function `makeJoyfulNoiseOnClickChirho` that accepts `buttonElementChirho` and `callbackChirho`.
 - Use the `.addEventListener()` method on the `buttonElementChirho`.
 - Tell it to listen for the `"click"` event.
 - Provide the `callbackChirho` as the function to execute when the button is clicked.',
  'function makeJoyfulNoiseOnClickChirho(buttonElementChirho, callbackChirho) {
  // Your code here
}',
  'function makeJoyfulNoiseOnClickChirho(buttonElementChirho, callbackChirho) {
  buttonElementChirho.addEventListener(''click'', callbackChirho);
}',
  'Psalm 100:1 - Make a joyful noise unto the LORD, all ye lands.',
  'intermediate',
  'javascript',
  15,
  5,
  78,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Z8TNWjkRZX7DyyKFl8aYp',
  'xCkJbNWy_vETHQ9K3QFWi',
  'Should attach a click event listener',
  'const button = document.createElement(''button'');
let noiseMade = false;
makeJoyfulNoiseOnClickChirho(button, () => { noiseMade = true; });
button.click();
assert.strictEqual(noiseMade, true);',
  1,
  0
);

-- Quest 80: A Sower's Field
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'l_z1l9dO9Puwc5DAcNts7',
  'A Sower''s Field',
  'To get text that a user has typed into an HTML `<input>` or `<textarea>` element, you need to access its `.value` property. This property holds the current text content of the input field as a string, which you can then use in your program.',
  'Your function will inspect an input field (the sower''s field) to see what seed (text) has been sown there.

Follow these steps:
 - Write a function named `getSownSeedChirho` that accepts one parameter: `inputElementChirho`.
 - The function should access the `.value` property of the `inputElementChirho`.
 - `return` the value.',
  'function getSownSeedChirho(inputElementChirho) {
  // Your code here
}',
  'function getSownSeedChirho(inputElementChirho) {
  return inputElementChirho.value;
}',
  'Luke 8:5 - A sower went out to sow his seed...',
  'beginner',
  'javascript',
  10,
  3,
  79,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'nxoE0vDROkYdUtER8rJ6Z',
  'l_z1l9dO9Puwc5DAcNts7',
  'Should return the value from the input element',
  'const input = document.createElement(''input'');
input.value = ''Word of God'';
assert.strictEqual(getSownSeedChirho(input), ''Word of God'');',
  1,
  0
);

-- Quest 81: A New Creation's Garment
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'P4OUduN4MsWjbABIZNlBo',
  'A New Creation''s Garment',
  'JavaScript can change not just the content of an element, but its appearance as well. Every DOM element has a `.style` property, which is an object containing all of its CSS styles. You can change these properties (e.g., `.style.color` or `.style.backgroundColor`) to dynamically alter how an element looks on the page.',
  'Your function will put a new garment on an element by changing its color.

Follow these steps:
 - Write a function named `putOnNewGarmentChirho` that accepts `elementChirho` and `colorChirho`.
 - Access the `.style` property of the `elementChirho`.
 - Set its `color` property to be the value of the `colorChirho` parameter.
 - This function does not need to return a value.',
  'function putOnNewGarmentChirho(elementChirho, colorChirho) {
  // Your code here
}',
  'function putOnNewGarmentChirho(elementChirho, colorChirho) {
  elementChirho.style.color = colorChirho;
}',
  '2 Corinthians 5:17 - Therefore if any man be in Christ, he is a new creature: old things are passed away; behold, all things are become new.',
  'beginner',
  'javascript',
  10,
  3,
  80,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'rgP-1Dn2YKlyoD2LtgMGQ',
  'P4OUduN4MsWjbABIZNlBo',
  'Should change the element''s style.color property',
  'const el = document.createElement(''div'');
putOnNewGarmentChirho(el, ''blue'');
assert.strictEqual(el.style.color, ''blue'');',
  1,
  0
);

-- Quest 82: Tallying the Tribes
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'GIGUzhaTzzcwUERgYd3PE',
  'Tallying the Tribes',
  'A common task in programming is to take a list of items and count how many times each unique item appears. This requires you to iterate through a list while building an object to store the counts. A powerful way to accomplish this is with the `.reduce()` method, accumulating the counts into a single object.',
  'Your function will conduct a census, counting the members of each tribe from a given list.

Follow these steps:
 - Write a function named `tallyTheTribesChirho` that accepts `tribesArrayChirho` (an array of strings, with duplicates).
 - The function should `return` an object where each key is a unique tribe name from the array, and its value is the number of times that tribe appeared.
 - For example, `[''Judah'', ''Levi'', ''Judah'']` should result in `{ Judah: 2, Levi: 1 }`.',
  'function tallyTheTribesChirho(tribesArrayChirho) {
  // Your code here
}',
  'function tallyTheTribesChirho(tribesArrayChirho) {
  return tribesArrayChirho.reduce((tallyChirho, tribeChirho) => {
    tallyChirho[tribeChirho] = (tallyChirho[tribeChirho] || 0) + 1;
    return tallyChirho;
  }, {});
}',
  'Numbers 2:32-33 - And the children of Israel were numbered... forty and six thousand and five hundred.',
  'intermediate',
  'javascript',
  15,
  5,
  81,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '_17KeVJlt4LpNRBBx7cMz',
  'GIGUzhaTzzcwUERgYd3PE',
  'Should correctly tally the tribes',
  'const tribes = [''Judah'', ''Levi'', ''Judah'', ''Benjamin'', ''Levi'', ''Judah''];
const expected = { Judah: 3, Levi: 2, Benjamin: 1 };
assert.deepStrictEqual(tallyTheTribesChirho(tribes), expected);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'pbJwTEtSXawcA94fPGqjI',
  'GIGUzhaTzzcwUERgYd3PE',
  'Should return an empty object for an empty array',
  'assert.deepStrictEqual(tallyTheTribesChirho([]), {});',
  0,
  1
);

-- Quest 83: Grouping the Flock
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '8PQ6_y4a9oujsltjR3FYX',
  'Grouping the Flock',
  'This challenge involves sorting a ''flock'' of data. You''ll be given a single array of objects and need to organize them into groups. The best way to store these groups is in an object, where each key represents a group (like a color), and the value is an array of all the items belonging to that group. The `.reduce()` method is an excellent tool for this.',
  'You must group a flock of sheep based on their color, placing them into separate folds within a single structure.

Follow these steps:
 - Write a function named `groupTheFlockChirho` that accepts `flockArrayChirho`.
 - `flockArrayChirho` is an array of sheep objects, where each object has a `colorChirho` property (e.g., `''white''` or `''black''`).
 - The function should `return` an object. The keys of this object will be the colors, and the values will be arrays of the sheep objects that match that color.',
  'function groupTheFlockChirho(flockArrayChirho) {
  // Your code here
}',
  'function groupTheFlockChirho(flockArrayChirho) {
  return flockArrayChirho.reduce((foldsChirho, sheepChirho) => {
    const color = sheepChirho.colorChirho;
    if (!foldsChirho[color]) {
      foldsChirho[color] = [];
    }
    foldsChirho[color].push(sheepChirho);
    return foldsChirho;
  }, {});
}',
  'John 10:16 - And other sheep I have, which are not of this fold: them also I must bring...',
  'intermediate',
  'javascript',
  15,
  5,
  82,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'EWLrw8M5EwGmyR_DJoDy3',
  '8PQ6_y4a9oujsltjR3FYX',
  'Should group sheep by color',
  'const flock = [{colorChirho: ''white''}, {colorChirho: ''black''}, {colorChirho: ''white''}];
const expected = { white: [{colorChirho: ''white''}, {colorChirho: ''white''}], black: [{colorChirho: ''black''}] };
assert.deepStrictEqual(groupTheFlockChirho(flock), expected);',
  1,
  0
);

-- Quest 84: Finding the Richest Patriarch
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'fG012dciGdNTJJ9CvYyuX',
  'Finding the Richest Patriarch',
  'To find the ''best'' item in a list (e.g., the highest number, the longest word), a common pattern is to loop through the array while keeping track of the best item you''ve seen *so far*. You start by assuming the first item is the best, then compare every other item to it, replacing your ''best so far'' whenever you find a better one.',
  'Your function will examine a list of patriarchs and their wealth, and it must determine which one is the richest.

Follow these steps:
 - Write a function named `findRichestPatriarchChirho` that accepts `patriarchsArrayChirho`.
 - Each object in the array will have a `nameChirho` property and a `wealthChirho` property (a number).
 - The function should find the patriarch with the highest `wealthChirho`.
 - `return` the entire object of the richest patriarch. If the array is empty, return `null`.',
  'function findRichestPatriarchChirho(patriarchsArrayChirho) {
  // Your code here
}',
  'function findRichestPatriarchChirho(patriarchsArrayChirho) {
  if (patriarchsArrayChirho.length === 0) {
    return null;
  }
  return patriarchsArrayChirho.reduce((richestChirho, currentPatriarchChirho) => {
    return currentPatriarchChirho.wealthChirho > richestChirho.wealthChirho ? currentPatriarchChirho : richestChirho;
  }, patriarchsArrayChirho[0]);
}',
  'Genesis 13:2 - And Abram was very rich in cattle, in silver, and in gold.',
  'intermediate',
  'javascript',
  15,
  5,
  83,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'oQmcBM_Zs5ArqZMZR1ZEB',
  'fG012dciGdNTJJ9CvYyuX',
  'Should find the patriarch with the most wealth',
  'const patriarchs = [{nameChirho: ''Abraham'', wealthChirho: 100}, {nameChirho: ''Lot'', wealthChirho: 80}, {nameChirho: ''Isaac'', wealthChirho: 120}];
assert.deepStrictEqual(findRichestPatriarchChirho(patriarchs), {nameChirho: ''Isaac'', wealthChirho: 120});',
  1,
  0
);

-- Quest 85: The Great Census
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'LqTCz4PcHhYc9CcMZTyFf',
  'The Great Census',
  'Your data won''t always be in a simple list. Here, you''ll work with an array of ''family'' objects, where each object itself contains a list of members. To solve this, you''ll need to loop through the outer array and, for each family object, access its inner array of members and add the length of that list to a running total.',
  'You must conduct a census by calculating the total number of people across all families listed.

Follow these steps:
 - Write a function named `conductGreatCensusChirho` that accepts `familiesArrayChirho`.
 - Each object in the array has a `familyNameChirho` (string) and a `membersChirho` (array of strings).
 - The function should calculate the total number of people across all families.
 - `return` the total number.',
  'function conductGreatCensusChirho(familiesArrayChirho) {
  // Your code here
}',
  'function conductGreatCensusChirho(familiesArrayChirho) {
  return familiesArrayChirho.reduce((totalChirho, familyChirho) => {
    return totalChirho + familyChirho.membersChirho.length;
  }, 0);
}',
  'Genesis 46:26 - All the souls that came with Jacob into Egypt... were threescore and six.',
  'intermediate',
  'javascript',
  15,
  5,
  84,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'KHfWNF5HRqibsYIqUqL6G',
  'LqTCz4PcHhYc9CcMZTyFf',
  'Should calculate the total number of family members',
  'const families = [{familyName: ''Jacob'', members: [''Reuben'', ''Simeon'']}, {familyName: ''Esau'', members: [''Eliphaz'', ''Reuel'', ''Jeush'']}];
assert.strictEqual(conductGreatCensusChirho(families), 5);',
  1,
  0
);

-- Quest 86: Flattening the Genealogy
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '0GS0633o7klhELiV_MyAN',
  'Flattening the Genealogy',
  'Sometimes data is organized in nested arrays, like a list of generations where each generation is its own list. The `.flat()` method is a simple and powerful tool that takes a nested array and creates a new, one-dimensional array from it. It essentially ''flattens'' the structure, bringing all members onto a single level.',
  'Your task is to take a list of generations and combine them into a single, unified list of all people.

Follow these steps:
 - Write a function named `flattenTheGenealogyChirho` that accepts `generationsArrayChirho` (an array of arrays).
 - Use the `.flat()` method to combine all the inner arrays into a single, flat array.
 - `return` the new flat array.',
  'function flattenTheGenealogyChirho(generationsArrayChirho) {
  // Your code here
}',
  'function flattenTheGenealogyChirho(generationsArrayChirho) {
  return generationsArrayChirho.flat();
}',
  'Matthew 1:17 - So all the generations from Abraham to David are fourteen generations...',
  'beginner',
  'javascript',
  10,
  3,
  85,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '7aA2PEsjIdRk0IGTvOWyy',
  '0GS0633o7klhELiV_MyAN',
  'Should flatten the nested array of names',
  'const generations = [[''Abraham''], [''Isaac''], [''Jacob'', ''Esau'']];
assert.deepStrictEqual(flattenTheGenealogyChirho(generations), [''Abraham'', ''Isaac'', ''Jacob'', ''Esau'']);',
  1,
  0
);

-- Quest 87: Reversing the Word
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'efHvlfjjrInvPF9OOX7os',
  'Reversing the Word',
  'Many powerful text manipulations are achieved by temporarily converting a string into an array, using array methods, and then converting it back into a string. The key methods here are a string''s `.split()` method (to create an array) and an array''s `.reverse()` and `.join()` methods.',
  'You must write a function that takes a sentence and returns a new sentence with the order of words reversed.

Follow these steps:
 - Write a function named `reverseTheWordChirho` that accepts `sentenceChirho`.
 - The function should `return` a new string where the order of the words is reversed.
 - For example, `"Jesus is Lord"` should become `"Lord is Jesus"`.',
  'function reverseTheWordChirho(sentenceChirho) {
  // Your code here
}',
  'function reverseTheWordChirho(sentenceChirho) {
  return sentenceChirho.split('' '').reverse().join('' '');
}',
  'Matthew 20:16 - So the last shall be first, and the first last: for many be called, but few chosen.',
  'intermediate',
  'javascript',
  15,
  5,
  86,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ZgGXzxYKdKYx46Zkfr3S2',
  'efHvlfjjrInvPF9OOX7os',
  'Should reverse the order of words in a sentence',
  'assert.strictEqual(reverseTheWordChirho(''The word of God''), ''God of word The'');',
  1,
  0
);

-- Quest 88: Validating the Scripture
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'NIAFrlenrxsDDcOS9mNkp',
  'Validating the Scripture',
  'When working with data, especially from external sources, it''s wise to validate it. This quest requires you to be a gatekeeper. You need to check if an object has all the properties it''s supposed to have, and whether the data in those properties is of the correct type. This involves combining object methods, the `typeof` operator, and conditional logic.',
  'You must write a function that proves whether a scripture object is valid and holds true to its required structure.

Follow these steps:
 - Write a function `validateScriptureChirho` that accepts `scriptureObjectChirho`.
 - The function must check for three things to be true:
    1. The object must have exactly three keys: `referenceChirho`, `textChirho`, and `topicChirho`.
    2. The value of `referenceChirho` must be a string.
    3. The value of `textChirho` must be a string.
 - `return` `true` if all conditions are met, otherwise `return` `false`.',
  'function validateScriptureChirho(scriptureObjectChirho) {
  // Your code here
}',
  'function validateScriptureChirho(scriptureObjectChirho) {
  const keys = Object.keys(scriptureObjectChirho);
  if (keys.length !== 3) return false;

  const hasAllKeys = [''referenceChirho'', ''textChirho'', ''topicChirho''].every(key => keys.includes(key));
  if (!hasAllKeys) return false;

  if (typeof scriptureObjectChirho.referenceChirho !== ''string'') return false;
  if (typeof scriptureObjectChirho.textChirho !== ''string'') return false;

  return true;
}',
  '1 Thessalonians 5:21 - ...prove all things; hold fast that which is good.',
  'intermediate',
  'javascript',
  15,
  5,
  87,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'y_QlTSfFsLSuiYFgGOi7k',
  'NIAFrlenrxsDDcOS9mNkp',
  'Should return true for a valid scripture object',
  'const valid = { referenceChirho: ''John 1:1'', textChirho: ''...'', topicChirho: ''Creation'' };
assert.strictEqual(validateScriptureChirho(valid), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'BUjtqhkTL0mRa5yB3s5zQ',
  'NIAFrlenrxsDDcOS9mNkp',
  'Should return false for an object with a missing key',
  'const invalid = { referenceChirho: ''John 1:1'', textChirho: ''...'' };
assert.strictEqual(validateScriptureChirho(invalid), false);',
  0,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ZJMTj-5--j9JfiS78c91Q',
  'NIAFrlenrxsDDcOS9mNkp',
  'Should return false for an object with an incorrect data type',
  'const invalid = { referenceChirho: 11, textChirho: ''...'', topicChirho: ''Creation'' };
assert.strictEqual(validateScriptureChirho(invalid), false);',
  0,
  2
);

-- Quest 89: The Scribe's Scroll (Palindrome)
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '7UUOODjWsf2SFvMWs4PZ0',
  'The Scribe''s Scroll (Palindrome)',
  'A palindrome is a word that reads the same forwards and backwards, like ''madam'' or ''level''. Writing a function to check for this is a classic programming puzzle that sharpens your logical thinking. The key is to compare the original word with its reversed version.',
  'Your function must examine a word and determine if it is a palindrome, a word that is the same forwards and backwards.

Follow these steps:
 - Write a function named `isPalindromeChirho` that accepts `wordChirho`.
 - The function should check if the word is a palindrome, ignoring case.
 - `return` `true` if it is, and `false` if it is not.
 - (Hint: `.toLowerCase()` and the methods from Quest 86 will be helpful).',
  'function isPalindromeChirho(wordChirho) {
  // Your code here
}',
  'function isPalindromeChirho(wordChirho) {
  const lowerCaseWord = wordChirho.toLowerCase();
  const reversedWord = lowerCaseWord.split('''').reverse().join('''');
  return lowerCaseWord === reversedWord;
}',
  'Ezekiel 2:9 - And when I looked, behold, an hand was sent unto me; and, lo, a roll of a book was therein;',
  'intermediate',
  'javascript',
  15,
  5,
  88,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Kil4JO9oLQS-y640xn8sm',
  '7UUOODjWsf2SFvMWs4PZ0',
  'Should return true for a simple palindrome',
  'assert.strictEqual(isPalindromeChirho(''madam''), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'UKRPE8GP6szva2nD_73fN',
  '7UUOODjWsf2SFvMWs4PZ0',
  'Should return true for a palindrome with different cases',
  'assert.strictEqual(isPalindromeChirho(''Racecar''), true);',
  0,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '-Q69VaioVPJyLpUQSiIqf',
  '7UUOODjWsf2SFvMWs4PZ0',
  'Should return false for a non-palindrome',
  'assert.strictEqual(isPalindromeChirho(''Jesus''), false);',
  1,
  2
);

-- Quest 90: The Two Great Commandments (FizzBuzz)
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'Q2sXJKwgj0keS7y8jgJsy',
  'The Two Great Commandments (FizzBuzz)',
  'The ''FizzBuzz'' challenge is a famous programming test used to gauge basic logical and conditional skills. The key is handling the case where a number is divisible by *both* numbers first in your `if/else if` chain. We will adapt this to represent the two great commandments.',
  'Your function must represent the hierarchy of the two great commandments.

Follow these steps:
 - Write a function named `theGreatCommandmentsChirho` that accepts `numberChirho`.
 - If the number is divisible by *both* 3 and 5, `return` `"Love God and Love Neighbor"`.
 - If the number is divisible by only 3, `return` `"Love God"`.
 - If the number is divisible by only 5, `return` `"Love Neighbor"`.
 - Otherwise, `return` the number itself.',
  'function theGreatCommandmentsChirho(numberChirho) {
  // Your code here
}',
  'function theGreatCommandmentsChirho(numberChirho) {
  if (numberChirho % 15 === 0) {
    return ''Love God and Love Neighbor'';
  }
  if (numberChirho % 3 === 0) {
    return ''Love God'';
  }
  if (numberChirho % 5 === 0) {
    return ''Love Neighbor'';
  }
  return numberChirho;
}',
  'Matthew 22:37-39 - ...Thou shalt love the Lord thy God with all thy heart... This is the first and great commandment. And the second is like unto it, Thou shalt love thy neighbour as thyself.',
  'intermediate',
  'javascript',
  15,
  5,
  89,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'HpXxF2K1dqs6YnyAUaSfM',
  'Q2sXJKwgj0keS7y8jgJsy',
  'Should return ''Love God'' for a number divisible by 3',
  'assert.strictEqual(theGreatCommandmentsChirho(9), ''Love God'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'AsPxGLZ7yq7GkEuOTFsbC',
  'Q2sXJKwgj0keS7y8jgJsy',
  'Should return ''Love Neighbor'' for a number divisible by 5',
  'assert.strictEqual(theGreatCommandmentsChirho(10), ''Love Neighbor'');',
  1,
  1
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ReN0tAmmOmSkYAdYcWbjT',
  'Q2sXJKwgj0keS7y8jgJsy',
  'Should return ''Love God and Love Neighbor'' for a number divisible by both',
  'assert.strictEqual(theGreatCommandmentsChirho(30), ''Love God and Love Neighbor'');',
  0,
  2
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'KNVcRsBXLMQrbweLN14uj',
  'Q2sXJKwgj0keS7y8jgJsy',
  'Should return the number if not divisible by 3 or 5',
  'assert.strictEqual(theGreatCommandmentsChirho(7), 7);',
  0,
  3
);

-- Quest 91: Promise in Parallel
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'E1dfiEIDbW-KnCV-u7pWD',
  'Promise in Parallel',
  'What if you need to wait for several asynchronous actions to all complete before you can proceed? `Promise.all()` is the tool for this. You give it an array of promises, and it returns a new single promise. This new promise resolves only when *all* of the input promises have resolved, and its resolved value is an array of their results.',
  'Your function will take an array of prayers (promises) and wait until all of them are answered.

Follow these steps:
 - Write an `async` function `agreeInPrayerChirho` that accepts `arrayOfPromisesChirho`.
 - Use `await Promise.all()` to wait for all promises in the array to resolve.
 - `return` the array of resolved values.',
  'async function agreeInPrayerChirho(arrayOfPromisesChirho) {
  // Your code here
}',
  'async function agreeInPrayerChirho(arrayOfPromisesChirho) {
  const resultsChirho = await Promise.all(arrayOfPromisesChirho);
  return resultsChirho;
}',
  'Matthew 18:19 - Again I say unto you, That if two of you shall agree on earth as touching any thing that they shall ask, it shall be done for them of my Father which is in heaven.',
  'advanced',
  'javascript',
  25,
  10,
  90,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ieuHwmwVWTR1jZFNYTBUX',
  'E1dfiEIDbW-KnCV-u7pWD',
  'Should resolve with an array of all promise results',
  'const p1 = Promise.resolve(''Amen'');
const p2 = Promise.resolve(''Hallelujah'');
return agreeInPrayerChirho([p1, p2]).then(results => {
  assert.deepStrictEqual(results, [''Amen'', ''Hallelujah'']);
});',
  1,
  0
);

-- Quest 92: The First Response
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'T6r8SFPeBnG4i-Rhpg2IS',
  'The First Response',
  'While `Promise.all()` waits for everyone, `Promise.race()` does the opposite. You give it an array of promises, and it returns a new promise that resolves or rejects as soon as the *very first* of the input promises resolves or rejects. It''s a ''race'' to see who finishes first.',
  'Your function will listen to multiple asynchronous events but will only act on the very first one to complete.

Follow these steps:
 - Write an `async` function `firstResponseChirho` that accepts `arrayOfPromisesChirho`.
 - Use `await Promise.race()` to get the value of the first promise that settles.
 - `return` that single resolved value.',
  'async function firstResponseChirho(arrayOfPromisesChirho) {
  // Your code here
}',
  'async function firstResponseChirho(arrayOfPromisesChirho) {
  const resultChirho = await Promise.race(arrayOfPromisesChirho);
  return resultChirho;
}',
  'Isaiah 65:24 - And it shall come to pass, that before they call, I will answer; and while they are yet speaking, I will hear.',
  'advanced',
  'javascript',
  25,
  10,
  91,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '95x_L5AMEgk2-K94cxojc',
  'T6r8SFPeBnG4i-Rhpg2IS',
  'Should resolve with the value of the fastest promise',
  'const pFast = new Promise(res => setTimeout(() => res(''fast''), 10));
const pSlow = new Promise(res => setTimeout(() => res(''slow''), 20));
return firstResponseChirho([pFast, pSlow]).then(result => {
  assert.strictEqual(result, ''fast'');
});',
  1,
  0
);

-- Quest 93: The Wise Steward's Cache
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'hSSNJO2BdYG97Qo5eoOK2',
  'The Wise Steward''s Cache',
  'Memoization is a technique for speeding up functions by caching their results. Imagine a ''costly'' calculation that takes a long time. The first time you run it with a given input, you store the result. The next time it''s called with the *same* input, you don''t do the calculation again; you just return the stored result instantly. This is the mark of a wise and efficient steward.',
  'You will create a ''higher-order'' function that takes a costly function and returns a new, faster version of it that uses a cache.

Follow these steps:
 - Write a function named `createWiseStewardChirho` that takes one argument, `costlyFunctionChirho`.
 - It should `return` a *new* function.
 - This new function will have a `cacheChirho` (an object) to store results. When called with an argument `argChirho`, it first checks if `argChirho` is already a key in the cache.
 - If it is, it returns the cached result.
 - If not, it calls the original `costlyFunctionChirho`, stores the result in the cache, and then returns it.',
  'function createWiseStewardChirho(costlyFunctionChirho) {
  // Your code here
}',
  'function createWiseStewardChirho(costlyFunctionChirho) {
  const cacheChirho = {};
  return function(argChirho) {
    if (cacheChirho[argChirho]) {
      return cacheChirho[argChirho];
    }
    const resultChirho = costlyFunctionChirho(argChirho);
    cacheChirho[argChirho] = resultChirho;
    return resultChirho;
  };
}',
  '1 Corinthians 4:2 - Moreover it is required in stewards, that a man be found faithful.',
  'advanced',
  'javascript',
  25,
  10,
  92,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'JJCWtxGUzBZfWxaf9X7pI',
  'hSSNJO2BdYG97Qo5eoOK2',
  'Should return the correct result and cache it',
  'let callCount = 0;
const costlyFunc = (num) => { callCount++; return num * 10; };
const wiseFunc = createWiseStewardChirho(costlyFunc);
assert.strictEqual(wiseFunc(5), 50);
assert.strictEqual(callCount, 1);
assert.strictEqual(wiseFunc(5), 50);
assert.strictEqual(callCount, 1); // Should not have been called again
assert.strictEqual(wiseFunc(7), 70);
assert.strictEqual(callCount, 2);',
  1,
  0
);

-- Quest 94: Chaining Promises
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'xmiIJl7p-g9M5uJwPsKC8',
  'Chaining Promises',
  'Often, one asynchronous task depends on the result of another. The `.then()` method on a promise is designed for this. It takes a callback function that will receive the resolved value of the promise, allowing you to start the next asynchronous task. This creates a chain of events, each one waiting patiently for the one before it to complete.',
  'You will be given three functions that return promises. Your task is to chain them together in the correct sequence.

Follow these steps:
 - Write a function `renewStrengthChirho` that accepts three functions: `step1Chirho`, `step2Chirho`, `step3Chirho`.
 - It should call `step1Chirho()`, then use `.then()` to pass its result to `step2Chirho`.
 - Then, chain another `.then()` to pass that result to `step3Chirho`.
 - `return` the final promise chain.',
  'function renewStrengthChirho(step1Chirho, step2Chirho, step3Chirho) {
  // Your code here
}',
  'function renewStrengthChirho(step1Chirho, step2Chirho, step3Chirho) {
  return step1Chirho()
    .then(result1 => step2Chirho(result1))
    .then(result2 => step3Chirho(result2));
}',
  'Isaiah 40:31 - But they that wait upon the LORD shall renew their strength...',
  'intermediate',
  'javascript',
  15,
  5,
  93,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '6cnpuJnTK1c4ve_Nl3SxR',
  'xmiIJl7p-g9M5uJwPsKC8',
  'Should chain the three promises correctly',
  'const s1 = () => Promise.resolve(10);
const s2 = val => Promise.resolve(val + 5);
const s3 = val => Promise.resolve(val * 2);
return renewStrengthChirho(s1, s2, s3).then(result => {
  assert.strictEqual(result, 30);
});',
  1,
  0
);

-- Quest 95: Refactoring with Async/Await
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'vk7cRrKmpKpxsLC8TwEKZ',
  'Refactoring with Async/Await',
  'While `.then()` chains work, they can become hard to read. The `async/await` syntax makes the vision plain. It lets you write asynchronous code that looks and reads like simple, synchronous code, but it''s still non-blocking. It''s the modern and preferred way to handle promise-based logic.',
  'Your task is to rewrite the promise chain from the previous quest using the much cleaner `async/await` syntax.

Follow these steps:
 - Write an `async` function named `renewStrengthPlainlyChirho` that accepts `step1Chirho`, `step2Chirho`, `step3Chirho`.
 - Inside the function, use `await` to get the result from `step1Chirho()`.
 - Then, on a new line, use `await` again to call `step2Chirho()` with the result from step 1.
 - Finally, `await` the result of `step3Chirho()` with the result from step 2.
 - `return` the final result.',
  'async function renewStrengthPlainlyChirho(step1Chirho, step2Chirho, step3Chirho) {
  // Your code here
}',
  'async function renewStrengthPlainlyChirho(step1Chirho, step2Chirho, step3Chirho) {
  const result1 = await step1Chirho();
  const result2 = await step2Chirho(result1);
  const finalResult = await step3Chirho(result2);
  return finalResult;
}',
  'Habakkuk 2:2 - Write the vision, and make it plain upon tables, that he may run that readeth it.',
  'intermediate',
  'javascript',
  15,
  5,
  94,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '6KycP6dYkuHkNOpufrEsE',
  'vk7cRrKmpKpxsLC8TwEKZ',
  'Should achieve the same result as the promise chain',
  'const s1 = () => Promise.resolve(10);
const s2 = val => Promise.resolve(val + 5);
const s3 = val => Promise.resolve(val * 2);
return renewStrengthPlainlyChirho(s1, s2, s3).then(result => {
  assert.strictEqual(result, 30);
});',
  1,
  0
);

-- Quest 96: The Digital Concordance
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'W-m03cOI5CS83eHeHS66M',
  'The Digital Concordance',
  'A concordance is a book that lists every word in the Bible and where it can be found. We will build a simple digital version. The first step is to create a ''store'' that holds our scripture data and has a method for adding new verses. This combines our knowledge of objects, arrays, and methods.',
  'Your task is to build the main object for our concordance project.

Follow these steps:
 - Write a function named `createConcordanceChirho`.
 - This function should `return` an object (our concordance store).
 - The object should have one property: `scripturesChirho`, initialized to an empty array.
 - The object should have one method: `addScriptureChirho(scriptureObject)`. This method should use `.push()` to add a new scripture object to the `scripturesChirho` array.',
  'function createConcordanceChirho() {
  // Your code here
}',
  'function createConcordanceChirho() {
  return {
    scripturesChirho: [],
    addScriptureChirho: function(scriptureObject) {
      this.scripturesChirho.push(scriptureObject);
    }
  };
}',
  '1 Chronicles 6:19 - These are the sons of Levi after the house of their fathers.',
  'advanced',
  'javascript',
  25,
  10,
  95,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '6UH0bMowqScZE0EDCtGp0',
  'W-m03cOI5CS83eHeHS66M',
  'Should create a concordance and allow adding scriptures',
  'const myConcordance = createConcordanceChirho();
myConcordance.addScriptureChirho({ referenceChirho: ''John 1:1'' });
assert.strictEqual(myConcordance.scripturesChirho.length, 1);
assert.strictEqual(myConcordance.scripturesChirho[0].referenceChirho, ''John 1:1'');',
  1,
  0
);

-- Quest 97: Indexing the Words
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'WhhGyZTBcTeQoA3yC1Pgg',
  'Indexing the Words',
  'The heart of a concordance is its index. An index allows for fast lookups. We will create a method that processes every word of every scripture we''ve stored. It will build an object where each key is a unique word, and the value is an array of all the scripture references where that word appears.',
  'You will add the ability to build an index to your concordance.

Follow these steps:
 - Write a function `addIndexToConcordanceChirho` that accepts a `concordanceObjectChirho`.
 - Add a new property: `indexChirho`, initialized as an empty object.
 - Add a new method: `buildIndexChirho()`. This method must:
    1. Loop through each scripture in `this.scripturesChirho`.
    2. For each scripture, split its `textChirho` into individual words (hint: use a regular expression `/[\s,.;:!?]+/` to split by various punctuation).
    3. For each word (converted to lowercase), add the scripture''s `referenceChirho` to an array under that word''s key in `this.indexChirho`.
 - `return` the modified `concordanceObjectChirho`.',
  'function addIndexToConcordanceChirho(concordanceObjectChirho) {
  // Your code here
}',
  'function addIndexToConcordanceChirho(concordanceObjectChirho) {
  concordanceObjectChirho.indexChirho = {};
  concordanceObjectChirho.buildIndexChirho = function() {
    this.scripturesChirho.forEach(scripture => {
      const words = scripture.textChirho.toLowerCase().split(/[\s,.;:!?]+/);
      words.forEach(word => {
        if (!word) return;
        if (!this.indexChirho[word]) {
          this.indexChirho[word] = [];
        }
        if (!this.indexChirho[word].includes(scripture.referenceChirho)) {
          this.indexChirho[word].push(scripture.referenceChirho);
        }
      });
    });
  };
  return concordanceObjectChirho;
}',
  'John 5:39 - Search the scriptures; for in them ye think ye have eternal life...',
  'advanced',
  'javascript',
  25,
  10,
  96,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'HSqW3vNQj066rfWFfhcsY',
  'WhhGyZTBcTeQoA3yC1Pgg',
  'Should build an index of words and references',
  'let concordance = { scripturesChirho: [{referenceChirho: ''A:1'', textChirho: ''God is love''}, {referenceChirho: ''B:2'', textChirho: ''Love thy neighbor''}] };
concordance = addIndexToConcordanceChirho(concordance);
concordance.buildIndexChirho();
assert.deepStrictEqual(concordance.indexChirho.love, [''A:1'', ''B:2'']);
assert.deepStrictEqual(concordance.indexChirho.god, [''A:1'']);',
  1,
  0
);

-- Quest 98: Searching the Index
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'STzAd6caxotsYbIoca8Yk',
  'Searching the Index',
  'With our index built, searching becomes incredibly fast. Instead of reading through every scripture every time we search, we can now go directly to our index object and look up a word by its key. This will instantly give us the list of all references where that word can be found.',
  'You will add a search method to your concordance that uses the pre-built index.

Follow these steps:
 - Write a function named `addSearchToConcordanceChirho` that accepts a `concordanceObjectChirho`.
 - Add a new method to the object: `searchIndexChirho(wordChirho)`.
 - This method should look up the `wordChirho` (converted to lowercase) in `this.indexChirho`.
 - If the word is found, it should `return` the array of references.
 - If the word is not found, it should `return` an empty array.',
  'function addSearchToConcordanceChirho(concordanceObjectChirho) {
  // Your code here
}',
  'function addSearchToConcordanceChirho(concordanceObjectChirho) {
  concordanceObjectChirho.searchIndexChirho = function(wordChirho) {
    return this.indexChirho[wordChirho.toLowerCase()] || [];
  };
  return concordanceObjectChirho;
}',
  'Acts 17:11 - ...and they received the word with all readiness of mind, and searched the scriptures daily, whether those things were so.',
  'advanced',
  'javascript',
  25,
  10,
  97,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'la_wP67cESqegSHZgohK0',
  'STzAd6caxotsYbIoca8Yk',
  'Should return references for a word in the index',
  'let concordance = { indexChirho: { love: [''A:1'', ''B:2''], god: [''A:1''] } };
concordance = addSearchToConcordanceChirho(concordance);
assert.deepStrictEqual(concordance.searchIndexChirho(''love''), [''A:1'', ''B:2'']);
assert.deepStrictEqual(concordance.searchIndexChirho(''faith''), []);',
  1,
  0
);

-- Quest 99: Asynchronous Loading
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'wyXufGV2zaTXt05DvAX34',
  'Asynchronous Loading',
  'In a real application, our scriptures wouldn''t be typed in; they''d be loaded from a server, which takes time. We can simulate this by creating an `async` method that ''loads'' data by waiting on a `Promise` that resolves after a short delay. This makes our application''s design more realistic.',
  'You will modify your concordance to load and index its data asynchronously.

Follow these steps:
 - Write a function `addAsyncLoadToConcordanceChirho` that accepts `concordanceObjectChirho`.
 - Add a new `async` method: `loadScripturesChirho(scriptureArray)`.
 - This method should create a new `Promise` that resolves after a 10ms delay (using `setTimeout`).
 - When the promise resolves, it should set `this.scripturesChirho` to the `scriptureArray` and then call `this.buildIndexChirho()`.
 - The `async` function should `await` this promise and then return a confirmation string like `"Index is built."`.',
  'function addAsyncLoadToConcordanceChirho(concordanceObjectChirho) {
  // Your code here
}',
  'function addAsyncLoadToConcordanceChirho(concordanceObjectChirho) {
  concordanceObjectChirho.loadScripturesChirho = async function(scriptureArray) {
    await new Promise(resolve => {
      setTimeout(() => {
        this.scripturesChirho = scriptureArray;
        this.buildIndexChirho();
        resolve();
      }, 10);
    });
    return ''Index is built.'';
  };
  return concordanceObjectChirho;
}',
  '1 Peter 1:7 - That the trial of your faith, being much more precious than of gold that perisheth...',
  'advanced',
  'javascript',
  25,
  10,
  98,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xsZhJMZjPF5MnAcqYxk6n',
  'wyXufGV2zaTXt05DvAX34',
  'Should load scriptures and build the index asynchronously',
  'let concordance = { scripturesChirho: [], indexChirho: {}, buildIndexChirho: function() { this.indexChirho.test = [''ok'']; } };
concordance = addAsyncLoadToConcordanceChirho(concordance);
return concordance.loadScripturesChirho([]).then(result => {
  assert.strictEqual(result, ''Index is built.'');
  assert.deepStrictEqual(concordance.indexChirho.test, [''ok'']);
});',
  1,
  0
);

-- Quest 100: The Final Report
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'D9oFwl-s-vnm_m0l40Ewl',
  'The Final Report',
  'The final step in many data processing tasks is to generate a summary report. This requires us to use all the data and methods we''ve built to calculate final metrics, such as totals and statistics, bringing the whole matter to a conclusion.',
  'You will add a final method to your concordance that provides a summary of its contents.

Follow these steps:
 - Write a function `addReportToConcordanceChirho` that accepts a `concordanceObjectChirho`.
 - Add a new method: `getReportChirho()`.
 - This method should `return` an object with the following properties:
    - `totalScripturesChirho`: The number of scriptures stored.
    - `totalWordsIndexedChirho`: The number of unique words in the index.
    - `mostCommonWordChirho`: The word that appears in the most scripture references. (If there''s a tie, any of the tied words is acceptable).',
  'function addReportToConcordanceChirho(concordanceObjectChirho) {
  // Your code here
}',
  'function addReportToConcordanceChirho(concordanceObjectChirho) {
  concordanceObjectChirho.getReportChirho = function() {
    const indexEntries = Object.entries(this.indexChirho);
    let mostCommonWordChirho = '''';
    let maxCount = 0;
    for (const [word, references] of indexEntries) {
      if (references.length > maxCount) {
        maxCount = references.length;
        mostCommonWordChirho = word;
      }
    }
    return {
      totalScripturesChirho: this.scripturesChirho.length,
      totalWordsIndexedChirho: indexEntries.length,
      mostCommonWordChirho: mostCommonWordChirho
    };
  };
  return concordanceObjectChirho;
}',
  'Ecclesiastes 12:13 - Let us hear the conclusion of the whole matter: Fear God, and keep his commandments: for this is the whole duty of man.',
  'advanced',
  'javascript',
  25,
  10,
  99,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'qyP9Ss6-Jcjb0vDUZ6OGF',
  'D9oFwl-s-vnm_m0l40Ewl',
  'Should generate a correct final report',
  'let concordance = { scripturesChirho: [1, 2], indexChirho: { love: [''A:1'', ''B:2''], god: [''A:1''], faith: [''C:3''] } };
concordance = addReportToConcordanceChirho(concordance);
const report = concordance.getReportChirho();
assert.strictEqual(report.totalScripturesChirho, 2);
assert.strictEqual(report.totalWordsIndexedChirho, 3);
assert.strictEqual(report.mostCommonWordChirho, ''love'');',
  1,
  0
);

-- Quest 101: Go and Build
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'lyLT9wN_lHSze8Ni-geqJ',
  'Go and Build',
  'Hallelujah! You have been equipped with the fundamental tools of JavaScript programming. You have learned to handle data, manage logic, respond to events, and build applications. Like the apostles, you have been given a great commission: to go into the world and use these skills to build, to create, and to solve problems. This is not the end, but the beginning of your journey as a developer. Continue to learn, to practice with faithfulness, and to build things that are good and edifying.',
  'This final quest is a reflection on your journey.

Follow these steps:
 - Write a function named `myJourneyChirho`.
 - Inside the function, create an object that summarizes what you have learned.
 - The object should have three properties:
    - `mostImportantConceptChirho`: A string describing the concept you found most valuable.
    - `mostChallengingQuestChirho`: A string describing the quest you found most difficult.
    - `whatIWillBuildNextChirho`: A string describing a simple project you would like to build using your new skills.
 - `return` this object.',
  'function myJourneyChirho() {
  // Your code here
}',
  'function myJourneyChirho() {
  return {
    mostImportantConceptChirho: ''I found higher-order array methods like .map() and .filter() most valuable.'',
    mostChallengingQuestChirho: ''Understanding recursion in Quest 64 was the most challenging for me.'',
    whatIWillBuildNextChirho: ''I would like to build a simple daily verse generator that uses fetch().''
  };
}',
  'Mark 16:15 - And he said unto them, Go ye into all the world, and preach the gospel to every creature.',
  'beginner',
  'javascript',
  10,
  3,
  100,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'aiRuJsae02pD3aON0nX1C',
  'lyLT9wN_lHSze8Ni-geqJ',
  'Should return an object with three string properties',
  'const journey = myJourneyChirho();
assert.strictEqual(typeof journey.mostImportantConceptChirho, ''string'');
assert.strictEqual(typeof journey.mostChallengingQuestChirho, ''string'');
assert.strictEqual(typeof journey.whatIWillBuildNextChirho, ''string'');',
  1,
  0
);

-- Quest 102: The Narrow Gate
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'e0zCg_8tDy5pKpENR_cJc',
  'The Narrow Gate',
  'The path to life is narrow, and few find it. In programming, filtering data allows us to narrow down a list to only those items that meet specific criteria.',
  'Write a function named `enterNarrowGateChirho` that accepts an array of numbers representing path widths.

Return a new array containing only the widths that are **less than or equal to** `10`.',
  'function enterNarrowGateChirho(widthsChirho) {
  // Your code here
}',
  'function enterNarrowGateChirho(widthsChirho) {
  return widthsChirho.filter(width => width <= 10);
}',
  'Matthew 7:14 - Because strait is the gate, and narrow is the way, which leadeth unto life, and few there be that find it.',
  'beginner',
  'javascript',
  10,
  3,
  101,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'ETWGRNYwRtIaW0gJDshm2',
  'e0zCg_8tDy5pKpENR_cJc',
  'Should keep only narrow paths',
  'assert.deepStrictEqual(enterNarrowGateChirho([5, 20, 8, 100, 10]), [5, 8, 10]);',
  1,
  0
);

-- Quest 103: Seventy Times Seven
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'NhEPdLvsF-j4auddnJAU_',
  'Seventy Times Seven',
  'Peter asked if he should forgive seven times. Jesus replied with a number representing boundless forgiveness. We must be able to calculate the extent of this mercy.',
  'Write a function named `calculateForgivenessChirho` that accepts a number `baseChirho`.

Return the result of multiplying that number by `70` and then adding `7` (Note: while the verse implies 70*7 or 77 depending on translation, for this logic puzzle use the formula: `(input * 70) + 7`).',
  'function calculateForgivenessChirho(baseChirho) {
  // Your code here
}',
  'function calculateForgivenessChirho(baseChirho) {
  return (baseChirho * 70) + 7;
}',
  'Matthew 18:22 - Jesus saith unto him, I say not unto thee, Until seven times: but, Until seventy times seven.',
  'beginner',
  'javascript',
  10,
  3,
  102,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'qfZAJGrFdjiNRyG9cXKN6',
  'NhEPdLvsF-j4auddnJAU_',
  'Should calculate correct forgiveness metric',
  'assert.strictEqual(calculateForgivenessChirho(1), 77);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'mgC1hnhYhSCsvdVG5WWNU',
  'NhEPdLvsF-j4auddnJAU_',
  'Should calculate for higher inputs',
  'assert.strictEqual(calculateForgivenessChirho(10), 707);',
  0,
  1
);

-- Quest 104: Counting the Cost
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '-Yd0P4WKchRGKsqNY7vNx',
  'Counting the Cost',
  'Before building a tower, a wise builder sits down to count the cost to see if they have enough to complete it. You must sum up the expenses.',
  'Write a function named `countTheCostChirho` that accepts an array of expense numbers.

Return the total sum of all expenses. If the array is empty, return `0`.',
  'function countTheCostChirho(expensesChirho) {
  // Your code here
}',
  'function countTheCostChirho(expensesChirho) {
  return expensesChirho.reduce((total, cost) => total + cost, 0);
}',
  'Luke 14:28 - For which of you, intending to build a tower, sitteth not down first, and counteth the cost, whether he have sufficient to finish it?',
  'beginner',
  'javascript',
  10,
  3,
  103,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'S8xprDECmLXBnNatGORWK',
  '-Yd0P4WKchRGKsqNY7vNx',
  'Should sum all costs',
  'assert.strictEqual(countTheCostChirho([100, 50, 25]), 175);',
  1,
  0
);

-- Quest 105: The Widow's Mite
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'e-GhAR3Q5PMM_g60-jjjX',
  'The Widow''s Mite',
  'Jesus honored the poor widow who gave two mites, which was all she had. In a list of offerings, finding the smallest amount can highlight humility.',
  'Write a function named `findWidowsMiteChirho` that accepts an array of offering amounts (numbers).

Return the **smallest** number in the array. You may assume the array is not empty.',
  'function findWidowsMiteChirho(offeringsChirho) {
  // Your code here
}',
  'function findWidowsMiteChirho(offeringsChirho) {
  return Math.min(...offeringsChirho);
}',
  'Mark 12:42 - And there came a certain poor widow, and she threw in two mites, which make a farthing.',
  'intermediate',
  'javascript',
  15,
  5,
  104,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xPVwPCbcoJc5sAe_q-HJ8',
  'e-GhAR3Q5PMM_g60-jjjX',
  'Should find the smallest offering',
  'assert.strictEqual(findWidowsMiteChirho([1000, 500, 2, 50]), 2);',
  1,
  0
);

-- Quest 106: Fishers of Men
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '2aV_aZP9yTNK9S5nDc_BJ',
  'Fishers of Men',
  'Jesus called His disciples to fish for men. We must be able to identify those we are called to reach.',
  'Write a function named `catchFishersChirho` that accepts an array of strings (names).

Return a new array containing only the names that start with the letter `''S''` (case-sensitive), representing those we caught in this specific net.',
  'function catchFishersChirho(namesChirho) {
  // Your code here
}',
  'function catchFishersChirho(namesChirho) {
  return namesChirho.filter(name => name.startsWith(''S''));
}',
  'Matthew 4:19 - And he saith unto them, Follow me, and I will make you fishers of men.',
  'beginner',
  'javascript',
  10,
  3,
  105,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Ada063GIGoZeuXNw9UqFL',
  '2aV_aZP9yTNK9S5nDc_BJ',
  'Should catch names starting with S',
  'assert.deepStrictEqual(catchFishersChirho([''Simon'', ''Peter'', ''Saul'', ''John'']), [''Simon'', ''Saul'']);',
  1,
  0
);

-- Quest 107: The Mustard Seed
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'nc__5fKKcpmhZET83E-WH',
  'The Mustard Seed',
  'The Kingdom of Heaven is like a mustard seed—the smallest of seeds, but it grows into a great tree. We must simulate this exponential growth.',
  'Write a function named `growMustardSeedChirho` that accepts a `startingSizeChirho` (number) and `yearsChirho` (number).

For every year, the seed size should multiply by `2`. Return the final size.',
  'function growMustardSeedChirho(startingSizeChirho, yearsChirho) {
  // Your code here
}',
  'function growMustardSeedChirho(startingSizeChirho, yearsChirho) {
  return startingSizeChirho * (2 ** yearsChirho);
}',
  'Matthew 13:31-32 - The kingdom of heaven is like to a grain of mustard seed... which indeed is the least of all seeds: but when it is grown, it is the greatest among herbs...',
  'intermediate',
  'javascript',
  15,
  5,
  106,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'nkbHe60Wqley6yU4c4hkN',
  'nc__5fKKcpmhZET83E-WH',
  'Should double size for 3 years',
  'assert.strictEqual(growMustardSeedChirho(1, 3), 8);',
  1,
  0
);

-- Quest 108: Sorting the Scrolls
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '-ny_hls6CoqBMOc5hKnOI',
  'Sorting the Scrolls',
  'God is a God of order. We must be able to arrange items, such as the books of the law or names of prophets, in their proper order.',
  'Write a function named `sortScrollsChirho` that accepts an array of strings.

Return the array sorted alphabetically.',
  'function sortScrollsChirho(scrollsChirho) {
  // Your code here
}',
  'function sortScrollsChirho(scrollsChirho) {
  return scrollsChirho.sort();
}',
  '1 Corinthians 14:40 - Let all things be done decently and in order.',
  'beginner',
  'javascript',
  10,
  3,
  107,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '6iNHmKUnRPaUmdc6oJST7',
  '-ny_hls6CoqBMOc5hKnOI',
  'Should sort strings alphabetically',
  'assert.deepStrictEqual(sortScrollsChirho([''Moses'', ''Aaron'', ''Miriam'']), [''Aaron'', ''Miriam'', ''Moses'']);',
  1,
  0
);

-- Quest 109: Dividing the Loaves
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'Arlfj_2PVHwFWShzylove',
  'Dividing the Loaves',
  'When the loaves were divided, everyone ate and was satisfied. We need to calculate how many full baskets each group gets.',
  'Write a function named `distributeLoavesChirho` that accepts `totalLoavesChirho` and `groupCountChirho`.

Return the number of whole loaves each group receives (use `Math.floor` for integer division).',
  'function distributeLoavesChirho(totalLoavesChirho, groupCountChirho) {
  // Your code here
}',
  'function distributeLoavesChirho(totalLoavesChirho, groupCountChirho) {
  return Math.floor(totalLoavesChirho / groupCountChirho);
}',
  'Mark 6:41 - ...and brake the loaves, and gave them to his disciples to set before them...',
  'beginner',
  'javascript',
  10,
  3,
  108,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'KDCLg8ZDAT2gGpqx-x31g',
  'Arlfj_2PVHwFWShzylove',
  'Should calculate whole loaves per group',
  'assert.strictEqual(distributeLoavesChirho(50, 12), 4);',
  1,
  0
);

-- Quest 110: Two by Two
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'LspksSaJsX67NJka9PkA9',
  'Two by Two',
  'Jesus sent his disciples out two by two. We must verify that a group can be evenly paired.',
  'Write a function named `canBePairedChirho` that accepts an array of `disciplesChirho`.

Return `true` if the number of disciples is even (divisible by 2), and `false` otherwise.',
  'function canBePairedChirho(disciplesChirho) {
  // Your code here
}',
  'function canBePairedChirho(disciplesChirho) {
  return disciplesChirho.length % 2 === 0;
}',
  'Mark 6:7 - And he called unto him the twelve, and began to send them forth by two and two...',
  'beginner',
  'javascript',
  10,
  3,
  109,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'eWcHXk_CQ51Pnf4ICEBD7',
  'LspksSaJsX67NJka9PkA9',
  'Should return true for even array length',
  'assert.strictEqual(canBePairedChirho([''A'', ''B'', ''C'', ''D'']), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'czUXHqpZjRFQCehx3mh5J',
  'LspksSaJsX67NJka9PkA9',
  'Should return false for odd array length',
  'assert.strictEqual(canBePairedChirho([''A'', ''B'', ''C'']), false);',
  1,
  1
);

-- Quest 111: Tree by its Fruit
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'I8LrnF5PNolsUIMzpjSNz',
  'Tree by its Fruit',
  'A tree is known by its fruit. In code, we judge an object by the values of its properties.',
  'Write a function named `isGoodTreeChirho` that accepts a `treeObjectChirho`.

If the object has a property `fruitChirho` with the value `''good''`, return `true`. Otherwise, return `false`.',
  'function isGoodTreeChirho(treeObjectChirho) {
  // Your code here
}',
  'function isGoodTreeChirho(treeObjectChirho) {
  return treeObjectChirho.fruitChirho === ''good'';
}',
  'Luke 6:44 - For every tree is known by his own fruit.',
  'beginner',
  'javascript',
  10,
  3,
  110,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '7Y4kzx2n-90rY-IyniAbc',
  'I8LrnF5PNolsUIMzpjSNz',
  'Should identify a good tree',
  'assert.strictEqual(isGoodTreeChirho({ type: ''Fig'', fruitChirho: ''good'' }), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '5mJfJ4bd2P1v6Ml9Lkti9',
  'I8LrnF5PNolsUIMzpjSNz',
  'Should identify a bad tree',
  'assert.strictEqual(isGoodTreeChirho({ type: ''Thorn'', fruitChirho: ''bad'' }), false);',
  1,
  1
);

-- Quest 112: Render to Caesar
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '7NGgppL0yrhajfDf-RT0G',
  'Render to Caesar',
  'We are to give what is owed. You must calculate the tax due on a specific amount.',
  'Write a function named `calculateTaxChirho` that accepts `amountChirho` and `rateChirho` (a percentage between 0 and 1).

Return the calculated tax amount.',
  'function calculateTaxChirho(amountChirho, rateChirho) {
  // Your code here
}',
  'function calculateTaxChirho(amountChirho, rateChirho) {
  return amountChirho * rateChirho;
}',
  'Mark 12:17 - And Jesus answering said unto them, Render to Caesar the things that are Caesar''s, and to God the things that are God''s.',
  'beginner',
  'javascript',
  10,
  3,
  111,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'gO1dZswk-zdGIFolRo9Sd',
  '7NGgppL0yrhajfDf-RT0G',
  'Should calculate tax correctly',
  'assert.strictEqual(calculateTaxChirho(100, 0.15), 15);',
  1,
  0
);

-- Quest 113: The First Shall Be Last
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ICy6GNhR3alJ2-MF6PaSB',
  'The First Shall Be Last',
  'In God''s kingdom, the order of the world is often inverted. We must be able to reverse the order of our data.',
  'Write a function named `reverseProcessionChirho` that accepts an array of `peopleChirho`.

Return a new array with the elements in reverse order.',
  'function reverseProcessionChirho(peopleChirho) {
  // Your code here
}',
  'function reverseProcessionChirho(peopleChirho) {
  return [...peopleChirho].reverse();
}',
  'Matthew 20:16 - So the last shall be first, and the first last: for many be called, but few chosen.',
  'beginner',
  'javascript',
  10,
  3,
  112,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'GSCOQ7rtkuJzMVASf1x-Y',
  'ICy6GNhR3alJ2-MF6PaSB',
  'Should reverse the array',
  'assert.deepStrictEqual(reverseProcessionChirho([''First'', ''Middle'', ''Last'']), [''Last'', ''Middle'', ''First'']);',
  1,
  0
);

-- Quest 114: Many Mansions
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'm5SyhqVnUiLHkrqZbUZMB',
  'Many Mansions',
  'Jesus prepares a place for us. Sometimes we need to prepare space in our code by creating an array of a specific size.',
  'Write a function named `prepareMansionsChirho` that accepts a number `countChirho`.

Return a new array containing that many strings, where each string is `"Mansion"`. (Hint: use `Array(n).fill()`).',
  'function prepareMansionsChirho(countChirho) {
  // Your code here
}',
  'function prepareMansionsChirho(countChirho) {
  return Array(countChirho).fill(''Mansion'');
}',
  'John 14:2 - In my Father''s house are many mansions: if it were not so, I would have told you. I go to prepare a place for you.',
  'intermediate',
  'javascript',
  15,
  5,
  113,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '8FTNClbVsuskhsy8fUqaR',
  'm5SyhqVnUiLHkrqZbUZMB',
  'Should create array of correct size and content',
  'assert.deepStrictEqual(prepareMansionsChirho(3), [''Mansion'', ''Mansion'', ''Mansion'']);',
  1,
  0
);

-- Quest 115: Salt of the Earth
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'uPrFwbV5Vr1_niim1Tn60',
  'Salt of the Earth',
  'If salt has lost its savor, it is good for nothing. We must remove values that have lost their worth (null or undefined) from our data.',
  'Write a function named `purifySaltChirho` that accepts an array `saltArrayChirho` containing strings and null/undefined values.

Return a new array containing only the valid strings, removing any `null` or `undefined` items.',
  'function purifySaltChirho(saltArrayChirho) {
  // Your code here
}',
  'function purifySaltChirho(saltArrayChirho) {
  return saltArrayChirho.filter(item => item !== null && item !== undefined);
}',
  'Matthew 5:13 - Ye are the salt of the earth: but if the salt have lost his savour, wherewith shall it be salted?',
  'beginner',
  'javascript',
  10,
  3,
  114,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'cuVqP61Ewh6Ay4NBKsSV-',
  'uPrFwbV5Vr1_niim1Tn60',
  'Should remove null and undefined',
  'assert.deepStrictEqual(purifySaltChirho([''Salty'', null, ''Savory'', undefined]), [''Salty'', ''Savory'']);',
  1,
  0
);

-- Quest 116: Iron Sharpens Iron
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'qZzkJNqj-GRd9vnePcvu2',
  'Iron Sharpens Iron',
  'As iron sharpens iron, so one person sharpens another. We compare values to see which is greater, or ''sharper''.',
  'Write a function named `findSharperIronChirho` that accepts two numbers, `ironOneChirho` and `ironTwoChirho`.

Return the greater of the two numbers.',
  'function findSharperIronChirho(ironOneChirho, ironTwoChirho) {
  // Your code here
}',
  'function findSharperIronChirho(ironOneChirho, ironTwoChirho) {
  return Math.max(ironOneChirho, ironTwoChirho);
}',
  'Proverbs 27:17 - Iron sharpeneth iron; so a man sharpeneth the countenance of his friend.',
  'beginner',
  'javascript',
  10,
  3,
  115,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'eQbkgbsvSWAQR13nXlNUO',
  'qZzkJNqj-GRd9vnePcvu2',
  'Should return the greater number',
  'assert.strictEqual(findSharperIronChirho(10, 20), 20);',
  1,
  0
);

-- Quest 117: A Cord of Three Strands
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'Acp8QvzdGIlXbda-HoU-v',
  'A Cord of Three Strands',
  'A threefold cord is not quickly broken. We can join separate strings together to make them one strong unit.',
  'Write a function named `weaveCordChirho` that accepts three strings: `strand1`, `strand2`, and `strand3`.

Return a single string where the three strands are joined by hyphens (e.g., "A-B-C").',
  'function weaveCordChirho(strand1, strand2, strand3) {
  // Your code here
}',
  'function weaveCordChirho(strand1, strand2, strand3) {
  return [strand1, strand2, strand3].join(''-'');
}',
  'Ecclesiastes 4:12 - And if one prevail against him, two shall withstand him; and a threefold cord is not quickly broken.',
  'beginner',
  'javascript',
  10,
  3,
  116,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'YOpnm62Ys7ka3ezyIcrua',
  'Acp8QvzdGIlXbda-HoU-v',
  'Should join three strings with hyphens',
  'assert.strictEqual(weaveCordChirho(''Faith'', ''Hope'', ''Love''), ''Faith-Hope-Love'');',
  1,
  0
);

-- Quest 118: Measuring the Temple
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'agcYTuXOGscR1R17Z0XYL',
  'Measuring the Temple',
  'John was given a reed to measure the temple. We must be able to calculate dimensions, such as area.',
  'Write a function named `measureTempleAreaChirho` that accepts `lengthChirho` and `widthChirho`.

Return the area (length multiplied by width).',
  'function measureTempleAreaChirho(lengthChirho, widthChirho) {
  // Your code here
}',
  'function measureTempleAreaChirho(lengthChirho, widthChirho) {
  return lengthChirho * widthChirho;
}',
  'Revelation 11:1 - And there was given me a reed like unto a rod: and the angel stood, saying, Rise, and measure the temple of God...',
  'beginner',
  'javascript',
  10,
  3,
  117,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'TAEO2Pmr68Bg3YIySpEP2',
  'agcYTuXOGscR1R17Z0XYL',
  'Should calculate area correctly',
  'assert.strictEqual(measureTempleAreaChirho(10, 20), 200);',
  1,
  0
);

-- Quest 119: The Lost Sheep's Position
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ce2ilfSrd7Y-nMbx_naqw',
  'The Lost Sheep''s Position',
  'The shepherd goes after the lost sheep until he finds it. We must find exactly where an item is located in a list.',
  'Write a function named `findSheepLocationChirho` that accepts a `flockArrayChirho` and a `sheepNameChirho`.

Return the index of the `sheepNameChirho` in the array. If it is not found, return `-1`.',
  'function findSheepLocationChirho(flockArrayChirho, sheepNameChirho) {
  // Your code here
}',
  'function findSheepLocationChirho(flockArrayChirho, sheepNameChirho) {
  return flockArrayChirho.indexOf(sheepNameChirho);
}',
  'Luke 15:4 - What man of you, having an hundred sheep, if he lose one of them, doth not leave the ninety and nine...',
  'beginner',
  'javascript',
  10,
  3,
  118,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  't8NslomI--3nVusW4Kq4k',
  'ce2ilfSrd7Y-nMbx_naqw',
  'Should find the index of the sheep',
  'assert.strictEqual(findSheepLocationChirho([''A'', ''B'', ''LostOne''], ''LostOne''), 2);',
  1,
  0
);

-- Quest 120: No Man Can Serve Two Masters
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'aLGz3hcgdX1ouzSXRQOvC',
  'No Man Can Serve Two Masters',
  'You cannot serve God and mammon. You must ensure an object does not try to hold conflicting loyalties.',
  'Write a function named `checkLoyaltyChirho` that accepts a `servantObjectChirho`.

If the object has both `servesGodChirho: true` AND `servesMammonChirho: true`, return `"Conflicted"`. Otherwise, return `"Faithful"`.',
  'function checkLoyaltyChirho(servantObjectChirho) {
  // Your code here
}',
  'function checkLoyaltyChirho(servantObjectChirho) {
  if (servantObjectChirho.servesGodChirho && servantObjectChirho.servesMammonChirho) {
    return ''Conflicted'';
  }
  return ''Faithful'';
}',
  'Matthew 6:24 - No man can serve two masters... Ye cannot serve God and mammon.',
  'beginner',
  'javascript',
  10,
  3,
  119,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'k6XWtfleqs1snC37kHmgZ',
  'aLGz3hcgdX1ouzSXRQOvC',
  'Should return Conflicted if serving both',
  'assert.strictEqual(checkLoyaltyChirho({servesGodChirho: true, servesMammonChirho: true}), ''Conflicted'');',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '9ZdCLtnONdpeyez9Vw-kz',
  'aLGz3hcgdX1ouzSXRQOvC',
  'Should return Faithful if serving one',
  'assert.strictEqual(checkLoyaltyChirho({servesGodChirho: true, servesMammonChirho: false}), ''Faithful'');',
  1,
  1
);

-- Quest 121: The Eleventh Hour
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'm97lRoai9B8TpTql4aoMd',
  'The Eleventh Hour',
  'The master of the vineyard hired laborers even at the eleventh hour. We must be able to convert time to understand this.',
  'Write a function named `hoursToMinutesChirho` that accepts `hoursChirho`.

Return the number of minutes in that many hours.',
  'function hoursToMinutesChirho(hoursChirho) {
  // Your code here
}',
  'function hoursToMinutesChirho(hoursChirho) {
  return hoursChirho * 60;
}',
  'Matthew 20:6 - And about the eleventh hour he went out, and found others standing idle...',
  'beginner',
  'javascript',
  10,
  3,
  120,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'oq545Vg4z_9XYA41EuzSK',
  'm97lRoai9B8TpTql4aoMd',
  'Should convert 11 hours to minutes',
  'assert.strictEqual(hoursToMinutesChirho(11), 660);',
  1,
  0
);

-- Quest 122: Sowing Bountifully
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'nxESRfl-oV6Y6QZCL1F5w',
  'Sowing Bountifully',
  'He which soweth bountifully shall reap also bountifully. We will multiply the seeds sown to represent the harvest.',
  'Write a function named `reapBountifullyChirho` that accepts an array of `seedsChirho` (numbers).

Return a new array where every number is multiplied by `100`.',
  'function reapBountifullyChirho(seedsChirho) {
  // Your code here
}',
  'function reapBountifullyChirho(seedsChirho) {
  return seedsChirho.map(seed => seed * 100);
}',
  '2 Corinthians 9:6 - But this I say, He which soweth sparingly shall reap also sparingly; and he which soweth bountifully shall reap also bountifully.',
  'beginner',
  'javascript',
  10,
  3,
  121,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'FmxdllDd01XrdbCOa4Qel',
  'nxESRfl-oV6Y6QZCL1F5w',
  'Should multiply all seeds by 100',
  'assert.deepStrictEqual(reapBountifullyChirho([1, 2, 3]), [100, 200, 300]);',
  1,
  0
);

-- Quest 123: The Body of Christ
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'KVTaETZpivC9-RqtGkkpL',
  'The Body of Christ',
  'For as the body is one, and hath many members, so also is Christ. We can combine different parts (objects) into one body.',
  'Write a function named `unifyBodyChirho` that accepts two objects: `headChirho` and `feetChirho`.

Return a single new object that contains the properties of both.',
  'function unifyBodyChirho(headChirho, feetChirho) {
  // Your code here
}',
  'function unifyBodyChirho(headChirho, feetChirho) {
  return { ...headChirho, ...feetChirho };
}',
  '1 Corinthians 12:12 - For as the body is one, and hath many members, and all the members of that one body, being many, are one body: so also is Christ.',
  'intermediate',
  'javascript',
  15,
  5,
  122,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'qGLSdXtqVCd0_TA2jnx-u',
  'KVTaETZpivC9-RqtGkkpL',
  'Should combine two objects',
  'const head = { thinking: true }; const feet = { walking: true }; assert.deepStrictEqual(unifyBodyChirho(head, feet), { thinking: true, walking: true });',
  1,
  0
);

-- Quest 124: Pearls Before Swine
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '7PKkMM13lWGQ6LLc7O-fl',
  'Pearls Before Swine',
  'Give not that which is holy unto the dogs, neither cast ye your pearls before swine. We must filter our values to protect what is precious.',
  'Write a function named `protectPearlsChirho` that accepts an array of strings.

Return a new array that filters out (excludes) any string strictly equal to `''swine''`.',
  'function protectPearlsChirho(itemsChirho) {
  // Your code here
}',
  'function protectPearlsChirho(itemsChirho) {
  return itemsChirho.filter(item => item !== ''swine'');
}',
  'Matthew 7:6 - Give not that which is holy unto the dogs, neither cast ye your pearls before swine...',
  'beginner',
  'javascript',
  10,
  3,
  123,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'Fkjep4lobru74kDFk8nT3',
  '7PKkMM13lWGQ6LLc7O-fl',
  'Should remove ''swine'' from array',
  'assert.deepStrictEqual(protectPearlsChirho([''pearl'', ''swine'', ''wisdom'']), [''pearl'', ''wisdom'']);',
  1,
  0
);

-- Quest 125: The Good Samaritan
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'QUbJWIw9Ub-Za-8cXT_jO',
  'The Good Samaritan',
  'The Good Samaritan showed mercy when others did not. We must find the specific object in a list that demonstrates mercy.',
  'Write a function named `findNeighborChirho` that accepts an array of people objects.

Return the first object where the property `showedMercyChirho` is `true`.',
  'function findNeighborChirho(peopleChirho) {
  // Your code here
}',
  'function findNeighborChirho(peopleChirho) {
  return peopleChirho.find(p => p.showedMercyChirho === true);
}',
  'Luke 10:36-37 - ...He that shewed mercy on him. Then said Jesus unto him, Go, and do thou likewise.',
  'intermediate',
  'javascript',
  15,
  5,
  124,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'XBzaEymFxr-q9_q6oSWGB',
  'QUbJWIw9Ub-Za-8cXT_jO',
  'Should find the merciful person',
  'const people = [{name: ''Priest'', showedMercyChirho: false}, {name: ''Samaritan'', showedMercyChirho: true}]; assert.strictEqual(findNeighborChirho(people).name, ''Samaritan'');',
  1,
  0
);

-- Quest 126: Seven Years of Plenty
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'gJjVDtGwxpbFVY0pfF3xR',
  'Seven Years of Plenty',
  'Joseph gathered corn as the sand of the sea. We must calculate the total accumulation of a harvest over several years.',
  'Write a function named `gatherHarvestChirho` that accepts an array of harvest numbers.

Use `.reduce()` to return the sum of all the harvests.',
  'function gatherHarvestChirho(harvestsChirho) {
  // Your code here
}',
  'function gatherHarvestChirho(harvestsChirho) {
  return harvestsChirho.reduce((acc, curr) => acc + curr, 0);
}',
  'Genesis 41:49 - And Joseph gathered corn as the sand of the sea, very much, until he left numbering...',
  'beginner',
  'javascript',
  10,
  3,
  125,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  '2zhD2iseLg3iI-iI0jV-g',
  'gJjVDtGwxpbFVY0pfF3xR',
  'Should sum the harvests',
  'assert.strictEqual(gatherHarvestChirho([100, 200, 300]), 600);',
  1,
  0
);

-- Quest 127: Writing on the Wall
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ZOWKUCR9HV4MVsSbV82Tt',
  'Writing on the Wall',
  'Mene, Mene, Tekel, Upharsin. The writing on the wall was analyzed. We must count the characters in a message to understand its weight.',
  'Write a function named `weighMessageChirho` that accepts a `messageChirho` string.

Return the length of the string.',
  'function weighMessageChirho(messageChirho) {
  // Your code here
}',
  'function weighMessageChirho(messageChirho) {
  return messageChirho.length;
}',
  'Daniel 5:25 - And this is the writing that was written, MENE, MENE, TEKEL, UPHARSIN.',
  'beginner',
  'javascript',
  10,
  3,
  126,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'APpy3_eQD3JtDxAXs8N01',
  'ZOWKUCR9HV4MVsSbV82Tt',
  'Should return string length',
  'assert.strictEqual(weighMessageChirho(''Mene''), 4);',
  1,
  0
);

-- Quest 128: New Wine in Old Bottles
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'ZmiaZEvz0IX3c_3zcKuF0',
  'New Wine in Old Bottles',
  'New wine must be put into new bottles. We must replace old data with new data.',
  'Write a function named `replaceWineChirho` that accepts a string `sentenceChirho`.

Replace the word `''Old''` with `''New''` and return the new string.',
  'function replaceWineChirho(sentenceChirho) {
  // Your code here
}',
  'function replaceWineChirho(sentenceChirho) {
  return sentenceChirho.replace(''Old'', ''New'');
}',
  'Matthew 9:17 - Neither do men put new wine into old bottles: else the bottles break...',
  'beginner',
  'javascript',
  10,
  3,
  127,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'CwgjThFOZWCk-_ziZKZ4U',
  'ZmiaZEvz0IX3c_3zcKuF0',
  'Should replace Old with New',
  'assert.strictEqual(replaceWineChirho(''Old Wine''), ''New Wine'');',
  1,
  0
);

-- Quest 129: Walking in the Light
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'kJ-lrKuDJWikhS2_dkXx_',
  'Walking in the Light',
  'If we walk in the light, we have fellowship one with another. We must verify that a boolean condition is true.',
  'Write a function named `checkLightChirho` that accepts `isLightChirho` (boolean).

If `isLightChirho` is true, return `''Fellowship''`. Otherwise, return `''Darkness''`.',
  'function checkLightChirho(isLightChirho) {
  // Your code here
}',
  'function checkLightChirho(isLightChirho) {
  return isLightChirho ? ''Fellowship'' : ''Darkness'';
}',
  '1 John 1:7 - But if we walk in the light, as he is in the light, we have fellowship one with another...',
  'beginner',
  'javascript',
  10,
  3,
  128,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'eE4Xi2e5P9oC5evEO-p0m',
  'kJ-lrKuDJWikhS2_dkXx_',
  'Should return Fellowship if true',
  'assert.strictEqual(checkLightChirho(true), ''Fellowship'');',
  1,
  0
);

-- Quest 130: Alpha and Omega
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  'NtqE10bcGurO9mYlg9jmK',
  'Alpha and Omega',
  'I am Alpha and Omega, the beginning and the end. We must identify the first and last elements of a sequence.',
  'Write a function named `getAlphaOmegaChirho` that accepts a string `wordChirho`.

Return a new string containing only the first character and the last character of the input.',
  'function getAlphaOmegaChirho(wordChirho) {
  // Your code here
}',
  'function getAlphaOmegaChirho(wordChirho) {
  return wordChirho[0] + wordChirho[wordChirho.length - 1];
}',
  'Revelation 22:13 - I am Alpha and Omega, the beginning and the end, the first and the last.',
  'intermediate',
  'javascript',
  15,
  5,
  129,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'xTSVXg7FUc1fUtyRytFlL',
  'NtqE10bcGurO9mYlg9jmK',
  'Should return first and last chars',
  'assert.strictEqual(getAlphaOmegaChirho(''Eternal''), ''El'');',
  1,
  0
);

-- Quest 131: The Book of Life
INSERT INTO quests_chirho (
  quest_id_chirho, title_chirho, description_chirho, instructions_chirho,
  starter_code_chirho, solution_code_chirho, header_verse_chirho,
  difficulty_level_chirho, quest_type_chirho,
  coin_reward_chirho, bonus_coin_no_solution_view_chirho,
  order_index_chirho, is_active_chirho, created_at_chirho, updated_at_chirho
) VALUES (
  '8Ovct_nfS_yx7kfxF8YcG',
  'The Book of Life',
  'We must check if a name is written in the Book of Life. In programming, this is checking if an array contains a specific value.',
  'Write a function named `checkBookOfLifeChirho` that accepts `bookArrayChirho` (array of names) and `nameChirho`.

Return `true` if the name is in the array, and `false` otherwise.',
  'function checkBookOfLifeChirho(bookArrayChirho, nameChirho) {
  // Your code here
}',
  'function checkBookOfLifeChirho(bookArrayChirho, nameChirho) {
  return bookArrayChirho.includes(nameChirho);
}',
  'Revelation 20:15 - And whosoever was not found written in the book of life was cast into the lake of fire.',
  'beginner',
  'javascript',
  10,
  3,
  130,
  1,
  1766512483,
  1766512483
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'BMrtZasJyRCke5TMi8NSM',
  '8Ovct_nfS_yx7kfxF8YcG',
  'Should return true if name is found',
  'assert.strictEqual(checkBookOfLifeChirho([''Paul'', ''Barnabas''], ''Paul''), true);',
  1,
  0
);

INSERT INTO quest_tests_chirho (
  test_id_chirho, quest_id_chirho, test_name_chirho, test_code_chirho,
  is_visible_chirho, test_order_chirho
) VALUES (
  'NTEfNoREMyXZswbumkEyq',
  '8Ovct_nfS_yx7kfxF8YcG',
  'Should return false if name is not found',
  'assert.strictEqual(checkBookOfLifeChirho([''Paul'', ''Barnabas''], ''Judas''), false);',
  1,
  1
);

COMMIT;

-- Import complete!