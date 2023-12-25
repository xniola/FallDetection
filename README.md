<p align="center">
   <b>A camera-based system for human fall detection in indoor environments</b>
</p>

---


<p align="center">
    <b>FallDetection</b> is a <b>Deep Learning</b> project carried out in <b>Google Colab</b> for the master's thesis in Computer Engineering.
</b></p>

 For more details about the themes and methodologies developed in the project, please consult the written paper in this repository: [FallDetection.pdf](https://github.com/xniola/FallDetection/blob/main/FallDetection.pdf)
 
# 📔 Table of Contents

- [Project Presentation](#panoramica)
- [Core Technologies](#tecno)
- [Author](#autore)

# 📝 Project Presentation <a name = "panoramica"></a>

<table>
  <tr>
    <img align="left" src="images/fall_pavimentale.png">
    <img align="left" src="images/fall_frontale.png">
  </tr>
The objective of this thesis is to build a reliable system
for vision-based fall detection. The definition of the
problem is very simple. It involves trying to figure out when
a person is falling or has fallen. Although the concept
is very simple, in actuality, however, for an
artificial system it can be complex to interpret the pose of the
people, as they may perform actions that are apparently
suspicious but have nothing to do with a fall (e.g.
example, stooping to the ground to pick up an object, lying down
on the bed, sit on the floor, and so on). The activity that detects
falls is called fall detection and is a technology that monitors the
movements of a person, detects any falls that occur
and eventually generates an alarm. Following the identification
of the event, the health care provider or caregiver of the
person via smartphone. Fall detection systems are not
limited only to the elderly. They can also be used
to protect athletes, workers or anyone at increased risk of
falling. Cameras can have a frontal placement
with respect to the location of the room, or they can be placed
on the ceiling, so as to acquire the floor plan of the building that is to be
intended to monitor. 


# 🧰 Core Technologies <a name = "tecno"></a>

<img align="left" src="images/fallnet.png" height="300">

The **fallnet** is designed as a convolutional neural network(CNN).
The model is used for image processing and the
classification of them independently of each other.
The fallnet uses a series of filters that run over the image
and capture specific features of the images. These filters are able to identify shapes, textures, objects, and other
information useful for image classification.
The network is organized into layers, where each layer uses the filters
to analyze the data. The filters are shared between different points
of the image, which reduce the amount of parameters that must
be trained and improve the generalization ability of the
model.
In addition to filters, there are also pooling layers, which reduce
the size of the processed data and increase the robustness of the
model. The data are then processed through a series of
convolution and pooling layers, which are followed by layers
dense, which provide the final classification or regression.
This approach makes image processing very effective, as it makes the network capable of capturing spatial relationships
between pixels in the image. These spatial relationships are important
for image understanding and can be used for
the classification of images into dropped or unfropped.
The resulting network is simple in architecture but is equally
easy to scale and train, thus being very convenient to
use on very large amounts of data.

<img align="left" src="images/tensorboard.png" height="300">

**TensorFlow** is an open source artificial intelligence library developed by Google. It is used to build and train machine learning models and to perform operations
mathematics on tensors, which are multidimensional arrays. 
One of the most useful tools provided by Tensorflow is definitely
its dashboard, called the **TensorBoard**. The TensorBoard is a
Web-based tool for visualizing, monitoring
and debugging of TensorFlow executions. It provides information
about your training runs in real time, including accuracy,
loss and other metrics, as well as visualizing and comparing the results of multiple runs. The TensorFlow dashboard is also able to
display the calculation graph and profile TensorFlow's operations. It can be used locally or remotely and can be
access it through Colab. It provides real-time information
on your training runs, including accuracy, loss and other
metrics, as well as viewing and comparing the results of multiple runs.
The Tensorboard image alongside highlights how both vision models (front and floor) were trained on the dataset
with 15 epochs and achieved a final precision greater than 95 percent.

<img align="right" src="images/predizioni.png" height="300">

Two different datasets were used. The first one is called the
**UR Fall Detection Dataset**, and consists of 140 total videos
offered in both frontal (called "cam0") and floor form
(called "cam1"). Specifically, for both cams there are
30 fall sequences and 40 sequences that are called activity
day living, i.e., daily events in which people assume
natural positions not to be confused with falls (e.g., movements
to sit, movements in which one bends down to pick up an object
or lying on the bed). The dataset also provides sensory data
such as those related to the accelerometer, however, only those data were used
only the data useful for the camera-based approach.
The second dataset was used to extend the frontal model data and includes 4 different fall execution environments.
The four environments are: **home**, **office**, **coffee room**, and **classroom**.
By extending this new dataset, the network acquires
important generalization capabilities. It not only understands that
drops are independent of the characteristics of the environment
background, but it conceives of different modes and movements of
falls from different people

<img align="right" src="images/inference_not_fall.jpeg" height="150">

To conclude, an inference test was performed using the
fallnet model on a personal video. 

<img align="right" src="images/inference_fall.jpeg" height="150">

The images below show how the model learned to distinguish the scenario
of a fall from one of activity day living, such as sitting, and an actual fall scenario.


# 🔭 Author <a name = "autore"></a>

- [Stefano Perniola](https://github.com/xniola)
