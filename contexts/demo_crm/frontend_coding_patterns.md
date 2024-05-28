---
key: frontend_coding_patterns
title: Frontend coding patterns
---

Tech stack: typescript, react, redux, konvajs and react-konva. And vitest, react testing library for model, view model and related hooks, cypress component tests for view.

All code should be written in the tech stack mentioned above. Requirements should be implemented as React components in the MVVM architecture pattern.

2 types of view models:
* Shared view model. View model that represents states shared among local and remote users.
* Local view model. View model that represents states only applicable to local user

Common implementation strategies:
* Shared view model is implemented as Redux store slice. Tested in vitest.
* Local view model is implemented as React component props or states(by useState hook), unless for global local view model, which is also implemented as Redux store slice. Tested in vitest.
* Hooks are used as the major view helpers to retrieve data from shared view model. For most the case, it will use ‘createSelector’ and ‘useSelector’ for memorization. Tested in vitest and react testing library.
* Don’t dispatch action directly to change the states of shared view model, use an encapsulated view model interface instead. In the interface, each redux action is mapped to a method. Tested in vitest.
* View consists of konva shapes, implemented as React component via react-konva. Tested in cypress component tests

Patterns to be followed when testing the component:
* When writing a test, use describe instead of test
* Data-driven tests are preferred.
* When testing the view component, use a fake view model via the view model interface