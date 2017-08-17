FROM articulate/articulate-node:8

COPY ./serverless/package.json ./serverless/yarn.lock $SERVICE_ROOT/

RUN yarn install --pure-lockfile

COPY ./serverless $SERVICE_ROOT/

RUN chown -R $SERVICE_USER:$SERVICE_USER $SERVICE_ROOT
USER $SERVICE_USER

CMD yarn deploy
