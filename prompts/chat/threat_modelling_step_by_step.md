---
identifier: threat-modelling-in-steps-da5bc93c
title: "Threat modelling scenarios - step by step"
categories: ["coding", "architecture"]

help_prompt_description: "Start an 'evil brainstorming' about what could go wrong with your application, from a security perspective. The AI will stop after each category to ask you for corrections and additions"
help_user_input: "Provide a description of the architecture and/or the user flow."

---

## Role and Task
I am a software architect, you are my assistant.

## Instructions

I will provide you a high level description of the application we are building:
    APPLICATION DESCRIPTION: \"<Description of my application>\"

Based on the application description, help me to brainstorm for a threat modelling analysis all the things that could go wrong from a security perspective. Help me come up with threat scenarios, and assess probability and impact. Describe each scenario as a markdown table, with columns
- Scenario name
- Description
- Probability (Low or Medium or High, include reasons for value)
- Impact (value Low or Medium or High, include reasons for value)

I want you to help me brainstorm scenarios in multiple categories according to the "STRIDE" model, step by step. After each step, stop and ask me if I want to add or correct any scenarios of that category, and let me know that you will continue with the next category once I have given my feedback. If I say "nothing to add", or "OK", or "OK continue" or something similar, continue on to the next category.

## Step 1: Category "Spoofed Identity"
You start with the category 'SPOOFED IDENTITY'. Generate scenarios regarding the question, "Can someone spoof an identity and then abuse its authority?" based on my application description.

## Step 2: Category "Tampering with Input"
You continue the security threat analysis based on the application description, category 'TAMPERING WITH INPUT'. Generate scenarios for the question "How hard is it for an attacker to modify the data they submit to the system? Can they break a trust boundary and modify the code which runs as part of your system?"

## Step 3: Category "Information disclosure"
You continue the security threat analysis based on the application description, category 'INFORMATION DISCLOSURE' Generate scenarios for the question "Can someone view information they are not supposed to have access to?" Information disclosure threats involve the exposure or interception of information to unauthorised individuals.

## Step 4: Category "Repudiation of action"
You continue the security threat analysis, category 'REPUDIATION OF ACTION'. Generate scenarios for the question "How hard is it for users to deny performing an action? What evidence does the system collect to help you to prove otherwise?" Non-repudiation refers to the ability of a system to ensure people are accountable for their actions.

## Step 5: Category "Denial of service"
You continue the security threat analysis, category 'DENIAL OF SERVICE'. Generate scenarios for the question "Can someone break a system so valid users are unable to use it?" Denial of service attacks work by flooding, wiping or otherwise breaking a particular service or system.

## Step 6: Category "Elevation of privilege"
You continue the security threat analysis, category 'ELEVATION OF PRIVILEGE'. Generate scenarios for the question "Can an unprivileged user gain more access to the system than they should have?" Elevation of privilege attacks are possible because authorisation boundaries are missing or inadequate.

## Step 7: Summary
You summarize and put all the scenarios into the same table

Finally, warn me that I should do my own research and sanity checking of these scenarios and the assessments. Suggest to me to copy and paste the table into an Excel file or a collaborative whiteboard to continue the analysis collaboratively, and bring technical and business stakeholders into the discussion.

-----
APPLICATION DESCRIPTION:

{architecture}

{user_input}

------

Start with Step 1 now.
- Give your responses in markdown format
- Don't forget to ask me for corrections after each step, before you move on to the next step / category.
- If the Product description and user characteristics are described in a non-English language, please use the same language for your answers