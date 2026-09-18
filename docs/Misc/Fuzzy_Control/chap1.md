# Chap1 Control challenges in robotics and automation

!!! abstract
    - Basics of industrial automation
    - Robots in complex manufacturing systems
    - Structure and main components of a robot system

## Introduction: Automation

!!! abstract
    介绍自动化和控制论相关知识

### Automation

Automation of repeat functions(via measurement+control) at the **process level**(**control algorithm**)

Transfer of demanding guidance and monitoring tasks to the human being in the **strategy level**(**high-level process control techniques**)

![无法显示](figures/chap1/automation.png)

### Model

The control algorithm bases on a mathematical decription of the process, a **model**, reflecting the process as a function of I/O parameters and environmental influences

Model is an **abstract replica of the system** that serves to **plan and predict the process behavior**

### Basic concepts of control/automation

**Control approach forms the basis of automation!**

**control path**: the part of a system(process) in which one or more state variables(状态变量)/process parameters(过程参数) are to be influenced to control the system

**disturbances**: disturbances of different nature intervene into the control path, which can affect the state variables

**closed-loop control**: a type of control when a state variable(**system output**) is permanently measured by a **sensor** and compared with the desired value, the **reference**

![无法显示](figures/chap1/closed_loop.png)

**open-loop control**(non-feedback control): a type of control when the control action from the controller(system input) is independent of the system output

### Automation hierarchy(自动化层次结构)

process level -> operation level -> coordination level -> strategy level (from low to high)

At the higher levels, the reference variables are determined at an **abstract level**, the software has **increasing intelligence and complexity**; At the lower levels, the process control is specified step by step down to the **single state values of the process**, the software has **increasing real-time capability**

## Introduction: Robotics

### Industrial Robots

|generation|condition|feature|
|:-:|:-:|:-:|
|1st generation|remote control technology with teleoperating and NC machines|allow handing with specified accuracy|
|2nd generation|sensor can solve problems that arise in **unstructured environments**|allow flexible automation of production processes|
|3rd generation|intelligent control systems give robots the ability to perform complex tasks fully autonomously(human liki opertion)|allow autonomous product|

2nd and 3rd generation robots need advanced contorl approaches: **artificial neural networks** and **fuzzy logic**

### Basic structure and components of a robot

mechanical subsystems

- Vehicle or platform: coarse positioning

- Manipulator: fine positioning

- Endeffector: specific application(mimicking a human)

Robots are characterized by

- Kinematics/Dynamics(运动学与动力学)

- Actuators/Sensors(驱动器与传感器)

- Control system

- SW/User interface

### Kinematics(运动学)/Dynamics(动力学)

In robotics, **kinematics** is used to describe the motion and the trajectories(运动和轨迹) of an endeffector(末端执行器) in relation to **the position of each joint(link)(关节) of the robot**

The direct kinematics(正运动学) problem: **to compute the position(the trajectory) of the endeffector** from specified values of the joint parameters(position/angles)

The inverse kinematics(逆运动学) problem: **to compute the joint parameters(position/angles)** that produce a desired endeffector position(trajectory)

**Transformation mattrices**(变换矩阵) are usually used to solve the kinematics problem:  simple linear matrix calculations

**Dynamics** is a branch of classical mechanics which deals with the motion of bodies **under the action of forces/torques(扭矩)**

### Actuators/Sensors

The **sensors** are used to measure the state variables of the robot and its workspaces, provide **feedback** necessary for closed-loop robot control

The **actuators**(drives of the robot) are responsible for moving a mechanism as **reaction of the control system to sensor feedback**

### Control system

The tasks of the control system include: trajectory planning(轨迹规划), collision avoidance(碰撞避免)， position/force control

### Application

the possible areas of allication of fuzzy logic and neural networks:

- General control problems, process monitoring(过程检测)

- Planning and optimization(规划和优化)

- Identification and modeling(辨识和建模)

- Evaluation of sensor data/failure diagnosis(传感数据评估和故障诊断)

- Navigation: path planning, collision avoidance(导航)

- Expert systems, decision making, classification of features(专家系统)

- Pattern recognition and image processing(模式识别和图像处理)

- Speech recognition, machine translation(语音识别和机器翻译)