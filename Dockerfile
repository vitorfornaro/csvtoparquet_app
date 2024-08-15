FROM python:3.9-slim

RUN pip install streamlit 
RUN pip install pandas
RUN pip install pyarrow

COPY ./app.py /app/app.py

WORKDIR /app

ENTRYPOINT ["streamlit","run","app.py"]