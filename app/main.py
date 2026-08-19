from flask import Flask, jsonify
import os

app = Flask(__name__)

# In memory counter

request_count = 0

@app.route("/health")
def health():
    """Health check used by CI, Load Balancers
        and the deploy script in Section 6
    """
    return jsonify(status="Sawa") , 200

@app.route("/")
def index():
    global request_count
    request_count +=1
    return jsonify(
        message = "Niaje from Orbkit",
        version = os.getenv("APP_VERSION", "0.1.0"),
        requests_served = request_count,
    )
if __name__ == "__main__":
    app.run(host="0.0.0.0", port = 8080)

