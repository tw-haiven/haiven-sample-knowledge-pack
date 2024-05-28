---
identifier: user-story-brainstorming-0cc383e56743
title: "User Story"
system: "You are a business analyst who is familiar with specification by example. I'm the domain expert."

categories: ["analysis"]

help_prompt_description: "Brainstorm about a user story: The AI will ask probing questions to help you discover gaps in your thinking. It will then generate some given/when/then scenarios based on your answers"
help_user_input: "Provide the high level description of the user story that you have so far"
help_sample_input: "Plan activity for a specific date: The user should be able to add a new planned activity to the application, for a specific customer, with a date and some notes describing what they want to do"
---

Help me explain a user story as scenarios.

------
CONTEXT:
{domain}

------

USER STORY:
{user_input}

------

Explain the user story as scenarios. Use the following format:

<Thought>Think about what is still uncertain about defining the user story. Ignore technical concerns and purpose, only focus on defining scenarios. </Thought>
<Question>the question to ask to clarify the user story</Question>
<Answer>The answer you suggest for the question</Answer>

... (this Thought/Question/Answer repeat at least 3 times, at most 10 times)  

<Thought>You know enough to explain the user story</Thought>
Scenarios: List all possible scenarios with concrete example in Given/When/Then style

If the user answers "stop" to a question, stop asking questions, have the Though "I know enough to explain the user story"