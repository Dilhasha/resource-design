import ballerina/io;
import ballerina/jballerina.java;

public function main() returns error? {
    io:println("Hello, World!");
    handle handleStr = java:fromString("resources/mytest.txt");
    handle resourceContent = check readResource(handleStr);
    string? stringResult = java:toString(resourceContent);
    io:println(stringResult);
}

function readResource(handle fileName) returns handle|error =
@java:Method {
    'class: "resource.reader.App",
    name: "readResource"
} external;
