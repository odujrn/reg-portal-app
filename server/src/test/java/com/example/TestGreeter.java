package com.example; 

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class TestGreeter {
    @Test
    public void testSayHello() {
        Greeter greeter = new Greeter();
        assertEquals("Hello, World!", greeter.sayHello());
    }
}
