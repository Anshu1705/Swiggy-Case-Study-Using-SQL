# Swiggy-Case-Study-Using-SQL



Welcome to the Swiggy Restaurants Dataset! 🍽️📊

Our dataset offers a comprehensive insight into the diverse culinary offerings available on Swiggy, one of the leading food delivery platforms. With a rich array of columns capturing key restaurant details, our dataset provides an invaluable resource for anyone interested in exploring the gastronomic landscape represented on Swiggy.

Here's what you'll find in our dataset:

Restaurant Details: Discover a wide variety of eateries by name, address, and other essential information, providing you with a detailed view of the dining options available.

Quality and Cost: Gain insights into the dining experience with average ratings and cost per person, helping you make informed decisions about where to dine based on your preferences and budget.

Cuisine Diversity: Explore the diverse range of cuisines offered, from local favorites to international delights, catering to every palate and preference.

Menu Insights: Dive into the menu categories and explore the tantalizing items available, including details on pricing and whether they are vegetarian or non-vegetarian, helping you choose dishes that suit your taste.

Analytical Potential: With SQL techniques such as filtering, aggregation, and joining, our dataset opens up endless possibilities for analysis, allowing you to uncover trends, preferences, and hidden gems within the Swiggy restaurant ecosystem.

Whether you're a data enthusiast, a foodie seeking culinary inspiration, or a business owner looking to understand the competitive landscape, our Swiggy Restaurants Dataset is your gateway to exploring the vibrant world of dining available through Swiggy. Bon appétit! 🚀🍕












# Swiggy Schema Tables: Description


(1) restaurant_no: This column serves as a unique identifier for each restaurant in the dataset. It helps distinguish between different restaurants and is typically used for referencing and indexing purposes.



(2) restaurant_name: The name of the restaurant. This column identifies the establishment and is often used for display purposes or when referring to specific restaurants in analyses or discussions.



(3) city: Specifies the city where the restaurant is located. It provides geographical information about the restaurant's location, which can be useful for regional analyses or for users searching for restaurants in specific areas.



(4) address: The physical address of the restaurant, providing the location details such as street name, building number, and locality. It helps users navigate to the restaurant's location or contact them for inquiries or reservations.



(5) rating: Represents the average rating of the restaurant. Ratings are typically based on user reviews and provide insights into the overall customer satisfaction and dining experience at the restaurant.



(6) cost_per_person: Indicates the average cost per person for dining at the restaurant. This metric gives an idea of the restaurant's price range and affordability, helping customers plan their dining budgets accordingly.

 (7) cuisine: Describes the type of cuisine offered by the restaurant, such as Italian, Indian, Chinese, etc. It provides information about the restaurant's culinary specialties and helps customers choose restaurants based on their food preferences.

(8) restaurant_link: Contains the website link or URL of the restaurant. This column enables users to access additional information about the restaurant, such as their menu, online ordering options, contact details, etc., by clicking on the provided link.

(9) menu_category: Specifies the category to which the menu item belongs, such as Appetizers, Main Course, Desserts, etc. It organizes the menu items into different sections, making it easier for customers to navigate through the menu.

(10) item: The name of the menu item offered by the restaurant. This column lists the various dishes, beverages, or items available for ordering at the restaurant.

(11) price: Indicates the price of the menu item. It provides information about the cost of individual dishes or items on the menu, helping customers make informed decisions based on their budget.

(12) veg_or_non-veg: Specifies whether the menu item is vegetarian or non-vegetarian. This column helps customers with dietary restrictions or preferences identify suitable food options when browsing through the menu.

# Questions



Q1. HOW MANY RESTAURANTS HAVE A RATING GREATER THAN 4.5?

Q2. WHICH IS THE TOP 1 CITY WITH THE HIGHEST NUMBER OF RESTAURANTS?

Q3. HOW MANY RESTAURANTS HAVE THE WORD "PIZZA" IN THEIR NAME?

Q4. WHAT IS THE MOST COMMON CUISINE AMONG THE RESTAURANTS IN THE DATASET?

Q5. WHAT IS THE AVERAGE RATING OF RESTAURANTS IN EACH CITY?

Q6. WHAT IS THE HIGHEST PRICE OF ITEM UNDER THE 'RECOMMENDED' MENU CATEGORY FOR EACH RESTAURANT?

Q7. MOST EXPENSIVE RESTAURANTS THAT OFFER CUISINE OTHER THAN INDIAN CUISINE.

Q8. FIND THE RESTAURANTS THAT HAVE AN AVERAGE COST WHICH IS HIGHER THAN THE TOTAL AVERAGE COST OF ALL RESTAURANTS TOGETHER.

Q9.RETRIEVE THE DETAILS OF RESTAURANTS THAT HAVE THE SAME NAME BUT ARE LOCATED IN DIFFERENT CITIES.

Q10. WHICH RESTAURANT OFFERS THE MOST NUMBER OF ITEMS IN THE 'MAIN COURSE' CATEGORY?

Q11. LIST THE NAMES OF RESTAURANTS THAT ARE 100% VEGEATARIAN IN ALPHABETICAL ORDER OF RESTAURANT NAME.

Q12. WHICH IS THE RESTAURANT PROVIDING THE LOWEST AVERAGE PRICE FOR ALL ITEMS?

Q13. WHICH TOP 5 RESTAURANT OFFERS HIGHEST NUMBER OF CATEGORIES?

Q14. WHICH RESTAURANT PROVIDES THE HIGHEST PERCENTAGE OF NON-VEGEATARIAN FOOD?




 

 # MY SQL Techniques used

 Table Creation: Defining tables with appropriate data types.
 
Primary Keys: Assigning unique identifiers to each record.

Data Manipulation: Inserting, updating, and deleting records.

Data Filtering: Using WHERE clauses to filter data.

Aggregation Functions: Calculating averages, counts, max, and min values.

JOIN Operations: Combining data from multiple tables.

Subqueries: Performing complex queries within queries.

String Manipulation: Modifying text data using functions.

Grouping and Sorting: Grouping and sorting data based on criteria.

Indexes: Optimizing query performance with indexes.




# Conclusions and Insights

(1) Restaurants with Rating > 4.5: This metric indicates the level of customer satisfaction. A high number of restaurants with ratings above 4.5 suggests a strong food culture and quality service in Bengaluru and Ahmedabad.

(2) Top City with the Highest Number of Restaurants: Identifying the city with the highest number of restaurants showcases the distribution of food establishments. It could indicate areas of high population density or commercial activity.

(3) Restaurants with "Pizza" in Their Name: The prevalence of pizza-themed restaurants may reflect the popularity of this cuisine in Bengaluru.

(4) Most Common Cuisine: Understanding the most common cuisine provides insights into local food preferences and can guide restaurant owners in menu planning and diversification.

(5) Average Rating by City: Variations in average ratings across different cities could highlight differences in food quality, service standards, or customer preferences.

(6) Highest Price of Recommended Items: Knowing the highest-priced items under the 'recommended' category helps identify upscale dining options or premium offerings.

(7) Most Expensive Non-Indian Cuisine Restaurants: Identifying the most expensive non-Indian cuisine restaurants sheds light on high-end dining options catering to specific culinary tastes.

(8) Restaurants with Above-Average Cost: These restaurants likely offer premium dining experiences or specialized cuisines, catering to a more affluent customer base.

(9) Restaurants with the Same Name in Different Cities: This could indicate either chain restaurants or unrelated restaurants coincidentally sharing the same name, highlighting potential branding challenges or opportunities.

(10) Restaurant with Most Main Course Items: This restaurant likely offers a diverse range of main course options, appealing to customers seeking variety in their meals.

(11) 100% Vegetarian Restaurants: Listing these restaurants in alphabetical order provides a convenient reference for vegetarian diners.

(12) Restaurant with the Lowest Average Price: This restaurant may offer budget-friendly dining options, appealing to cost-conscious consumers.

(13) Top 5 Restaurants with Highest Number of Categories: These restaurants likely offer extensive menus with diverse culinary offerings, attracting a wide range of customers.

(14) Restaurant with Highest Percentage of Non-Vegetarian Food: Understanding this metric can help identify restaurants catering to non-vegetarian preferences, potentially influencing dining decisions for both vegetarian and non-vegetarian customers.


