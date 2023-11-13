::: {.cell .markdown}
### Background
:::



::: {.cell .markdown}

In this experiment, you're going to measure the average queue length in the following scenario:


![Scenario for the M/M/1 experiment.](images/mm1-scenario-1.svg)

:::


::: {.cell .markdown}

We know that the mean number of packets in this system is given by ρ/(1−ρ), where ρ=λμ and λ and μ are the rate at which packets arrive at the queue (in packets/second) and the rate at which packets may be served by the queue (in packets/second). 

Generally, the distribution of μ comes from variations in the size of packets arriving at the queue, which has a constant service rate in bits/second - μ is computed by dividing the queue service rate in bits/second by the average packet size in bits.

From the mean number of packets in the system, we can compute the mean number of packets in the queue by substracting the mean number of packets in service: [ρ/(1−ρ)]−ρ=ρ²/(1−ρ)

This mean queue length is the quantity we will be measuring in this experiment.
:::
