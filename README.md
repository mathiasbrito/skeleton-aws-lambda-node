# HOW TO USE THIS SKELETON

1. Make sure that you have Node.js Runtime Interface Client
as a dependency in the application:
   ```
   $ npm install aws-lambda-ric
   ```

2. Build the image with `docker run`, the AWS base image already contains the 
   Lambda RIE (Runtime Interface Emulator) for testing:
   ```
   docker build -t lambda .
   ```
4. Run the lambda function using with `docker
run`:
   ```
   docker run -p 9000:8080 lambda:latest
   ```
   
5. Test the function with `curl`:
   ```
   curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'.
   ```

## References
1. [AWS Lambda NodeJS Runtime Interface Client: NPM site](https://www.npmjs.com/package/aws-lambda-ric)
2. [Deploy Node.js Lambda functions with container images](https://docs.aws.amazon.com/lambda/latest/dg/nodejs-image.html)
3. [Create an image from an AWS base image for Lambda](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-create-1)
