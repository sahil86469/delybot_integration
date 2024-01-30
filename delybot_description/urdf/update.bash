#!/bin/bash

rosservice call /rosplan_problem_interface/problem_generation_server;
rosservice call /rosplan_planner_interface/planning_server;
rostopic echo /rosplan_planner_interface/planner_output -p;
rosservice call /rosplan_plan_dispatcher/dispatch_plan;
