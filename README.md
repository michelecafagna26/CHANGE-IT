# CHANGE-IT
CHANGE-IT Task EVALITA2020

## Requirements

```bash
pip install -r requirements.txt
```

## Get started

Our baselines are based on OpenNMT-py, a popular Deeplearning framework, full documentation [here](https://opennmt.net/OpenNMT-py).
OpenNMT is gonna make easy and fast training and testing new models just changing few lines of code, but you can use your own model.

## Download

Big files like data and baselines checkpoint need to be dowloaded separately.
To download the model run:
```bash
bash baseline/download_models.sh.sh
```
To download the data run:
```bash
bash baseline/download_data.sh.sh
```
Data are needed if you want to execute the next example scripts and to check the file format.
If you want to play with our baselines download both models and data and go to *Testing* section.

## Build your Headline Generators

### Preprocessing

To perform the preprocessing we use the OpenNMT cli. An example of preprocess bash script is in */baseline*
run:
```bash
bash baseline/process_data.sh
```
after the preprocessing the source data for training, validation and testing and the vocabular just created will be saved in *.pt* format in the specified folder.
For full documentation about paramaters and options follow the [OpenNMT-py official doc](https://opennmt.net/OpenNMT-py/options/preprocess.html)

### Training

To start a training you need the preprocessed sources and targets and a configuration file. A configuration file is just a yaml containing the model details. Check the configurations in */baseline/config/* to see an example.

To start the training run:
```bash
bash baseline/process_data.sh
```
For full documentation about paramaters and option follow the [OpenNMT-py official doc](https://opennmt.net/OpenNMT-py/options/train.html)

### Testing
To test your model and generate prediction you need a model chdckpoint and inputs. To execute the example script test run:
```bash
bash baseline/test.sh
```
