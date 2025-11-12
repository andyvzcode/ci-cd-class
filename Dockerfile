FROM python:3.14-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv using the official method
RUN pip install uv

COPY pyproject.toml .

# Install dependencies using uv
RUN uv pip install --system --no-cache-dir -e .

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]