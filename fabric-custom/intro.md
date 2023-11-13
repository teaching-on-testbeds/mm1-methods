::: {.cell .markdown}
## Validating the M/M/1 queue result
:::

::: {.cell .markdown}

In this experiment, you will explore the classic result regarding the queue length of the M/M/1 queue with a series of experiments on a testbed platform and with the ns2 simulator.

After completing this lab assignment, you should:

* Know how to run a basic queuing experiment on an experimental research testbed
* Be able to use `tc` to manipulate queues on Linux
* Be able to use the D-ITG traffic generator to generate traffic with specific properties on Linux
* Know how to run a basic queuing experiment in ns2
* Understand how to "sanity-check" an experiment to verify that it is a valid experiment
* Compare analytical, simulation, and testbed experiment results for the average length of the M/M/1 queue

:::


:::notes

To run this experiment on FABRIC, sign in to the [FABRIC portal](https://portal.fabric-testbed.net/). Then, click on JupyterHub and sign in to the FABRIC JupyterHub instance.

In the Jupyter environment, open a terminal (File > New > Terminal) and run

```
git clone https://github.com/teaching-on-testbeds/mm1-methods
```

Use the file browser in the left sidebar of the Jupyter environment to find the `mm1-methods` directory (you may need to click the refresh icon in the file browser, or wait a few moments, before it is visible). Double click on this directory, then on the `start_fabric.ipynb` file to open this notebook.

:::