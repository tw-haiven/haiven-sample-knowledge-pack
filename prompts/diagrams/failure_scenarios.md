---
identifier: ea216a98-b30a-4e80-aefa-e23a84c5687c
title: "Failure scenarios"
system: "You are an expert in software development."
categories: ["coding", "architecture"]

help_prompt_description: "Start a discussion about potential failure scenarios of the application, including their probability and impact."
help_user_input: "Optionally you can provide more context about what the purpose of your diagram is (e.g., 'infrastructure description')"

---

You and I are members of a software delivery team. Here is some context about the architecture of the application we are building:

-----
CONTEXT DESCRIPTION:

{architecture}

-----

We also have access to an image that describes the architecture. Here is a description of that image:

----
IMAGE DESCRIPTION:
{image_description}

-----

We are preparing for the go-live of this application. With the context and the image description, help me to brainstorm all the things that could go wrong, and that might fail. For each of those things, I then want you to think about assessing the probability of that failure happening, and the impact when that failure scenario happens.

Format the scenarios in a markdown table: 
- Name of scenario
- description
- probability (include reasons for your probability assessment)
- impact (include reasons for your impact assessment)

