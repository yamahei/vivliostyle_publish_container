FROM node:18-slim

RUN apt-get update
RUN apt-get install -y libgtk-3.0 libnss3 libdrm-dev libgbm-dev libasound2 fonts-ipaexfont
RUN npm init --yes
RUN npm install -g @vivliostyle/cli
#RUN yarn add @vivliostyle/theme-bunko
RUN yarn add @vivliostyle/theme-techbook

WORKDIR /workspaces
VOLUME /workspaces

#以下は対話式なので成功しない
#RUN npm create book ./≪本の名前≫
#RUN cd ./≪本の名前≫
#RUN npm run build

CMD ["/bin/sh"]
#ENTRYPOINT ["vivliostyle"]
#EXPOSE 8080
