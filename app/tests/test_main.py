from main import app 

def test_health_endpoint():
    """The /health must return 200
        CI blocks the pipeline if this fails"""
    client = app.test_client()
    response = client.get("/health")
    assert response.status_code == 200
    assert response.get_json()["status"] == "Sawa"
    