---
layout: page
title: Master's thesis
---

The topic is *Improvements in the Non-Preemptive Speed Scaling Setting* and the thesis is concerned with the design of algorithms that exploit the speed dynamic of processors to minimize energy consumption. It is purely theoretical and research-oriented, so no implementations were made.

Feel free to checkout my [thesis report](/public/thesis.pdf) or my presentation [slides](https://docs.google.com/presentation/d/1wNyw-g2-Seo6U3VNrtBp4qgq-ZwZi87O4chK8Ac4wic/pub?start=false&loop=false&delayms=3000).

### Abstract

> The speed scaling problem was first introduced by Yao, Demers and Shenker. It consists on finding a schedule of jobs that minimises the amount of energy that is necessary to execute them on a single variable-speed processor. Energy consumption is directly given by a convex function of the processor’s speed and each job must be fully executed within its lifetime, which is specified by its work volume, release time and deadline. In the original version of the problem, which is in P, the processor is preemptive. This setting has already been analysed to a great extent, including for multiple processors. Unfortunately, the non- preemptive version of the problem is strongly NP-hard and not so much is known in this variant. Hence, the present work doesn't consider preemption.
> 
> The contributions of this thesis can be grouped into two parts. The main results of the first part (chapter 3) include (using a single processor): (i) a substantial improvement in the time complexity when all jobs have the same work volume and (ii) a proof that, when the number of jobs with unrestricted work volume is limited to a constant, the problem is still in P. The second part (chapter 4) presents and proves the correctness of an algorithm that solves a special instance of a different problem: scheduling with job assignment restrictions (first introduced by Muratore, Schwarz and Woeginger). The goal is to find a schedule of jobs that minimises the maximum job completion time, over a set of single-speed processors. Solving this problem might give some insight on how to solve the non-preemptive speed scaling problem.