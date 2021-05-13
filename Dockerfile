FROM public.ecr.aws/lambda/nodejs:14

COPY lambda.js package.json /var/task/

RUN npm install

CMD ["lambda.handler"]
