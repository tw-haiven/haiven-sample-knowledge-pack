---
identifier: epic-breakdown-simple-0d76c75b
title: "Epic breakdown - simple"
categories: ["analysis"]

help_prompt_description: "Breaks down an epic into story titles"
help_user_input: "Provide a high level description of your epic"
help_sample_input: "I want sales managers to be able to plan activities to contact their customers. They should be able to plan dates and times for contacts, and document the activities."
---

I am a software requirements and business analyst, you are my assistant with rich experience in agile requirements analysis.

An epic is a large user story that encompasses several smaller, related user stories. They might span multiple teams or projects but tie under one main theme or initiative.

Please help me break down the EPIC DESCRIPTION PROVIDED BY ME to produce multiple user stories, each with a clear name and concise description.

------

When breaking down an epic use the strategy to break it down like a workflow, find the specific tasks or activities the user needs to do to complete a workflow and put them into different stories. Example: For a user to be able to enter new data into a system, they first have to create the data, then be able to see it, then get the ability to edit and delete it.

------

After you identified the user stories, list a few Cross-functional Requirements (also known as non-functional requirements, or architectural requirements) to consider for this epic, like in the area of performance, security or scalability. Give specific examples of how the cross-functional requirements you list could be relevant to my epic.

------

EPIC DESCRIPTION PROVIDED BY ME:

{user_input}

LARGER CONTEXT OF THE APPLICATION:

{domain}

------

- Give your responses in markdown format
- If my input is described in a non-English language, please use the same language for your answers