.. edc documentation master file, created by
   sphinx-quickstart on Mon Jul 28 20:59:50 2025.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Clinic EDC
==========

Clinic EDC is a data management framework built on Django for multisite randomized longitudinal clinical trials.

Clinical trials have a lot in common but not enough to be data managed by just one system. Clinic EDC provides modules that solve common problems in clinical research while still allowing for customization by the data management team.

Clinic EDC makes it easy to provide realtime rule-based data collection, query management, reporting and monitoring. The framework
emulates Good Clinical Practice Guidelines (based on ``ICH`` guidelines) by tracking the user name,
date/time, system version and device for each data record created or modified and storing a
snapshot of the full data record prior to each modification in a separate audit trail. The snapshot also include the Clinic EDC project release version.

A Clinic EDC project workflow might go like this. Potential participants are screened for eligibility on the Clinic EDC project in realtime. Eligible and consenting
participants are registered on the system, allocated a unique study identifier by the system, and connected to
adaptive pre-defined follow-up and data collection schedules. Trial data is collected and
entered against the unique study identifier at point-of-care into electronic case record forms
(CRFs). Each electronic CRF has embedded skip logic and inter- and intra-form validation checks
that give immediate feedback, by way of messages on the CRF data collection screen, to the ressearch staff to resolve inconsistencies in realtime.

Data encryption is built into the ClinicEDC. It encrypts personal identifiable information at the field-level so that PII is encrypted "at rest" and in motion. Raw data in the database is anonymous by default.


Clinic EDC is open-source and written in python on top of Django

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   history
   disaster_recovery
   README.rst
   deploy_new_droplet
   prepare_database
   configure_web_services
   update_deployment
   landing_page
   backup
   conda
   uv
   redis
   celery
   dump_users
   sql_examples
   protocol_data_management_section
