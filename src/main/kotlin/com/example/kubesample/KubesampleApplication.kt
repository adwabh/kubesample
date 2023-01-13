package com.example.kubesample

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class KubesampleApplication

fun main(args: Array<String>) {
	runApplication<KubesampleApplication>(*args)
}
