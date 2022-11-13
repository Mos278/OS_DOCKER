FROM python

WORKDIR /code
COPY ./requirement.txt /code/requirement.txt
RUN pip install --no-cache-dir --upgrade -r requirement.txt


COPY ./file /code/app

CMD ["uvicorn","app.pytest:app","--host","0.0.0.0","--port","80","--reload"]