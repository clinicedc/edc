Features
========

Clinic EDC is a large framework and provides rich functionality to build a clinical trial system that will ensure, even in complex settings, the collection and management highly-available research-grade data.


* modules for each of the core components of a typical longitudinal RCT
* easy to configure field level encryption for sensitive data
* randomization online and in realtime
* allocates unique study identifiers and maintains a master register
* versioned consent management linked to the data collection periods per participant
* field-level encryption for sensitive data
* user account management with role-based permission levels
* adaptive data collection schedules and collection workflows
    * named schedules linked to consent
    * named collection timepoints with required and optional CRFs and specimen requisitions
    * PRN and other timepoint independent data forms
    * lower and upper window period constraints per timepoint
    * fully customizable collection rules (metadata-rules)
* participant apppointments generated based on the randomization arm and "visit schedule"
* distinction between scheduled and unscheduled timepoints/appointments/visits
* study status management
    * clear on-study off-study status management
    * study status and the consent period is aligned to the data collection add/change period
* default and custom embedded skip logic and inter- and intra-form validation checks -- access any part of the dataset to validate data entry
* structured adverse event document workflow
* configurable alerts for adverse events and other critical events
* secure password protected PDF generation of adverse events and death reports
* realtime reports and online quality assurance tools
* realtime normal range and DIADS grading assessments for recorded labs linked to adverse event notifications
* full snap-shot audit trail of created, modified and deleted data
* every record tracks created and modified values for user, date, software version, locale, host, and device
* pharmacy module for chain-of-custody management of investigational study medication for IMP-type trials
* specimen chain-of-custody management
* label printing with barcodes for specimens and pharmacy IMP
* adheres to Good Clinical Practice Guidelines (based on ``ICH`` guidelines)
* GDPR, UK GDPR, South Africa POPIA compliant (assuming deployment recommendations followed)
