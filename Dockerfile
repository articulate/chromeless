FROM articulate/articulate-node:8

COPY ./ $SERVICE_ROOT/
RUN yarn install && \
    yarn build && \
    yarn pack

RUN cd $SERVICE_ROOT/serverless && \
    yarn install

RUN chown -R $SERVICE_USER:$SERVICE_USER $SERVICE_ROOT
USER $SERVICE_USER

CMD cd $SERVICE_ROOT/serverless && \
    yarn deploy
