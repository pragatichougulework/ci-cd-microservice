from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Microservice running on AWS!"

@app.route("/health")
def health():
    return {"status": "ok"}, 200

if __name__ == "__main__":
    # Run on 0.0.0.0 so Docker/ECS can expose it
    app.run(host="0.0.0.0", port=5500)
