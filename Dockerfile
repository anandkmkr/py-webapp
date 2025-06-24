FROM python:3.13-slim

WORKDIR /app

# Copy HTML and image file
COPY index.html /app/
COPY my-image.jpg /app/

EXPOSE 8000

CMD ["python", "-m", "http.server", "8000"]
