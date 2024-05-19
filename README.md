## My ROS 2 Project (without colcon build)

This project is a simple example of a ROS 2 application that includes a library and a node. Unlike typical ROS 2 projects that are built using colcon, this project is built using cmake only.

## Features

- Contains a simple library (my_lib) and a node (my_node).
- Built using cmake and ninja for simplicity and efficiency.
- Includes unit tests for the library.

## Prerequisites

- ROS 2 (only tested with ROS 2 Humble)
- cmake (version 3.8 or higher)
- ninja build system

## Build the project

To build the project, follow these steps:

1. Clone the repository:

```sh
git clone https://github.com/your_username/my_ros2_project.git
cd my_ros2_project
```

2. Configure the build using cmake:

```sh
source /opt/ros/humble/setup.bash
cmake -S. -Bbuild \
    -DCMAKE_BUILD_TYPE=Release -GNinja \
    -DBUILD_TESTING=ON
```

3. Build and install the project using ninja:

```sh
ninja -C build install
```

## Run the node

To run the node, source the ROS 2 setup file and run the node:

```sh
source /opt/ros/humble/setup.bash
source install/setup.bash
ros2 launch my_package my_package.yaml
```

This will launch the node with the parameters specified in the `my_package.yaml` file.

```sh
[INFO] [launch]: All log files can be found below /home/dskkato/.ros/log/2024-05-20-00-09-09-216823-stj-pc-0522-2957146
[INFO] [launch]: Default logging verbosity is set to INFO
[INFO] [my_node-1]: process started with pid [2957181]
[my_node-1] [INFO] [1716131349.798477867] [sample]: Publishing: 'Hello, sample! 0'
[my_node-1] [INFO] [1716131350.298443443] [sample]: Publishing: 'Hello, sample! 1'
[my_node-1] [INFO] [1716131350.798467919] [sample]: Publishing: 'Hello, sample! 2'
[my_node-1] [INFO] [1716131351.298449981] [sample]: Publishing: 'Hello, sample! 3'
^C[WARNING] [launch]: user interrupted with ctrl-c (SIGINT)
[my_node-1] [INFO] [1716131351.787224335] [rclcpp]: signal_handler(signum=2)
[INFO] [my_node-1]: process has finished cleanly [pid 2957181]
```

---------------------

## colcon build

As an alternative to building the project, you can use colcon to build the project. To do this, use the following commands instead of the cmake and ninja commands:

```sh
rm -rf build install log # Remove the build directory if it exists
source /opt/ros/humble/setup.bash
colcon build
```
