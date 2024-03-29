FROM joyzoursky/python-chromedriver:latest

WORKDIR /app
COPY ./test_script.py .
COPY ./requirements.txt .

# upgrade pip
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# CMD [ "python", "test_script.py"]
