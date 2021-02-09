Changes
=======

0.3.6
-----
- gh-actions, isort, black (for all requirements, the rest ...)

0.3.5
-----
- add django-defender

0.3.4
-----
- Django 3.1.6 (for all requirements)
- gh-actions, isort, black (for all requirements)

0.1.73
------
- bump to django 3.1.5

0.1.72
------
- add migrations for model Meta class changes

0.1.71
------
- add missing model Meta class inheritance (edc_action, edc-adverse-event)
- load permissions through post-migrate (edc-auth)
- load sites through post-migrate (edc-sites)
- load lists through post-migrate (edc-list-data)
- add LIST_MODEL_APP_LABEL settings attribute (edc-list-data)q
- remove ugettext, force_text (several modules)

0.1.68
------
- minor fixes

0.1.65
------
- add lftu_date to model mixin, form validator to check model
  exists and date matches (edc-ltfu)
- set action item as singleton (edc-offstudy)
- fix assessment of current visit schedule / schedule for
  view mixin (edc-visit-schedule)

0.1.64
------
- track LTFU model in schedule, fix view detecting wrong schedule
  if more than one exists (edc-visit-schedule)
- fix incorrect action description, get next action using LTFU
  model name (edc-visit-tracking)

0.1.62
------
- fix required_if_true to equate blank and None (edc-form-validator)
- fix issues with subjectvisitmissed validator (edc-visit-tracking)

0.1.61
------
- add new requirement (edc-ltfu)

0.1.60
------
- also inspect crfs_missed when querying CrfMetadata for subject
  visit (edc-metadata)
- add testcase methods for getting appointment and next appointment
  (edc-appointment)
- add subjectvisitmissed formvalidator mixin, model mixin, action item
  (edc-visit-tracking)
- more constants (edc-constants)
- allow to opt-out of TMG workflow in actions, add attr for offschedule
  reason field (edc-adverse-event)
- add method `m2m_applicable_if_true` (edc-form-validators)
- move load_list_data to function (edc-list-data)
- refer to action by name using constant (edc-locator)
- add slider widget and resources for adherence visual scale
  (edc-model-fields)
- add off study action item (edc-offstudy)
- register CRFs listed in crfs_missed (edc-reference)





0.1.59
------
- modify how facility selects an available appt date by changing the
  order of precedence (edc-facility)
- enforce window period defined on the visit object
  from edc-visit-schedule (edc-appointment)
- enforce window period using visit lower/upper for scheduled appointments
  and lower as visit.lower and upper as next_visit.lower for
  unscheduled appointments (edc-visit-schedule)
- rename method `visit` to `visit_from_schedule` to avoid being overriden
  by AppointmentModelMixin. Keep `visit` available as a wrapper for
  `visit_from_schedule` (edc-visit-schedule)
- add days, `d`, to duration YMD field and validation (edc-model)
- add slider widget (edc-model)
- add `in` operator to predicate evaluation (edc-metadata-rules)
- default responses to `other` in m2m_other_specify (edc-form-validators)
- add `export_format` to user profile (edc-auth)
- remove `site` framework from model (edc-reference)


0.1.56
------
- check metadata_obj exists when evaluating rule (edc-metadata-rule)

0.1.54
------
- remove site framework from app (edc-reference)

0.1.53
------
- carry site id from visit instance (edc-reference, edc-metadata)
- raise exception if invalid visit code refered to (edc-appointment)
- remove any code referring to unused reviewer site id (edc-sites)

0.1.52
------
- query references using objects manager instead of on_site manager (edc-reference)
- minor pep8 / code cleanup

0.1.51
------
- hold at Django == 3.0.9
- add export user (edc-auth)

0.1.50
------
- hold at Django == 3.0.9
- add manager migration (edc-appointment)

0.1.48
------
- hold at Django == 3.0.9
- minor, mostly tests and pep8
- update interface to ipware (edc-device)
- bypass validation for reason_unscheduled if not in cleaned data (edc-visit-tracking)

0.1.47
------
- hold at Django == 3.0.9
- add EDC_APPOINTMENT_APPT_REASON (edc-appointment)
- preload list data in autodiscover instead of in app `list_data` files (edc-list-data)

0.1.32
------
- evaluate actions on m2m-change (edc-action-item)
- use `get_subject_visit` to get more reliably (edc-consent)
- add m2m "not" other specify method (edc-form-validators)
- use get visit model (edc-data-manager)
- recover if metadata is out of sync (edc-metadata)

0.1.30
------
- add crfs_missed to Visit object

0.1.29
------
- fix minor issues with "export" permission updater (edc-auth)
- fix "appointment_mark_as_done" admin action (edc-appointment)
- increase systolic max for BP field class (edc-model)
- add crf collection option for "missed" visits (edc-metadata)

0.1.26
------
- update MANIFEST.in files in edc-auth, edc-crf
- move fix for export permissions to edc-auth
- add offschedule datetime to appointment export resource

0.1.25
------
- minor fix (edc-model)

0.1.24
------
- add "export" as a default permission to ``BaseUuidModelMixin.Meta`` (edc_model)
- add ``CrfStatus`` model to track the ``crf_status`` of models using
  the mixin (edc_crf)
- add "export" as a default permission to ``CrfModelMixin.Meta`` (edc_crf)
- fix change_list in CrfMetadata (edc_metadata)
- add dashboard link to change_list, and admin action to bulk update ``appt_status``
  (edc_appointment)
- integrate ``django-import-export`` as a new dependency.
- add ``export`` codenames to be referred to in change_list when
  exporting using ``django-import-export`` (edc-auth)
- add links to CRF metadata, CRF status, appointments in home template (edc_data_manager)
- separate ``get_country`` and ``get_current_country`` into separate funcs (edc-sites)

0.1.23
------
- add base.html and load lab specific css/js (edc-lab-dashboard)

0.1.22
------
- in base.html, update bootstrap3 version to latest (edc-dashboard)
- in base.html, update jquery 1 version to latest (edc-dashboard)
- in base.html and overridden admin forms, update fontawesome (edc-dashboard, edc-model-admin)
- in base.html, pull js and css from cdn (bootstrap/jquery) (edc-dashboard)
- in base.html, remove unused js and css (edc-dashboard)
- include minor migration (edc-data-manager)

0.1.20
------
- additional constants/choices (edc-constants)
- other very minor changes / formatting

0.1.19
------
- add additional constants/choices (edc-constants)
- other very minor changes / formatting

0.1.18
------
- fix date comparison error when submitting requisitions that traced back to verifying
  the report_datetime to the consent_datetime. (edc-consent)
- raise a custom EDC exception if the DoB is not provided when calculating age. (edc-utils)

0.1.17
------
- register `holiday` system checks to run on deploy only. Run the `check` management
  command with the `--deploy` option. (edc-facility)
- register `rando` checks to run on deploy only. Add utility to generate
  dummy randomization list for trials that do not randomized at the patient
  level. (edc-randomization)
- raise an exception if settings.EDC_PROTOCOL_NUMBER is not set. (edc-protocol)
- add `enrolment` codenames by default. Add `my` codenames used by ListView to
  filter the queryset for records created by the current user only. (edc-auth)

0.1.16
------
- improve handling of sites grouped by country. (edc-sites)
- fix problem with exportables class that broke the export html page. (edc-export)

0.1.15
------
- Add django's ``site`` and ``auth`` models to the list of exportable models. (edc-export)
- Add edc_sites` model to the list of exportables. (edc-site)

0.1.14
------
- minor bug fixes. (edc-sites, edc-facility)

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
