|pypi| |downloads|

Clinic EDC
==========

``Clinic EDC`` contains complete code for a set of core modules for clinical trial data management to build a trial EDC. Refer to the specific open projects listed below for example EDC systems built with these modules. The more recent the trial the better the example. The codebase continues to evolve over many years of conducting clinical trials for mostly NIH-funded clinical trials through the `Harvard T Chan School of Public Health <https://aids.harvard.edu>`__, the `Botswana-Harvard AIDS Institute Partnership <https://aids.harvard.edu/research/bhp>`__ in Gaborone, Botswana and the `London School of Hygiene and Tropical Medicine <https://lshtm.ac.uk>`__. Almost all trials have been related to HIV/AIDS research. Recent work with the `Liverpool School of Tropical Medicine <https://lstm.ac.uk>`__ has expanded into Diabetes (DM), Hypertension (HTN) and models of integrating care in Africa (https://inteafrica.org) for the three main chronic conditions -- HIV/DM/HTN.

See also https://www.lstmed.ac.uk/RespondAfrica

The implementations we have developed are mostly eSource systems rather than the traditional EDCs.

The ``Clinic EDC`` for each trial consists of a subset of trial-specific modules that reference this module.

(python 3.9 and Django 3.0+ required, see requirements.txt)


Projects that use the EDC
-------------------------
Recent examples of EDC's using this codebase:

INTECOMM
--------
under-development (2021- )

EFFECT
------
Fluconazole plus flucytosine vs. fluconazole alone for cryptococcal antigen-positive patients identified through screening:

A phase III randomised controlled trial

under-development (2021- )


META Trial (Phase III)
~~~~~~~~~~~~~~~~~~~~~~
A randomised placebo-controlled double-blind phase III trial to determine the effects of metformin versus placebo on the incidence of diabetes in HIV-infected persons with pre-diabetes in Tanzania.

under-development (2021- )


Mapitio
~~~~~~~

Retrospective HIV/Diabetes/Hypertension Cohort (Tanzania)

https://github.com/mapitio/mapitio-edc (2020- )

INTE Africa Trial
~~~~~~~~~~~~~~~~~

(32 sites in Uganda and Tanzania)

https://github.com/inte-africa-trial/inte-edc (2020- )

https://inteafrica.org

META Trial (Phase II)
~~~~~~~~~~~~~~~~~~~~~

(3 sites in Tanzania)

https://github.com/meta-trial/meta-edc (2019-2021)

http://www.isrctn.com/ISRCTN76157257


The Ambition Trial
~~~~~~~~~~~~~~~~~~

(7 sites in Botswana, Malawi, South Africa, Uganda, Zimbabwe)

https://github.com/ambition-trial/ambition-edc (2018-2021)

http://www.isrctn.com/ISRCTN72509687

Start with main repo `ambition-edc`

The Botswana Combination Prevention Project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(30 remote offline sites in Botswana)

https://github.com/botswana-combination-prevention-project (2013-2018)

https://clinicaltrials.gov/ct2/show/NCT01965470

https://www.ncbi.nlm.nih.gov/pubmed/?term=NCT01965470

https://aids.harvard.edu/tag/bcpp/

Start with main repo `bcpp`

Contacts
--------

For further information go to https://github.com/erikvw.

|django|

========================== ============================== ==================================
edc-action-item             |edc-action-item|             |pypi-edc-action-item|
edc-adverse-event           |edc-adverse-event|           |pypi-edc-adverse-event|
edc-appointment             |edc-appointment|             |pypi-edc-appointment|
edc-auth                    |edc-auth|                    |pypi-edc-auth|
edc-consent                 |edc-consent|                 |pypi-edc-consent|
edc-constants                                             |pypi-edc-constants|
edc-crf                     |edc-crf|                     |pypi-edc-crf|
edc-dashboard               |edc-dashboard|               |pypi-edc-dashboard|
edc-data-manager            |edc-data-manager|            |pypi-edc-data-manager|
edc-device                  |edc-device|                  |pypi-edc-device|
edc-export                  |edc-export|                  |pypi-edc-export|
edc-facility                |edc-facility|                |pypi-edc-facility|
edc-fieldsets               |edc-fieldsets|               |pypi-edc-fieldsets|
edc-form-describer          |edc-form-describer|          |pypi-edc-form-describer|
edc-form-label              |edc-form-label|              |pypi-edc-form-label|
edc-form-validators         |edc-form-validators|         |pypi-edc-form-validators|
edc-identifier              |edc-identifier|              |pypi-edc-identifier|
edc-lab                     |edc-lab|                     |pypi-edc-lab|
edc-lab-panel               |edc-lab-panel|               |pypi-edc-lab-panel|
edc-lab-dashboard           |edc-lab-dashboard|           |pypi-edc-lab-dashboard|
edc-label                   |edc-label|                   |pypi-edc-label|
edc-list-data               |edc-list-data|               |pypi-edc-list-data|
edc-locator                 |edc-locator|                 |pypi-edc-locator|
edc-ltfu                    |edc-ltfu|                    |pypi-edc-ltfu|
edc-metadata                |edc-metadata|                |pypi-edc-metadata|
edc-model                   |edc-model|                   |pypi-edc-model|
edc-model-admin             |edc-model-admin|             |pypi-edc-model-admin|
edc-model-fields            |edc-model-fields|            |pypi-edc-model-fields|
edc-model-form              |edc-model-form|              |pypi-edc-model-form|
edc-model-wrapper           |edc-model-wrapper|           |pypi-edc-model-wrapper|
edc-navbar                  |edc-navbar|                  |pypi-edc-navbar|
edc-notification            |edc-notification|            |pypi-edc-notification|
edc-offstudy                |edc-offstudy|                |pypi-edc-offstudy|
edc-pdutils                 |edc-pdutils|                 |pypi-edc-pdutils|
edc-prn                     |edc-prn|                     |pypi-edc-prn|
edc-protocol                |edc-protocol|                |pypi-edc-protocol|
edc-randomization           |edc-randomization|           |pypi-edc-randomization|
edc-reference               |edc-reference|               |pypi-edc-reference|
edc-registration            |edc-registration|            |pypi-edc-registration|
edc-reportable              |edc-reportable|              |pypi-edc-reportable|
edc-reports                 |edc-reports|                 |pypi-edc-reports|
edc-review-dashboard        |edc-review-dashboard|        |pypi-edc-review-dashboard|
edc-screening               |edc-screening|               |pypi-edc-screening|
edc-search                  |edc-search|                  |pypi-edc-search|
edc-sites                   |edc-sites|                   |pypi-edc-sites|
edc-subject-dashboard       |edc-subject-dashboard|       |pypi-edc-subject-dashboard|
edc-subject-model-wrappers  |edc-subject-model-wrappers|  |pypi-edc-subject-model-wrappers|
edc-test-utils              |edc-test-utils|              |pypi-edc-test-utils|
edc-timepoint               |edc-timepoint|               |pypi-edc-timepoint|
edc-transfer                |edc-transfer|                |pypi-edc-transfer|
edc-utils                   |edc-utils|                   |pypi-edc-utils|
edc-visit-schedule          |edc-visit-schedule|          |pypi-edc-visit-schedule|
edc-visit-tracking          |edc-visit-tracking|          |pypi-edc-visit-tracking|
========================== ============================== ==================================


Contrib
-------

========================== ============================== ==================================
edc-adherence               |edc-adherence|               |pypi-edc-adherence|
edc-blood-results           |edc-blood-results|           |pypi-edc-blood-results|
edc-dx                      |edc-dx|                      |pypi-edc-dx|
edc-dx-review               |edc-dx-review|               |pypi-edc-dx-review|
edc-glucose                 |edc-glucose|                 |pypi-edc-glucose|
edc-mnsi                    |edc-mnsi|                    |pypi-edc-mnsi|
edc-pharmacy                                              |pypi-edc-pharmacy|
edc-pharmacy-dashboard                                    |pypi-edc-pharmacy-dashboard|
edc-vitals                  |edc-vitals|                  |pypi-edc-vitals|
========================== ============================== ==================================

Thanks to JetBrains for support with an opensource PyCharm IDE licence. |jet-brains|

.. |pypi| image:: https://img.shields.io/pypi/v/edc.svg
    :target: https://pypi.python.org/pypi/edc

.. |downloads| image:: https://pepy.tech/badge/edc
   :target: https://pepy.tech/project/edc

.. |django| image:: https://www.djangoproject.com/m/img/badges/djangomade124x25.gif
   :target: http://www.djangoproject.com/
   :alt: Made with Django

.. |edc-glucose| image:: https://github.com/clinicedc/edc-glucose/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-glucose/actions?query=workflow:build
.. |edc-action-item| image:: https://github.com/clinicedc/edc-action-item/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-action-item/actions?query=workflow:build
.. |edc-adherence| image:: https://github.com/clinicedc/edc-adherence/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-adherence/actions?query=workflow:build
.. |edc-adverse-event| image:: https://github.com/clinicedc/edc-adverse-event/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-adverse-event/actions?query=workflow:build
.. |edc-appointment| image:: https://github.com/clinicedc/edc-appointment/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-appointment/actions?query=workflow:build
.. |edc-auth| image:: https://github.com/clinicedc/edc-auth/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-auth/actions?query=workflow:build
.. |edc-blood-results| image:: https://github.com/clinicedc/edc-blood-results/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-blood-results/actions?query=workflow:build
.. |edc-clinic| image:: https://github.com/clinicedc/edc-clinic/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-clinic/actions?query=workflow:build
.. |edc-consent| image:: https://github.com/clinicedc/edc-consent/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-consent/actions?query=workflow:build
.. |edc-crf| image:: https://github.com/clinicedc/edc-crf/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-crf/actions?query=workflow:build
.. |edc-dashboard| image:: https://github.com/clinicedc/edc-dashboard/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-dashboard/actions?query=workflow:build
.. |edc-data-manager| image:: https://github.com/clinicedc/edc-data-manager/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-data-manager/actions?query=workflow:build
.. |edc-device| image:: https://github.com/clinicedc/edc-device/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-device/actions?query=workflow:build
.. |edc-dx| image:: https://github.com/clinicedc/edc-dx/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-dx/actions?query=workflow:build
.. |edc-dx-review| image:: https://github.com/clinicedc/edc-dx-review/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-dx-review/actions?query=workflow:build
.. |edc-export| image:: https://github.com/clinicedc/edc-export/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-export/actions?query=workflow:build
.. |edc-facility| image:: https://github.com/clinicedc/edc-facility/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-facility/actions?query=workflow:build
.. |edc-fieldsets| image:: https://github.com/clinicedc/edc-fieldsets/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-fieldsets/actions?query=workflow:build
.. |edc-form-describer| image:: https://github.com/clinicedc/edc-form-describer/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-form-describer/actions?query=workflow:build
.. |edc-form-label| image:: https://github.com/clinicedc/edc-form-label/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-form-label/actions?query=workflow:build
.. |edc-form-validators| image:: https://github.com/clinicedc/edc-form-validators/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-form-validators/actions?query=workflow:build
.. |edc-identifier| image:: https://github.com/clinicedc/edc-identifier/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-identifier/actions?query=workflow:build
.. |edc-lab| image:: https://github.com/clinicedc/edc-lab/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-lab/actions?query=workflow:build
.. |edc-lab-panel| image:: https://github.com/clinicedc/edc-lab-panel/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-lab-panel/actions?query=workflow:build
.. |edc-lab-dashboard| image:: https://github.com/clinicedc/edc-lab-dashboard/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-lab-dashboard/actions?query=workflow:build
.. |edc-label| image:: https://github.com/clinicedc/edc-label/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-label/actions?query=workflow:build
.. |edc-list-data| image:: https://github.com/clinicedc/edc-list-data/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-list-data/actions?query=workflow:build
.. |edc-locator| image:: https://github.com/clinicedc/edc-locator/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-locator/actions?query=workflow:build
.. |edc-ltfu| image:: https://github.com/clinicedc/edc-ltfu/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-ltfu/actions?query=workflow:build
.. |edc-metadata| image:: https://github.com/clinicedc/edc-metadata/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-metadata/actions?query=workflow:build
.. |edc-metadata-rules| image:: https://github.com/clinicedc/edc-metadata-rules/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-metadata-rules/actions?query=workflow:build
.. |edc-mnsi| image:: https://github.com/clinicedc/edc-mnsi/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-mnsi/actions?query=workflow:build
.. |edc-model| image:: https://github.com/clinicedc/edc-model/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model/actions?query=workflow:build
.. |edc-model-admin| image:: https://github.com/clinicedc/edc-model-admin/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model-admin/actions?query=workflow:build
.. |edc-model-fields| image:: https://github.com/clinicedc/edc-model-fields/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model-fields/actions?query=workflow:build
.. |edc-model-form| image:: https://github.com/clinicedc/edc-model-form/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model-form/actions?query=workflow:build
.. |edc-model-wrapper| image:: https://github.com/clinicedc/edc-model-wrapper/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model-wrapper/actions?query=workflow:build
.. |edc-navbar| image:: https://github.com/clinicedc/edc-navbar/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-navbar/actions?query=workflow:build
.. |edc-notification| image:: https://github.com/clinicedc/edc-notification/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-notification/actions?query=workflow:build
.. |edc-offstudy| image:: https://github.com/clinicedc/edc-offstudy/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-offstudy/actions?query=workflow:build
.. |edc-pdutils| image:: https://github.com/clinicedc/edc-pdutils/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-pdutils/actions?query=workflow:build
.. |edc-pharmacy| image:: https://github.com/clinicedc/edc-pharmacy/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-pharmacy/actions?query=workflow:build
.. |edc-pharmacy-dashboard| image:: https://github.com/clinicedc/edc-pharmacy-dashboard/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-pharmacy-dashboard/actions?query=workflow:build
.. |edc-prn| image:: https://github.com/clinicedc/edc-prn/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-prn/actions?query=workflow:build
.. |edc-protocol| image:: https://github.com/clinicedc/edc-protocol/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-protocol/actions?query=workflow:build
.. |edc-randomization| image:: https://github.com/clinicedc/edc-randomization/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-randomization/actions?query=workflow:build
.. |edc-reference| image:: https://github.com/clinicedc/edc-reference/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-reference/actions?query=workflow:build
.. |edc-registration| image:: https://github.com/clinicedc/edc-registration/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-registration/actions?query=workflow:build
.. |edc-reportable| image:: https://github.com/clinicedc/edc-reportable/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-reportable/actions?query=workflow:build
.. |edc-reports| image:: https://github.com/clinicedc/edc-reports/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-reports/actions?query=workflow:build
.. |edc-review-dashboard| image:: https://github.com/clinicedc/edc-review-dashboard/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-review-dashboard/actions?query=workflow:build
.. |edc-screening| image:: https://github.com/clinicedc/edc-screening/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-screening/actions?query=workflow:build
.. |edc-search| image:: https://github.com/clinicedc/edc-search/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-search/actions?query=workflow:build
.. |edc-sites| image:: https://github.com/clinicedc/edc-sites/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-sites/actions?query=workflow:build
.. |edc-subject-dashboard| image:: https://github.com/clinicedc/edc-subject-dashboard/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-subject-dashboard/actions?query=workflow:build
.. |edc-subject-model-wrappers| image:: https://github.com/clinicedc/edc-subject-model-wrappers/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-subject-model-wrappers/actions?query=workflow:build
.. |edc-test-utils| image:: https://github.com/clinicedc/edc-test-utils/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-test-utils/actions?query=workflow:build
.. |edc-timepoint| image:: https://github.com/clinicedc/edc-timepoint/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-timepoint/actions?query=workflow:build
.. |edc-transfer| image:: https://github.com/clinicedc/edc-transfer/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-transfer/actions?query=workflow:build
.. |edc-utils| image:: https://github.com/clinicedc/edc-utils/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-utils/actions?query=workflow:build
.. |edc-visit-schedule| image:: https://github.com/clinicedc/edc-visit-schedule/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-visit-schedule/actions?query=workflow:build
.. |edc-visit-tracking| image:: https://github.com/clinicedc/edc-visit-tracking/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-visit-tracking/actions?query=workflow:build
.. |edc-vitals| image:: https://github.com/clinicedc/edc-vitals/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-vitals/actions?query=workflow:build

.. |pypi-edc-action-item| image:: https://img.shields.io/pypi/v/edc-action-item.svg
    :target: https://pypi.python.org/pypi/edc-action-item
.. |pypi-edc-adherence| image:: https://img.shields.io/pypi/v/edc-adherence.svg
    :target: https://pypi.python.org/pypi/edc-adherence
.. |pypi-edc-adverse-event| image:: https://img.shields.io/pypi/v/edc-adverse-event.svg
    :target: https://pypi.python.org/pypi/edc-adverse-event
.. |pypi-edc-appointment| image:: https://img.shields.io/pypi/v/edc-appointment.svg
    :target: https://pypi.python.org/pypi/edc-appointment
.. |pypi-edc-auth| image:: https://img.shields.io/pypi/v/edc-auth.svg
    :target: https://pypi.python.org/pypi/edc-auth
.. |pypi-edc-blood-results| image:: https://img.shields.io/pypi/v/edc-blood-results.svg
    :target: https://pypi.python.org/pypi/edc-blood-results
.. |pypi-edc-consent| image:: https://img.shields.io/pypi/v/edc-consent.svg
    :target: https://pypi.python.org/pypi/edc-consent
.. |pypi-edc-constants| image:: https://img.shields.io/pypi/v/edc-constants.svg
    :target: https://pypi.python.org/pypi/edc-constants
.. |pypi-edc-crf| image:: https://img.shields.io/pypi/v/edc-crf.svg
    :target: https://pypi.python.org/pypi/edc-crf
.. |pypi-edc-dashboard| image:: https://img.shields.io/pypi/v/edc-dashboard.svg
    :target: https://pypi.python.org/pypi/edc-dashboard
.. |pypi-edc-data-manager| image:: https://img.shields.io/pypi/v/edc-data-manager.svg
    :target: https://pypi.python.org/pypi/edc-data-manager
.. |pypi-edc-device| image:: https://img.shields.io/pypi/v/edc-device.svg
    :target: https://pypi.python.org/pypi/edc-device
.. |pypi-edc-dx| image:: https://img.shields.io/pypi/v/edc-dx.svg
    :target: https://pypi.python.org/pypi/edc-dx
.. |pypi-edc-dx-review| image:: https://img.shields.io/pypi/v/edc-dx-review.svg
    :target: https://pypi.python.org/pypi/edc-dx-review
.. |pypi-edc-export| image:: https://img.shields.io/pypi/v/edc-export.svg
    :target: https://pypi.python.org/pypi/edc-export
.. |pypi-edc-facility| image:: https://img.shields.io/pypi/v/edc-facility.svg
    :target: https://pypi.python.org/pypi/edc-facility
.. |pypi-edc-fieldsets| image:: https://img.shields.io/pypi/v/edc-fieldsets.svg
    :target: https://pypi.python.org/pypi/edc-fieldsets
.. |pypi-edc-form-describer| image:: https://img.shields.io/pypi/v/edc-form-describer.svg
    :target: https://pypi.python.org/pypi/edc-form-describer
.. |pypi-edc-form-label| image:: https://img.shields.io/pypi/v/edc-form-label.svg
    :target: https://pypi.python.org/pypi/edc-form-label
.. |pypi-edc-form-validators| image:: https://img.shields.io/pypi/v/edc-form-validators.svg
    :target: https://pypi.python.org/pypi/edc-form-validators
.. |pypi-edc-glucose| image:: https://img.shields.io/pypi/v/edc-glucose.svg
    :target: https://pypi.python.org/pypi/edc-glucose
.. |pypi-edc-identifier| image:: https://img.shields.io/pypi/v/edc-identifier.svg
    :target: https://pypi.python.org/pypi/edc-identifier
.. |pypi-edc-lab| image:: https://img.shields.io/pypi/v/edc-lab.svg
    :target: https://pypi.python.org/pypi/edc-lab
.. |pypi-edc-lab-panel| image:: https://img.shields.io/pypi/v/edc-lab-panel.svg
    :target: https://pypi.python.org/pypi/edc-lab-panel
.. |pypi-edc-lab-dashboard| image:: https://img.shields.io/pypi/v/edc-lab-dashboard.svg
    :target: https://pypi.python.org/pypi/edc-lab-dashboard
.. |pypi-edc-label| image:: https://img.shields.io/pypi/v/edc-label.svg
    :target: https://pypi.python.org/pypi/edc-label
.. |pypi-edc-list-data| image:: https://img.shields.io/pypi/v/edc-list-data.svg
    :target: https://pypi.python.org/pypi/edc-list-data
.. |pypi-edc-locator| image:: https://img.shields.io/pypi/v/edc-locator.svg
    :target: https://pypi.python.org/pypi/edc-locator
.. |pypi-edc-ltfu| image:: https://img.shields.io/pypi/v/edc-ltfu.svg
    :target: https://pypi.python.org/pypi/edc-ltfu
.. |pypi-edc-metadata| image:: https://img.shields.io/pypi/v/edc-metadata.svg
    :target: https://pypi.python.org/pypi/edc-metadata
.. |pypi-edc-mnsi| image:: https://img.shields.io/pypi/v/edc-mnsi.svg
    :target: https://pypi.python.org/pypi/edc-mnsi
.. |pypi-edc-model| image:: https://img.shields.io/pypi/v/edc-model.svg
    :target: https://pypi.python.org/pypi/edc-model
.. |pypi-edc-model-admin| image:: https://img.shields.io/pypi/v/edc-model-admin.svg
    :target: https://pypi.python.org/pypi/edc-model-admin
.. |pypi-edc-model-fields| image:: https://img.shields.io/pypi/v/edc-model-fields.svg
    :target: https://pypi.python.org/pypi/edc-model-fields
.. |pypi-edc-model-form| image:: https://img.shields.io/pypi/v/edc-model-form.svg
    :target: https://pypi.python.org/pypi/edc-model-form
.. |pypi-edc-model-wrapper| image:: https://img.shields.io/pypi/v/edc-model-wrapper.svg
    :target: https://pypi.python.org/pypi/edc-model-wrapper
.. |pypi-edc-navbar| image:: https://img.shields.io/pypi/v/edc-navbar.svg
    :target: https://pypi.python.org/pypi/edc-navbar
.. |pypi-edc-notification| image:: https://img.shields.io/pypi/v/edc-notification.svg
    :target: https://pypi.python.org/pypi/edc-notification
.. |pypi-edc-offstudy| image:: https://img.shields.io/pypi/v/edc-offstudy.svg
    :target: https://pypi.python.org/pypi/edc-offstudy
.. |pypi-edc-pdutils| image:: https://img.shields.io/pypi/v/edc-pdutils.svg
    :target: https://pypi.python.org/pypi/edc-pdutils
.. |pypi-edc-pharmacy| image:: https://img.shields.io/pypi/v/edc-pharmacy.svg
    :target: https://pypi.python.org/pypi/edc-pharmacy
.. |pypi-edc-pharmacy-dashboard| image:: https://img.shields.io/pypi/v/edc-pharmacy-dashboard.svg
    :target: https://pypi.python.org/pypi/edc-pharmacy-dashboard
.. |pypi-edc-prn| image:: https://img.shields.io/pypi/v/edc-prn.svg
    :target: https://pypi.python.org/pypi/edc-prn
.. |pypi-edc-protocol| image:: https://img.shields.io/pypi/v/edc-protocol.svg
    :target: https://pypi.python.org/pypi/edc-protocol
.. |pypi-edc-randomization| image:: https://img.shields.io/pypi/v/edc-randomization.svg
    :target: https://pypi.python.org/pypi/edc-randomization
.. |pypi-edc-reference| image:: https://img.shields.io/pypi/v/edc-reference.svg
    :target: https://pypi.python.org/pypi/edc-reference
.. |pypi-edc-registration| image:: https://img.shields.io/pypi/v/edc-registration.svg
    :target: https://pypi.python.org/pypi/edc-registration
.. |pypi-edc-reportable| image:: https://img.shields.io/pypi/v/edc-reportable.svg
    :target: https://pypi.python.org/pypi/edc-reportable
.. |pypi-edc-reports| image:: https://img.shields.io/pypi/v/edc-reports.svg
    :target: https://pypi.python.org/pypi/edc-reports
.. |pypi-edc-review-dashboard| image:: https://img.shields.io/pypi/v/edc-review-dashboard.svg
    :target: https://pypi.python.org/pypi/edc-review-dashboard
.. |pypi-edc-screening| image:: https://img.shields.io/pypi/v/edc-screening.svg
    :target: https://pypi.python.org/pypi/edc-screening
.. |pypi-edc-search| image:: https://img.shields.io/pypi/v/edc-search.svg
    :target: https://pypi.python.org/pypi/edc-search
.. |pypi-edc-sites| image:: https://img.shields.io/pypi/v/edc-sites.svg
    :target: https://pypi.python.org/pypi/edc-sites
.. |pypi-edc-subject-dashboard| image:: https://img.shields.io/pypi/v/edc-subject-dashboard.svg
    :target: https://pypi.python.org/pypi/edc-subject-dashboard
.. |pypi-edc-subject-model-wrappers| image:: https://img.shields.io/pypi/v/edc-subject-model-wrappers.svg
    :target: https://pypi.python.org/pypi/edc-subject-model-wrappers
.. |pypi-edc-test-utils| image:: https://img.shields.io/pypi/v/edc-test-utils.svg
    :target: https://pypi.python.org/pypi/edc-test-utils
.. |pypi-edc-timepoint| image:: https://img.shields.io/pypi/v/edc-timepoint.svg
    :target: https://pypi.python.org/pypi/edc-timepoint
.. |pypi-edc-transfer| image:: https://img.shields.io/pypi/v/edc-transfer.svg
    :target: https://pypi.python.org/pypi/edc-transfer
.. |pypi-edc-utils| image:: https://img.shields.io/pypi/v/edc-utils.svg
    :target: https://pypi.python.org/pypi/edc-utils
.. |pypi-edc-visit-schedule| image:: https://img.shields.io/pypi/v/edc-visit-schedule.svg
    :target: https://pypi.python.org/pypi/edc-visit-schedule
.. |pypi-edc-visit-tracking| image:: https://img.shields.io/pypi/v/edc-visit-tracking.svg
    :target: https://pypi.python.org/pypi/edc-visit-tracking
.. |pypi-edc-vitals| image:: https://img.shields.io/pypi/v/edc-vitals.svg
    :target: https://pypi.python.org/pypi/edc-vitals
.. |jet-brains| image:: https://github.com/clinicedc/edc/blob/master/image/icon-pycharm.png
    :target: https://jb.gg/OpenSource
    :width: 120
    :alt: JetBrains PyCharm
