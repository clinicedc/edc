Changes
=======

Unreleased
----------
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
