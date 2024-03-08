#!/usr/bin/python3
"""a function that queries the Reddit API and returns 
the number of subscribers"""
import json
import requests
import sys


def number_of_subscribers(subreddit):
    # Set a custom User-Agent to avoid "Too Many Requests" error
    headers = {"User-Agent": "/u/ledbag123 API Python for Holberton School"}
    
    try:
        # Construct the URL for the subreddit API
        url = f"https://www.reddit.com/r/{subreddit}/about.json"
        
        # Send a GET request to the API
        response = requests.get(url, headers=headers, allow_redirects=False)
        
        # Check if the response is successful (status code 200)
        if response.status_code == 200:
            # Parse the JSON response
            data = response.json()
            
            # Extract and return the number of subscribers
            return data["data"]["subscribers"]
        else:
            # If the subreddit is invalid or any other error occurs, return 0
            return 0
    except Exception as e:
        # Return 0 if an exception occurs
        print(f"An error occurred: {e}")
        return 0
