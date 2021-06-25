# ballerina-samples
Ballerina samples


Diffrent ways to write REST APIs, note how payload validation has done, and responce returned.

```
service / on new http:Listener(9090) {

    resource function post event(http:Caller caller, http:Request request, @http:Payload json payload) returns http:Created | http:InternalServerError | http:BadRequest | error? {
    
                http:Created created = {
                    body: "body, this could be a json.",
                };
                return created;
    
    }
    
 }
```


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
