FROM articulate/articulate-node:8

COPY ./package.json ./yarn.lock $SERVICE_ROOT/
COPY ./serverless/package.json ./serverless/yarn.lock $SERVICE_ROOT/serverless/

RUN yarn install --pure-lockfile
RUN cd serverless && yarn install --pure-lockfile

COPY ./ $SERVICE_ROOT/

RUN yarn build

RUN chown -R $SERVICE_USER:$SERVICE_USER $SERVICE_ROOT
USER $SERVICE_USER

CMD cd serverless && yarn deploy
