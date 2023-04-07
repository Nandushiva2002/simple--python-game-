
# Use a lightweight Python image
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the game program to the container
COPY guess_the_number.py .

# Install Flask, a Python web framework
RUN pip install flask

# Expose port 8000
EXPOSE 8000

# Start the web server and run the game
CMD ["python", "-u", "-c", "from flask import Flask; app = Flask(__name__); @app.route('/'); def game(): import guess_the_number; return guess_the_number.play() if __name__ == '__main__': app.run(host='0.0.0.0', port=8000)"]

