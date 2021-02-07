|pypi| |downloads|

Clinic EDC
==========

``Clinic EDC`` contains complete code for a set of core modules for clinical trial data management to build a trial EDC. Refer to the specific open projects listed below for example EDC systems built with these modules. The codebase continues to evolve over many years of conducting clinical trials for mostly NIH-funded clinical trials through the `Harvard T Chan School of Public Health <https://aids.harvard.edu>`__, the `Botswana-Harvard AIDS Institute Partnership <https://aids.harvard.edu/research/bhp>`__ in Gaborone, Botswana and the `London School of Hygiene and Tropical Medicine <https://lshtm.ac.uk>`__. Almost all trials have been related to HIV/AIDS research. Recent work with the `Liverpool School of Tropical Medicine <https://lstm.ac.uk>`__ has expanded into Diabetes (DM), Hypertension (HTN) and models of integrating care in Africa (https://inteafrica.org) for the three main chronic conditions -- HIV/DM/HTN. 


The ``Clinic EDC`` for each trial consists of a subset of trial-specific modules that reference this module.

(python 3.8 and Django 3.0+ required, see requirements.txt)


Projects that use the EDC
-------------------------
Recent examples of EDC's using this codebase:

Mapitio
~~~~~~~

Retrospective HIV/Diabetes/Hypertension Cohort (Tanzania)

https://github.com/mapitio/mapitio-edc (2020- )

INTE Africa Trial (Phase II)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

(32 sites in Uganda and Tanzania)

https://github.com/inte-africa-trial/inte-edc (2020- )

https://inteafrica.org

The META Trial
~~~~~~~~~~~~~~

(3 sites in Tanzania)

https://github.com/meta-trial/meta-edc (2019- )

http://www.isrctn.com/ISRCTN76157257


The Ambition Trial
~~~~~~~~~~~~~~~~~~

(7 sites in Botswana, Malawi, South Africa, Uganda, Zimbabwe)

https://github.com/ambition-trial/ambition-edc (2018- )

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

* edc-action-item |edc-action-item|
* edc-adverse-event |edc-adverse-event|
* edc-appointment |edc-appointment|
* edc-auth |edc-auth|
* edc-clinic |edc-clinic|
* edc-consent |edc-consent|
* edc-constants |edc-constants|
* edc-crf |edc-crf|
* edc-dashboard |edc-dashboard|
* edc-data-manager |edc-data-manager|
* edc-device |edc-device|
* edc-export |edc-export|
* edc-facility |edc-facility|
* edc-fieldsets |edc-fieldsets|
* edc-form-describer |edc-form-describer|
* edc-form-label |edc-form-label|
* edc-form-validators |edc-form-validators|
* edc-identifier |edc-identifier|
* edc-lab |edc-lab|
* edc-lab-dashboard |edc-lab-dashboard|
* edc-label |edc-label|
* edc-list-data |edc-list-data|
* edc-locator |edc-locator|
* edc-ltfu |edc-ltfu|
* edc-metadata |edc-metadata|
* edc-metadata-rules |edc-metadata-rules|
* edc-model |edc-model|
* edc-model-admin |edc-model-admin|
* edc-model-fields |edc-model-fields|
* edc-model-wrapper |edc-model-wrapper|
* edc-navbar |edc-navbar|
* edc-notification |edc-notification|
* edc-offstudy |edc-offstudy|
* edc-pdutils |edc-pdutils|
* edc-pharmacy |edc-pharmacy|
* edc-pharmacy-dashboard |edc-pharmacy-dashboard|
* edc-prn |edc-prn|
* edc-protocol |edc-protocol|
* edc-randomization |edc-randomization|
* edc-reference |edc-reference|
* edc-registration |edc-registration|
* edc-reportable |edc-reportable|
* edc-reports |edc-reports|
* edc-review-dashboard |edc-review-dashboard|
* edc-screening |edc-screening|
* edc-search |edc-search|
* edc-sites |edc-sites|
* edc-subject-dashboard |edc-subject-dashboard|
* edc-subject-model-wrappers |edc-subject-model-wrappers|
* edc-test-utils |edc-test-utils|
* edc-timepoint |edc-timepoint|
* edc-transfer |edc-transfer|
* edc-utils |edc-utils|
* edc-visit-schedule |edc-visit-schedule|
* edc-visit-tracking |edc-visit-tracking|


.. |pypi| image:: https://img.shields.io/pypi/v/edc.svg
    :target: https://pypi.python.org/pypi/edc

.. |downloads| image:: https://pepy.tech/badge/edc
   :target: https://pepy.tech/project/edc
   
.. |django| image:: https://www.djangoproject.com/m/img/badges/djangomade124x25.gif
   :target: http://www.djangoproject.com/
   :alt: Made with Django

.. |edc-action-item| image:: https://github.com/clinicedc/edc-action-item/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-action-item/actions?query=workflow:build
.. |edc-adverse-event| image:: https://github.com/clinicedc/edc-adverse-event/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-adverse-event/actions?query=workflow:build
.. |edc-appointment| image:: https://github.com/clinicedc/edc-appointment/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-appointment/actions?query=workflow:build
.. |edc-auth| image:: https://github.com/clinicedc/edc-auth/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-auth/actions?query=workflow:build
.. |edc-clinic| image:: https://github.com/clinicedc/edc-clinic/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-clinic/actions?query=workflow:build
.. |edc-consent| image:: https://github.com/clinicedc/edc-consent/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-consent/actions?query=workflow:build
.. |edc-constants| image:: https://github.com/clinicedc/edc-constants/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-constants/actions?query=workflow:build
.. |edc-crf| image:: https://github.com/clinicedc/edc-crf/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-crf/actions?query=workflow:build
.. |edc-dashboard| image:: https://github.com/clinicedc/edc-dashboard/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-dashboard/actions?query=workflow:build
.. |edc-data-manager| image:: https://github.com/clinicedc/edc-data-manager/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-data-manager/actions?query=workflow:build
.. |edc-device| image:: https://github.com/clinicedc/edc-device/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-device/actions?query=workflow:build
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
.. |edc-model| image:: https://github.com/clinicedc/edc-model/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model/actions?query=workflow:build
.. |edc-model-admin| image:: https://github.com/clinicedc/edc-model-admin/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model-admin/actions?query=workflow:build
.. |edc-model-fields| image:: https://github.com/clinicedc/edc-model-fields/workflows/build/badge.svg?branch=develop
  :target: https://github.com/clinicedc/edc-model-fields/actions?query=workflow:build
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
  
