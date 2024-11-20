# Recipe App | C# & React | Recipe Management Platform

This project is a recipe management application built using C# for the backend and React for the frontend. The platform allows users to register, log in, browse recipes, and manage their own collection of recipes. Additionally, there is an admin panel that allows for the management of recipe categories and levels.

## Features

- **User Authentication:**
  - **Registration:** Users can create accounts by providing a valid email and password. Registration checks ensure the email and password combination is unique.
  - **Login:** Users can log in with their email and password, and after successful authentication, they are redirected to the homepage.
  - **Logged-in User Display:** The user's name is displayed in the navigation bar once logged in.

- **Recipe Browsing:**
  - **All Recipes Page:** Displays a list of all available recipes, each showing the name, image, and author. Recipes are color-coded according to their category.
  - **Recipe Filtering:** Users can filter recipes based on category or difficulty level.
  - **Recipe Details:** When a recipe is clicked, users can see full details, including ingredients, instructions, and the option to add comments.

- **Personal Dashboard:**
  - **My Recipes:** Users can view all their personal recipes.
  - **Add Recipe:** Users can add new recipes, including the option to select ingredients from an existing list or add new ones with quantities.
  
- **Admin Panel:**
  - **Admin Authentication:** Admin login is handled separately, with the admin credentials stored securely in Redux. Upon successful login, the admin is redirected to the admin panel.
  - **Category Management:** Admins can manage the list of recipe categories and add new ones.
  - **Level Management:** Admins can manage recipe difficulty levels and add new levels.

## Technologies Used

- **Frontend:** React, Redux, Axios, React-Router, CSS
- **Backend:** C# (ASP.NET Core Web API)
- **State Management:** Redux (managing authentication state and recipe data)
- **HTTP Requests:** Axios (for communication with the backend API)
- **Routing:** React Router (for navigation between different pages and components)
- **Styling:** CSS for responsive and appealing UI

## Logic

- **User Authentication:** Ensures users can sign up, log in, and access their personalized recipe collection.
- **Recipe Management:** Allows users to view, add, and filter recipes. Admins can manage categories and difficulty levels.
- **State Management:** Redux handles authentication and state across components, ensuring smooth user navigation and state consistency.

## Setup & Installation

1. **Frontend:**
   - Clone the repository.
   - Navigate to the `frontend` directory and run `npm install` to install the dependencies.
   - Run `npm start` to start the development server and launch the React app.

2. **Backend:**
   - Clone the repository.
   - Open the backend solution in Visual Studio and restore NuGet packages.
   - Run the application using Visual Studio to start the backend API.

## Future Enhancements

- **Admin Role Expansion:** Implement additional roles for admins, moderators, and other users with different permissions.
- **Recipe Search:** Add a more advanced search feature for finding recipes based on ingredients, time, and more.
- **User Profile Enhancements:** Allow users to edit their profile and manage preferences.
- **Improved UI/UX:** Refine the user interface to enhance usability, with options like recipe ratings and suggestions.

---
Feel free to contribute to this project by submitting issues or pull requests for new features, improvements, or bug fixes!
