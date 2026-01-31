FROM python:3.14
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
ENV FLASK_ENV=development
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--debug"]
EXPOSE 8000