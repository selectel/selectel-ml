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
Running container will expose 8888 port with Jupyter noteboks WebUI, with default password \
```9lG0eXCevt```

For password changing instructions see [Jupyter documentation](https://jupyter-notebook.readthedocs.io/en/stable/public_server.html) 

## Container information

### General
Python 3.6.9 installed on Ubuntu 18.04

### Installed Python packages
```
Package                 Version
----------------------- -------------------
absl-py                 0.13.0
anaconda                0.0.1.1
anyio                   3.2.0
argon2-cffi             20.1.0
astunparse              1.6.3
async-generator         1.10
attrs                   21.2.0
Babel                   2.9.1
backcall                0.2.0
beautifulsoup4          4.9.3
bleach                  3.3.0
blis                    0.7.4
Bottleneck              1.3.2
cached-property         1.5.2
cachetools              4.2.2
catalogue               2.0.4
catboost                0.26
certifi                 2021.5.30
cffi                    1.14.5
chardet                 3.0.4
click                   7.1.2
command-not-found       0.3
contextvars             2.4
cycler                  0.10.0
cymem                   2.0.5
Cython                  0.29.23
dataclasses             0.8
decorator               4.4.2
defusedxml              0.7.1
distro-info             0.18ubuntu0.18.04.1
entrypoints             0.3
fastai                  2.4
fastcore                1.3.20
fastprogress            1.0.0
ffmpeg                  1.4
ffmpeg-python           0.2.0
flatbuffers             1.12
freetype-py             2.2.0
future                  0.18.2
gast                    0.4.0
google-auth             1.32.0
google-auth-oauthlib    0.4.4
google-pasta            0.2.0
graphviz                0.16
grpcio                  1.34.1
h5py                    3.1.0
idna                    2.10
imageio                 2.9.0
imageio-ffmpeg          0.4.4
immutables              0.15
importlib-metadata      4.5.0
ipykernel               5.5.5
ipython                 7.16.1
ipython-genutils        0.2.0
ipywidgets              7.6.3
jedi                    0.18.0
Jinja2                  3.0.1
joblib                  1.0.1
json5                   0.9.6
jsonschema              3.2.0
jupyter                 1.0.0
jupyter-client          6.1.12
jupyter-console         6.4.0
jupyter-core            4.7.1
jupyter-server          1.8.0
jupyterlab              3.0.16
jupyterlab-pygments     0.1.2
jupyterlab-server       2.6.0
jupyterlab-widgets      1.0.0
Keras                   2.4.3
keras-nightly           2.5.0.dev2021032900
Keras-Preprocessing     1.1.2
kiwisolver              1.3.1
language-selector       0.1
lightgbm                3.2.1
Mako                    1.0.7
Markdown                3.3.4
MarkupSafe              2.0.1
matplotlib              3.3.4
mistune                 0.8.4
moviepy                 1.0.3
mpmath                  1.2.1
murmurhash              1.0.5
nbclassic               0.3.1
nbclient                0.5.3
nbconvert               6.0.7
nbformat                5.1.3
nest-asyncio            1.5.1
netifaces               0.10.4
networkx                2.5.1
nltk                    3.6.2
nose                    1.3.7
notebook                6.4.0
numexpr                 2.7.3
numpy                   1.19.5
nvidia-ml-py3           7.352.0
oauthlib                3.1.1
opencv-python           4.5.2.54
opt-einsum              3.3.0
packaging               20.9
pandas                  1.1.5
pandocfilters           1.4.3
parso                   0.8.2
pathy                   0.5.2
pexpect                 4.8.0
pickleshare             0.7.5
Pillow                  8.2.0
pip                     21.1.2
plac                    1.3.3
plotly                  5.0.0
preshed                 3.0.5
proglog                 0.1.9
prometheus-client       0.11.0
prompt-toolkit          3.0.19
protobuf                3.17.3
ptyprocess              0.7.0
pyasn1                  0.4.8
pyasn1-modules          0.2.8
pycparser               2.20
pydantic                1.7.4
Pygments                2.9.0
pygobject               3.26.1
pyparsing               2.4.7
pyrsistent              0.17.3
python-apt              1.6.5+ubuntu0.5
python-dateutil         2.8.1
python-debian           0.1.32
pytz                    2021.1
PyYAML                  3.12
pyzmq                   22.1.0
qtconsole               5.1.0
QtPy                    1.9.0
regex                   2021.4.4
requests                2.25.1
requests-oauthlib       1.3.0
retrying                1.3.3
rsa                     4.7.2
scikit-learn            0.24.2
scipy                   1.5.4
Send2Trash              1.7.1
setuptools              57.0.0
six                     1.15.0
smart-open              3.0.0
sniffio                 1.2.0
soupsieve               2.2.1
spacy                   3.0.6
spacy-legacy            3.0.6
srsly                   2.4.1
sympy                   1.8
tenacity                7.0.0
tensorboard             2.5.0
tensorboard-data-server 0.6.1
tensorboard-plugin-wit  1.8.0
tensorboardX            2.2
tensorflow-estimator    2.5.0
tensorflow-gpu          2.5.0
termcolor               1.1.0
terminado               0.10.1
testpath                0.5.0
thinc                   8.0.6
threadpoolctl           2.1.0
torch                   1.9.0
torchvision             0.10.0
tornado                 6.1
tqdm                    4.61.1
traitlets               4.3.3
transforms3d            0.3.1
typer                   0.3.2
typing                  3.7.4.3
typing-extensions       3.7.4.3
ubuntu-advantage-tools  27.0
unattended-upgrades     0.1
urllib3                 1.26.5
vispy                   0.6.6
wasabi                  0.8.2
wcwidth                 0.2.5
webencodings            0.5.1
websocket-client        1.1.0
Werkzeug                2.0.1
wheel                   0.36.2
widgetsnbextension      3.5.1
wrapt                   1.12.1
xgboost                 1.4.2
youtube-dl              2021.6.6
zipp                    3.4.1
```
