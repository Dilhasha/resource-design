import ballerina/io;
import ballerina/http;
import ballerina/jballerina.java;

public function main() returns error? {
    io:println("Hello, World!");
    handle handleStr = java:fromString("resources/dilhashanazeer/myproj1/0/mytest.txt");
    _ = check readResource(handleStr);
    io:println(check readResource(handleStr));
}

function readResource(handle fileName) returns handle|error =
@java:Method {
    'class: "org.example.Main",
    name: "readResource"
} external;

service "mytest" on new http:Listener(9090) {
resource function post greeting() returns string {
      string message = string `Hello `;
      return message;
   }
}
