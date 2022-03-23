// third step create HelloWorldWrapper.h
// wrapper or bridging code between Swift and C++ in Objective-C.

#ifndef HelloWorld_hpp
#define HelloWorld_hpp

#include <stdio.h>
#include <string>
class HelloWorld {
public:
    std::string sayHello();
};
#endif /* HelloWorld_hpp */
