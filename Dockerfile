FROM truthhun/dochub:env

WORKDIR /www/dochub

RUN  wget https://github.com/TruthHun/DocHub/releases/download/v2.4/DocHub.V2.4_linux_amd64.zip \
    && apt install unzip -y \
    && unzip DocHub.V2.4_linux_amd64.zip -d /www/dochub/ \
    && rm -rf /www/dochub/__MACOSX \
    && chmod 0777 -R /www/dochub

CMD [ "./DocHub" ]
