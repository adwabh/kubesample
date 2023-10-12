package com.example.kubesample

import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.GetMapping

@RestController

// check if there are any vulnerability in code
class HelloController {
    @GetMapping("/hello")
    fun hello() : Response<String> {
        return Response.ofSuccess(data = "Hello")
    }
}

data class Response<T>(
    val data: T?,
    val success: Boolean,
    val cause: String? = null) {
    companion object {
        fun <T> ofSuccess(data: T): Response<T> {
            return Response(data, true)
        }

        fun ofFailure(cause: String): Response<Nothing> {
            return Response(data = null, false, cause = cause)
        }
    }
}