---
key: architecture
title: Architecture
---

You're part of a team building the software for Electrical Vehicle (EV) charging stations in a large charging stations network.

Components of the architecture are:

* Embedded Software/Firmware, Written in C/C++ and runs on a microcontroller.
* User Interface - built with "Flutter for embedded"
* Authentication and Security
* Payment Processing Module - handles billing and payment transactions. can integrate with external payment gateways and support various payment methods, including credit cards, mobile payments, and subscription models.
*  Data Management - The station collects data on usage, power consumption, and operational status for billing, maintenance, and analytics; stored in memory, regularly synced to the Cloud
*  Remote Management and Monitoring, Over-the-air updates - Updating station firmware, configuring settings, troubleshooting issues, and generating reports on usage and operational status.

### Domain Glossary
- OCPP (Open Charge Point Protocol) communication standard used between charging stations and central management systems
- EVSE (Electric Vehicle Supply Equipment) Refers to the components and infrastructure that deliver electrical energy to recharge electric vehicles
- AC (Alternating Current) and DC (Direct Current) Charging; AC charging is slower and typically used for residential or light commercial use. DC charging is faster
- Connector Types: Type 1 (North America, Japan), Type 2 (Europe), CCS (North America, Europe)
- V2G (Vehicle-to-Grid) Technology that allows electric vehicles to communicate with the power grid
- SoC (State of Charge)