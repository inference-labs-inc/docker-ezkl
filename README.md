# EZKL Notebook

A docker container designed to run [`EZKL`] on top of the [jupyter/pytorch-notebook] image.

## Usage

### Run the container

```bash
docker run -it --rm -p 8888:8888 -v $(pwd):/home/jovyan/work inferencelabs/ezkl
```

### Connect to the instance

In the log output, you'll see a message from `ServerApp` that looks like this:

```bash
[C 2024-01-17 23:48:53.459 ServerApp]

    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-80-open.html
    Or copy and paste one of these URLs:
        http://2b1a6acdf1b8:8888/lab?token=734b87251e2e4db06fadd1ac0e1c701e2845f66715247fd2
        http://127.0.0.1:8888/lab?token=734b87251e2e4db06fadd1ac0e1c701e2845f66715247fd2
```

Navigate to the URL in your browser to access the JupyterLab instance.

### Run the example notebooks

The example notebooks from [`EZKL`] are located in the `work` directory. You can run them by opening them in JupyterLab and clicking the "Run" button.

### Run your own notebooks

You can also run your own notebooks by creating or uploading them to the Jupyter lab.

## Preinstalled packages

These packages are preinstalled in the container along with packages from the [jupyter/pytorch-notebook] image.

| Package | Link |
| --- | --- |
| `EZKL` | [GitHub](https://github.com/zkonduit/ezkl) |
| `PyTorch` | [GitHub](https://github.com/pytorch/pytorch) |
| `onnx` | [GitHub](https://github.com/onnx/onnx) |
| `onnxruntime` | [GitHub](https://github.com/microsoft/onnxruntime) |
| `tensorflow` | [GitHub](https://github.com/tensorflow/tensorflow) |
| `requests` | [PyPI](https://pypi.org/project/requests/) |
| `matplotlib` | [GitHub](https://github.com/matplotlib/matplotlib) |
| `numpy` | [GitHub](https://github.com/numpy/numpy) |
| `xgboost` | [GitHub](https://github.com/dmlc/xgboost) |
| `hummingbird-ml` | [GitHub](https://github.com/microsoft/hummingbird) |
| `sk2torch` | [GitHub](https://github.com/InferenceLabs/sk2torch) |
| `web3` | [GitHub](https://github.com/ethereum/web3.py) |
| `py-solc-x` | [GitHub](https://github.com/iamdefinitelyahuman/py-solc-x) |

[`EZKL`]: https://github.com/zkonduit/ezkl "EZKL"
[jupyter/pytorch-notebook]: https://github.com/jupyter/docker-stacks/tree/main/images/pytorch-notebook "PyTorch Notebook"
