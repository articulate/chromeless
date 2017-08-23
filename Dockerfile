FROM articulate/articulate-node:8

COPY ./ $SERVICE_ROOT/chromeless
RUN cd $SERVICE_ROOT/chromeless && \
    yarn install && \
    yarn build

COPY ./serverless/package.json ./serverless/yarn.lock $SERVICE_ROOT/

RUN yarn install --pure-lockfile
RUN rm -rf $SERVICE_ROOT/chromeless

COPY ./serverless $SERVICE_ROOT/

RUN chown -R $SERVICE_USER:$SERVICE_USER $SERVICE_ROOT
USER $SERVICE_USER

CMD yarn deploy
