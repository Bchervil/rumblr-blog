require "./models"

User.create(username: "john", password: "john", first_name: "John", last_name: "", email: "john@gmail.com", birthday: DateTime.new(507,3,30), image_url: "https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--491536_11.jpg?itok=wBwYyBF0")
User.create(username: "james", password: "james", first_name: "James", last_name: "", email: "james@gmail.com", birthday: DateTime.new(507,3,30), image_url: "https://lovingitvegan.com/wp-content/uploads/2017/11/Vegan-Lentil-Soup-Recipe-Card.jpg")
User.create(username: "tom", password: "tom", first_name: "Tom", last_name: "", email: "tom@gmail.com", birthday: DateTime.new(507,3,30), image_url: "https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/exps16754_TG133212B05_24_2b_WEB.jpg")
User.create(username: "wayne", password: "wayne", first_name: "Wayne", last_name: "", email: "wayne@gmail.com", birthday: DateTime.new(507,3,30), image_url: "https://www.floatingkitchen.net/wp-content/uploads/2016/04/Potato-Pizza-with-Kale-Pesto-1.jpg")

Post.create(title: "Minted pea soup", content: "1. Thinly slice the spring onions, reserving some of the green tops for garnish. Heat the butter, fry the spring onions for 1 min until slightly softened. Add the peas and stock, then bring to the boil.

2. Simmer for 5 mins, then whizz half the soup in a food processor. Return to the pan with the crème fraîche. Reheat gently, taste and add pepper, and salt if it needs it. Ladle into small bowls or cups and saucers, then sprinkle with the reserved spring onion tops.", user_id: 1)

Post.create(title: "Spiced carrot & lentil soup", content: "1. Heat a large saucepan and dry-fry 2 tsp cumin seeds and a pinch of chilli flakes for 1 min, or until they start to jump around the pan and release their aromas.

2. Scoop out about half with a spoon and set aside. Add 2 tbsp olive oil, 600g coarsely grated carrots, 140g split red lentils, 1l hot vegetable stock and 125ml milk to the pan and bring to the boil. 

3. Simmer for 15 mins until the lentils have swollen and softened.

4. Whizz the soup with a stick blender or in a food processor until smooth (or leave it chunky if you prefer).

5. Season to taste and finish with a dollop of plain yogurt and a sprinkling of the reserved toasted spices. Serve with warmed naan breads.", user_id: 2)

Post.create(title: "Brie & potato pizza", content: "1. Cook them in a pan of boiling salted water until tender, 5-7 minutes. Take care not to overcook them or they will start to break up. Meanwhile, preheat the oven to fan 180C/conventional 200C/gas 6 and cut the cheese into thin slices.

2. Unroll the pizza dough and its baking parchment on to a baking sheet and scatter over the potato and cheese slices.

3. Dot the olives all over the pizza, then sprinkle with the rosemary. Drizzle generously with olive oil, grind sea salt and black pepper over the whole thing and bake for 15 minutes. Serve hot, with a tomato and onion or peppery rocket salad.", user_id: 3)

Post.create(title: "Pizza baked potato", content: "1. Heat oven to 200C/180C fan/gas 6. Scrub the potatoes and dry well, then prick several times with a fork. Bake directly on the oven shelf for 1-1½ hrs, until they feel soft. If you are short of time, prick each potato with a fork, wrap in a sheet of kitchen paper and microwave on High for 8-10 mins until soft inside.

2. While the potatoes cook, heat the oil in a small pan and sauté the onion for 5 mins to soften. Stir in the garlic and pepperoni, and cook for 1-2 mins, then add the chopped tomatoes. Bring to the boil, then simmer for 5 mins. Season and stir in half the basil. Spoon over the split potatoes and top each one with a good handful of cheese and the rest of the basil.", user_id: 4)