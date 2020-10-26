FROM python:3

LABEL version="1.0"
LABEL repository="https://github.com/StephaneBour/actions-ovh-storage"
LABEL homepage="https://github.com/StephaneBour/actions-ovh-storage"
LABEL maintainer="Stéphane Bour <stephane.bour@gmail.com>"

RUN pip install --upgrade pip && pip install python-swiftclient==3.10.1 && pip install python-keystoneclient==4.1.1

ADD "entrypoint.sh" "/entrypoint.sh"

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
