package com.example.kubesample

import io.prometheus.metrics.expositionformats.generated.com_google_protobuf_3_21_7.Metrics


class HelloMetric {
    companion object {
        private val counter = Metrics.Counter.newBuilder()
            .build()
        fun increment() {
            counter.value.inc()
        }

    }
}
