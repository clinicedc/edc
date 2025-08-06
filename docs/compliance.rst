Compliance
==========

`Clinic EDC <https://clinicedc.readthedocs.io>`_ projects are built on top of the `Django <https://www.djangoproject.com>`_ framework. Django is a well-maintained stable and secure web framework. The Clinic EDC framework adds modules that enhance compliance for clinical research trials that involve human subjects. Clinic EDC projects depend on `django-crypto-fields <https://django-crypto-fields.readthedocs.io>`_, `edc-auth <https://github.com/edc-auth>`_ and `django-simple-history <https://github.com/django-commons/django-simple-history>`_ in order to reach compliance for human subjects research. ``django-crypto-fields`` provides field-level encryption to secure sensitive data. ``edc-auth`` extends Django's comprehensive user account management by adding role-based access control. ``django-simple-history`` provides a full snap-shot audit trail for GCP compliance.


Good Clinical Practice
----------------------
The framework emulates Good Clinical Practice Guidelines (based on ``ICH`` guidelines) by tracking the user name,
date/time, system version and device for each data record created or modified and storing a
snapshot of the full data record prior to each modification in a separate audit trail. The snapshot also include the Clinic EDC project release version.


See also:

* HIPPA
* `21 CFR part 11 <https://www.ecfr.gov/current/title-21/chapter-I/subchapter-A/part-11>`_
* `NIAID Electronic Information Systems Policy (EIS) <https://www.niaid.nih.gov/sites/default/files/electronic-info-systems-policy-faq-july2024.pdf>`_
* GDPR
* UKGDPR
* `POPIA (Protection of Personal Information Act, South Africa) <https://popia.co.za/act/>`_
