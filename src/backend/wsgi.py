from app import app
import os

if __name__ == "__main__":
    app.run(port=os.environ.get("FLASK_SERVER_PORT"), debug=True)
