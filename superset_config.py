import os

SECRET_KEY = os.environ.get("SECRET_KEY", "superset-secret-key")
SQLALCHEMY_DATABASE_URI = os.environ.get("DATABASE_URL")

CACHE_CONFIG = {
    "CACHE_TYPE": "simple"
}

FEATURE_FLAGS = {
    "EMBEDDED_SUPERSET": True,
}

PUBLIC_ROLE_LIKE = "Gamma"
