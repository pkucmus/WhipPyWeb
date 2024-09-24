FROM python:3.12

ENV PYTHONUNBUFFERED=1
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
ENV PIP_DEFAULT_TIMEOUT=100
ENV PATH="/root/.local/bin:${PATH}"

RUN python3 -m pip install pipx

ARG WHIPPYWEB_VERSION
RUN pipx install "whippyweb==${WHIPPYWEB_VERSION}"

CMD ["whippyweb", "run"]
