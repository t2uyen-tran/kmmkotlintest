package com.example.kmmkotlintest

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform