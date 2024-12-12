<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Indian Street Food</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

  <!-- Header Section -->
  <header>
    <div class="container">
      <h1>Indian Street Food</h1>
      <p>Explore the delicious flavors of India!</p>
    </div>
  </header>

  <!-- Food List Section -->
  <section id="food-section">
    <div class="food-card">
      <img src="c:\Users\ASUS\Downloads\360_F_305356563_RjpA8bNIfjd2s78JpTt3Ed6hKWPUBOwS.jpg" alt="Pani Puri">
      <h2>Pani Puri</h2>
      <p>A popular snack made of crispy puris filled with spicy water and tamarind chutney.</p>
      <button onclick="showInfo('Pani Puri')">Learn More</button>
    </div>

    <div class="food-card">
      <img src="c:\Users\ASUS\Downloads\Ahemdabad-style-vada-pav-WS.jpg" alt="Vada Pav">
      <h2>Vada Pav</h2>
      <p>A Mumbai-style burger made with spiced mashed potatoes in a bun, served with chutneys.</p>
      <button onclick="showInfo('Vada Pav')">Learn More</button>
    </div>

    <div class="food-card">
      <img src="c:\Users\ASUS\Downloads\Dahi-Puri-scaled-e1722868340935-720x405.webp" alt="Chaat">
      <h2>Chaat</h2>
      <p>Mixture of potatoes, chickpeas, yogurt, and chutneys, offering a blend of tangy and sweet flavors.</p>
      <button onclick="showInfo('Chaat')">Learn More</button>
    </div>

    <div class="food-card">
      <img src="c:\Users\ASUS\Downloads\kmc_20230226_232129.jpg" alt="Samosa">
      <h2>Samosa</h2>
      <p>Triangular fried pastry filled with spiced potatoes, peas, and sometimes meat.</p>
      <button onclick="showInfo('Samosa')">Learn More</button>
    </div>

    <div class="food-card">
      <img src="c:\Users\ASUS\Downloads\53314156.webp" alt="Chole Bature">
      <h2>Chole Bature</h2>
      <p>A combination of spicy chickpeas (chole) and deep-fried bread (bature).</p>
      <button onclick="showInfo('Chole Bature')">Learn More</button>
    </div>
  </section>

  <!-- Footer Section -->
  <footer>
    <div class="container">
      <p>Enjoy the best of Indian street food! Explore, taste, and enjoy.</p>
    </div>
  </footer>

  <script src="script.js"></script>
</body>
</html>

//css

/* Resetting default margins and padding */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Body and general styling */
body {
  font-family: 'Arial', sans-serif;
  background-color: #f8f8f8;
  color: #333;
  line-height: 1.6;
}

.container {
  width: 80%;
  margin: 0 auto;
}

/* Header section styling */
header {
  background-color: #d9534f;
  color: white;
  padding: 40px 0;
  text-align: center;
}

header h1 {
  font-size: 3rem;
  margin-bottom: 10px;
}

header p {
  font-size: 1.2rem;
}

/* Food section layout with horizontal display */
#food-section {
  display: flex;
  justify-content: space-between;
  margin-top: 40px;
  overflow-x: auto; /* Allows scrolling on smaller screens */
  padding-bottom: 20px; /* Space at the bottom for scrollbar */
}

.food-card {
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  width: 300px;
  margin: 10px;
  padding: 20px;
  text-align: center;
  flex-shrink: 0; /* Prevents shrinking */
}

.food-card img {
  width: 100%;
  height: auto;
  border-radius: 8px;
}

.food-card h2 {
  font-size: 1.6rem;
  color: #d9534f;
  margin: 20px 0;
}

.food-card p {
  font-size: 1.1rem;
  color: #555;
}

.food-card button {
  background-color: #d9534f;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
  font-size: 1rem;
  transition: background-color 0.3s ease;
}

.food-card button:hover {
  background-color: #c9302c;
}

/* Footer section styling */
footer {
  background-color: #333;
  color: white;
  padding: 20px 0;
  text-align: center;
  margin-top: 40px;
}

/* Mobile Responsiveness */
@media (max-width: 768px) {
  #food-section {
    flex-direction: row;
    justify-content: start;
    overflow-x: scroll;
  }

  .food-card {
    width: 250px;
    margin: 10px;
  }
}

//js

// JavaScript function to show a pop-up alert with more info about the selected food
function showInfo(foodName) {
  let foodInfo = {
    'Pani Puri': 'Pani Puri is a famous Indian street food, typically consisting of small, round, hollow puris filled with a spicy and tangy water, tamarind chutney, and boiled potatoes or chickpeas. It is enjoyed all over India.',
    'Vada Pav': 'Vada Pav is a popular street food in Mumbai, consisting of a spicy potato fritter served in a bun with chutneys. It is often called the "Indian Burger".',
    'Chaat': 'Chaat refers to a variety of snacks that are tangy, spicy, and sweet. It is typically made from potatoes, chickpeas, yogurt, and chutneys.',
    'Samosa': 'Samosa is a fried pastry filled with spiced potatoes, peas, and sometimes meat. It is one of the most widely loved snacks in India.',
    'Chole Bature': 'Chole Bature is a delicious North Indian dish consisting of spicy chickpeas (chole) served with deep-fried bread (bature), and is often enjoyed with pickles and yogurt.'
  };

  alert(foodInfo[foodName]);
}
