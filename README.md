# iOS SwiftUI + MVVM

## Overview
This project is a mobile application developed using Swift and SwiftUI to demostrate MVVM architecture, consisting of two tabs: **Gallery** and **Favourites**. It utilizes the Kingfisher library to load and cache images, improving performance and user experience. The app fetches photos from the JSONPlaceholder API and allows users to mark images as favourites for easy access.

## Screenshots
<p>
<img src="https://github.com/WahibAbdul/ios-mvvm/blob/main/Screenshots/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202024-05-27%20at%2017.48.13.png" alt="Screenshot 1" width="230" height="500">
   <img src="https://github.com/WahibAbdul/ios-mvvm/blob/main/Screenshots/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202024-05-27%20at%2017.48.16.png" alt="Screenshot 1" width="230" height="500">
</p>

## Features

### Gallery Tab
- Displays a gallery of images fetched from [JSONPlaceholder API](https://jsonplaceholder.typicode.com/photos).
- Images are displayed in a 3x3 grid layout.
- Users can tap on an image to view it in a larger size.
- Users can mark images as favourites.

### Favourites Tab
- Displays a list of images marked as favourites.
- Users can view images in a larger size.
- Users can remove images from the list of favourites.

## Tech Stack
- **Language**: Swift
- **UI Framework**: SwiftUI
- **Image Loading and Caching**: Kingfisher

### Why Kingfisher?
Kingfisher is a powerful and easy-to-use library for downloading and caching images. It provides excellent performance for handling a large number of images, which is crucial given the potentially large dataset from the API. By caching images, Kingfisher reduces network load and improves the responsiveness of the app.

## Project Setup and Running

### Prerequisites
- Xcode 12.0 or later
- Swift 5.3 or later

### Steps to Run the Project
1. **Clone the repository**:
   ```bash
   git clone https://github.com/WahibAbdul/ios-mvvm.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd ios-mvvm
   ```
3. **Open the project in Xcode**:
   ```bash
   open Fotos.xcodeproj
   ```
4. **Build and run the project**:
   - Select a simulator or connect a physical device.
   - Press `Cmd + R` to build and run the project.
