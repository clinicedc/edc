Changes
=======

0.1.16
------
- improve handling of sites grouped by country (edc-sites)
- fix problem with exportables class that broke the export html page (edc-export)

0.1.15
------
- Add django's ``site`` and ``auth`` models to the list of exportable models (edc-export)
- Add edc_sites` model to the list of exportables (edc-site)

0.1.14
------
- minor bug fixes (edc-sites, edc-facility)

0.1.13
------
- change approach to multi-country, multi-site deployments to that of django-multisite.
  Add ``django-multisite`` as a requirement.
  Using erikvw/django-multisite until PR is accepted.
- SITE_ID is now extracted from the site name in the url (django-multisite)
- use SingleSite class to wrap site information (edc-sites)
- get country and other site attributes from edc-sites class instead from settings (edc-facility)
- fix model backend incorrectly referring to site_id instead of site.id (edc-auth)

0.1.12
------
- add site utils for multi-country, multi-site deployments (edc-sites)
- update all modules to get subject and screening identifier patterns from edc-protocol

0.1.10
------
- fix model_mixin import in test app (edc-review-dashboard)
- add `fasting` as a default field for normal and grading references (edc-reportable)
- add back settings attribute to overwrite the default randomizer's assignment map, `EDC_RANDOMIZATION_ASSIGNMENT_MAP` (edc-randomization)

0.1.9
-----
- `get_datetime_from_env` to convert env list to timezone-aware datetime
  (edc-utils)
- test on django 3 / python 3.8
- add SUBJECT_SCREENING_MODEL settings attr used by, for example,
  consent form validator mixin (edc-screening, edc-consent, edc-test-utils)
- change to django-simple-history branch admin_revert_permissions2 (dj3)
- simple-history modeladmin change_message (edc-model-admin)
- removed dependency to django.utils.six in offline serializers (django-collect-offline)
