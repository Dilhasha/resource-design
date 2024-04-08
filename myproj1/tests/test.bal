import ballerina/test;
@test:Config{}
function mytest() returns error? {
    _ = check main();

}