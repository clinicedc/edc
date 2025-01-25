Data Management
===============
Data will be collected and managed electronically using a protocol-specific data managment system built on the ``clinicedc`` framework,
from here referred to as ``the EDC``. The ``EDC`` provides realtime rule-based data collection, query management, reporting and monitoring. It
emulates Good Clinical Practice Guidelines (based on ``ICH`` guidelines) by tracking the user name,
date/time, system version and device for each data record created or modified and storing a
snapshot of the full data record prior to each modification in a separate audit trail.

All data will be treated as strictly confidential and will in no circumstances be made publicly
available.

Data Transfer and Sharing
-------------------------
Data transfer or sharing will following the requirements of a signed Data Transfer Agreement (DTA).
For data sharing, summary tables, continuous progress reports or presentations during various
meetings will be provided and accessed securely by authorized/authenticated officers online
through the ``EDC``. Any data transfered out of the ``EDC`` will exclude PII and refer to subjects only by
their unique study-allocated identifier.

Data Collection and Quality Assurance
-------------------------------------
Potential participants are screened for eligibility on the ``EDC`` in realtime. Eligible and consenting
participants are registered on the system, allocated a unique study identifier, and connected to
adaptive pre-defined follow-up and data collection schedules. Trial data is collected and
entered against the unique study identifier at point-of-care into electronic case record forms
(CRFs). Each electronic CRF has embedded skip logic and inter- and intra-form validation checks
that give immediate feedback, by way of messages on the CRF data collection screen, to the ressearch staff to resolve inconsistencies in realtime.

In the rare event of a system outage, sites will be prepared with paper CRFs as backup.

Research staff receive protocol specific ``EDC`` training, make valuable contributions to the
electronic representations of the CRFs and the embedded data validation strategy, have access
to user support and an issue tracking system.

Data management staff will provide on-going user support, communicate any ``EDC`` issues they
are unable to resolve to developer staff, monitor the completeness of submitted data for each
participant, and report on trial progress to the study team.

Select analytical staff, granted access to the raw dataset, will report on more complex data-related issues by conducting
interim mock statistical analyses.

Independent monitoring will be conducted to maximise quality of data and adherence to
procedures. Monitors are granted access to the ``EDC`` by adding their personal ``EDC`` user account to the ``AUDITOR`` role. An
auditor has view-only access to each subject's records and audit trail.

For multi-site trials, the ``EDC`` will be configured to limit a user's access to data of the current site they are logged into. Users may be granted access to more than one research site but still can only see data for the current site. 

Monitoring will adhere to Good Clinical Practice Guidelines (based on ``ICH`` guidelines). The
following data should be verifiable from source documents: all signed consent forms; dates of
visits including laboratory results; eligibility and baseline values for all study subjects; all clinical
endpoints; all serious / severe adverse events; routine patient clinical and laboratory data;
dates drug dispensed; drug adherence (e.g. for ART in HIV trials and for blinded study medication) and
details of all concomitant medication.

Data Security
-------------
The ``EDC`` will be accessed by site research staff online. Access to the ``EDC``
user facing components is restricted to authorized users and permissions within the system are
granted as needed per user account through groups and roles. All data are submitted and
received over encrypted channels where sensitive data values are individually encrypted prior
to submission and storage and decrypted only for use by the ``EDC``’s user facing components.

Trial data are stored on cloud servers controlled by XXX, deployed with industry standard
security (Firewall, private network access to the database, drive encryption, field-level database
encryption, etc). With this approach, sensitive information is rendered unusable, unreadable, or
indecipherable to unauthorized individuals for “data in use” (e.g. data being analyzed by
statisticians), “data in motion” (e.g. data being transferred between data entry and storage
points) and “data at rest” (e.g. data in storage in the database).

Backup and disaster recovery includes 4-hourly data archiving, encrypted archives stored in multiple locations, daily server
snapshots, active system error detection, notification and reporting, and frequent mock
restorations.

Physical documents, such as participant consents, will be stored in locked cabinets at secure
locations.

Data Availability, Access and Sharing
-------------------------------------
As data are submitted and validated in realtime, raw data are technically available immediately
after submission. However, access to any aspect of the data management system is granted on
a need only basis and requires approval from the PI -- be it the user facing components, the
system data servers, the trial database, data encryption keys, or ``EDC`` application settings.

Trial data and other clinical information will not be released without written permission, except
as necessary for monitoring by the trial monitors.
