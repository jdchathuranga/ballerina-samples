# ballerina-samples
Ballerina samples


Diffrent ways to write REST APIs, note how payload validation has done, and responce returned.

```
service / on new http:Listener(9090) {

    resource function post event(http:Caller caller, http:Request request, @http:Payload json payload) returns http:Created | http:InternalServerError | http:BadRequest | error? {
    
                http:Created created = {
                    body: "body, this could be a json."
                };
                return created;
    
    }
    
 }
```

Another way to respond, using `caller->respond`.
```
    resource function get data(http:Caller caller, http:Request request) {
        http:Response outResponse = new;
        outResponse.setJsonPayload({test:"test"}, "application/json");
        outResponse.statusCode = 200;
        error? err = caller->respond(outResponse);
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
