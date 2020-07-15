# :warning: Currently in beta state :warning:

## Runnning on local docker
```
$ docker run -d -p 8888:8888 selectel/selectel-ml
```
Consider adding CPU and RAM limits:
```
-m 10g --cpus=6
```
## Running in Kubernetes

Basic deployment example
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: selectel-ml
  labels:
    app: selectel-ml
spec:
  replicas: 1
  selector:
    matchLabels:
      app: selectel-ml
  template:
    metadata:
      labels:
        app: selectel-ml
    spec:
      containers:
      - name: selectel-ml
        image: selectel/selectel-ml
        ports:
        - containerPort: 8888
```

To expose port use command
``` kubectl expose deployment selectel-ml --type=LoadBalancer --name=my-service ```

## How to access
Running containeer will expose 8888 port with Jupyter noteboks WebUI, with default password \
```9lG0eXCevt```

For password changing instructions see [Jupyter documentation](https://jupyter-notebook.readthedocs.io/en/stable/public_server.html) 

## Containeer information

### General
Python 3.6.9 installed on Ubuntu 18.04

### Installed Python packages
```
Package                Version
---------------------- ---------
absl-py                0.9.0
anaconda               0.0.1.1
asn1crypto             0.24.0
astunparse             1.6.3
attrs                  19.3.0
backcall               0.2.0
bleach                 3.1.5
cachetools             4.1.1
catboost               0.23.2
certifi                2020.6.20
chardet                3.0.4
click                  7.1.2
cryptography           2.1.4
cycler                 0.10.0
Cython                 0.29.21
decorator              4.4.2
defusedxml             0.6.0
entrypoints            0.3
future                 0.18.2
gast                   0.3.3
google-auth            1.19.0
google-auth-oauthlib   0.4.1
google-pasta           0.2.0
graphviz               0.14.1
grpcio                 1.30.0
h5py                   2.10.0
idna                   2.6
importlib-metadata     1.7.0
ipykernel              5.3.2
ipython                7.16.1
ipython-genutils       0.2.0
ipywidgets             7.5.1
jedi                   0.17.1
Jinja2                 2.11.2
joblib                 0.16.0
jsonschema             3.2.0
jupyter                1.0.0
jupyter-client         6.1.6
jupyter-console        6.1.0
jupyter-core           4.6.3
Keras                  2.4.3
Keras-Preprocessing    1.1.2
keyring                10.6.0
keyrings.alt           3.0
kiwisolver             1.2.0
lightgbm               2.3.1
Markdown               3.2.2
MarkupSafe             1.1.1
matplotlib             3.2.2
mistune                0.8.4
mpmath                 1.1.0
nbconvert              5.6.1
nbformat               5.0.7
nltk                   3.5
nose                   1.3.7
notebook               6.0.3
numpy                  1.19.0
oauthlib               3.1.0
opencv-python          4.3.0.36
opt-einsum             3.2.1
packaging              20.4
pandas                 1.0.5
pandocfilters          1.4.2
parso                  0.7.0
pexpect                4.8.0
pickleshare            0.7.5
Pillow                 7.2.0
pip                    20.1.1
plotly                 4.8.2
prometheus-client      0.8.0
prompt-toolkit         3.0.5
protobuf               3.12.2
ptyprocess             0.6.0
pyasn1                 0.4.8
pyasn1-modules         0.2.8
pycrypto               2.6.1
Pygments               2.6.1
pygobject              3.26.1
pyparsing              2.4.7
pyrsistent             0.16.0
python-dateutil        2.8.1
pytz                   2020.1
pyxdg                  0.25
PyYAML                 5.3.1
pyzmq                  19.0.1
qtconsole              4.7.5
QtPy                   1.9.0
regex                  2020.7.14
requests               2.24.0
requests-oauthlib      1.3.0
retrying               1.3.3
rsa                    4.6
scikit-learn           0.23.1
scipy                  1.4.1
SecretStorage          2.3.1
Send2Trash             1.5.0
setuptools             49.2.0
six                    1.15.0
sympy                  1.6.1
tensorboard            2.2.2
tensorboard-plugin-wit 1.7.0
tensorflow             2.2.0
tensorflow-estimator   2.2.0
termcolor              1.1.0
terminado              0.8.3
testpath               0.4.4
threadpoolctl          2.1.0
torch                  1.5.1
torchvision            0.6.1
tornado                6.0.4
tqdm                   4.47.0
traitlets              4.3.3
urllib3                1.25.9
wcwidth                0.2.5
webencodings           0.5.1
Werkzeug               1.0.1
wheel                  0.34.2
widgetsnbextension     3.5.1
wrapt                  1.12.1
xgboost                1.1.1
zipp                   3.1.0
```
