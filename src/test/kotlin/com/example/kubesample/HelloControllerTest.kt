package com.example.kubesample

import org.junit.jupiter.api.Assertions.*

class HelloControllerTest {
    // write a test for HelloController
    fun `should return hello`() {
        val helloController = HelloController()
        val response = helloController.hello()
        assertEquals(Response.ofSuccess("Hello"), response)
    }


}