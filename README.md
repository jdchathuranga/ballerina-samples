# ballerina-samples
Ballerina samples


Image Serve service.

```
import ballerina/http;
import ballerina/mime;

service /download on new http:Listener(9092) {
    resource function get image() returns http:Response {

        //validate request here, return if unahthorized.
        http:Response outResponse = new;
        outResponse.setFileAsPayload("/Users/chathurangadisanayaka/Desktop/BAL_TEST/img_dl/img.png", mime:IMAGE_PNG);
        return outResponse;
    }
}
```
