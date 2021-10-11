# CHANGE-IT Task EVALITA2020

## Overview of the task

The task can be seen as a “headline translation” problem. Given a (collection of) headlines from two newspapers at opposite ends of the political spectrum, namely Il Giornale (G) and La Repubblica (R), change all G-headlines to headlines in style R, and all R-headlines to headlines in style G.

For a more detailed description of the task you can check:

- our paper: [CHANGE-IT @ EVALITA 2020: Change Headlines, Adapt News, GEnerate](http://ceur-ws.org/Vol-2765/paper169.pdf)

- the task [website](https://sites.google.com/view/change-it/home)

- the [video presentation](https://vimeo.com/484098874) of task

## Requirements installation

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
To download the *data*:
- download and unzip [train_val_gio.zip](https://drive.google.com/file/d/1i4EpOmZKgOfsIaoQUC4L6BoZncTHp2vd/view?usp=sharing) in *baseline/gio*
- download and unzip [train_val_rep.zip](https://drive.google.com/file/d/1puuzsrWrfptDlxHARyMXOl8FWyvAk4p2/view?usp=sharing) in *baseline/rep*

Data are needed to reproduce the results of our base scripts and to check the file format. These archives contains the train/val splits used to train the baseline, but you are free to use whatever split you want.
If you want to play with our baselines download both models and data and go to the *Testing* section.

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
bash baseline/train.sh
```
For full documentation about paramaters and option follow the [OpenNMT-py official doc](https://opennmt.net/OpenNMT-py/options/train.html)

### Testing
To test your model and generate prediction you need a model chdckpoint and inputs. To execute the example script test run:
```bash
bash baseline/test.sh
```

### Run evaluation classifiers

Check out the notebook in `eval_classifiers`

# Reference

If you find this project helps, please cite our paper :)

```bash
@article{de2020change,
  title={CHANGE-IT@ EVALITA 2020: Change Headlines, Adapt News, GEnerate},
  author={De Mattei, Lorenzo and Cafagna, Michele and AI, Aptus and Dell’Orletta, Felice and Nissim, Malvina and Gatt, Albert},
  year={2020}
}
```

