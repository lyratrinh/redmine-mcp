FROM python:3.13-slim

WORKDIR /app

RUN pip install --no-cache-dir redmine-mcp-server

RUN mkdir -p /app/attachments

EXPOSE 8000

ENV REDMINE_URL=https://quynhly.planio.com
ENV SERVER_HOST=0.0.0.0
ENV SERVER_PORT=8000

CMD ["redmine-mcp-server"]
