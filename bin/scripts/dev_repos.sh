# Install third party packages
pip install -r https://raw.githubusercontent.com/clinicedc/edc/develop/requirements.tests/third_party_dev.txt

# Install packages from: https://github.com/erikvw as editable
pip install -e ../django-audit-fields
pip install -e ../django-crypto-fields
pip install -e ../django-multisite2
pip install -e ../django-revision

# Install packages from: https://github.com/clinicedc as editable
pip install -e ../edc-action-item
pip install -e ../edc-adherence
pip install -e ../edc-adverse-event
pip install -e ../edc-analytics
pip install -e ../edc-appconfig
pip install -e ../edc-appointment
pip install -e ../edc-auth
pip install -e ../edc-consent
pip install -e ../edc-constants
pip install -e ../edc-crf
pip install -e ../edc-dashboard
pip install -e ../edc-data-manager
pip install -e ../edc-device
pip install -e ../edc-document-status
pip install -e ../edc-dx
pip install -e ../edc-dx-review
pip install -e ../edc-egfr
pip install -e ../edc-export
pip install -e ../edc-facility
pip install -e ../edc-fieldsets
pip install -e ../edc-form-describer
pip install -e ../edc-form-label
pip install -e ../edc-form-runners
pip install -e ../edc-form-validators
pip install -e ../edc-glucose
pip install -e ../edc-he
pip install -e ../edc-identifier
pip install -e ../edc-lab
pip install -e ../edc-lab-dashboard
pip install -e ../edc-lab-panel
pip install -e ../edc-lab-results
pip install -e ../edc-label
pip install -e ../edc-list-data
pip install -e ../edc-listboard
pip install -e ../edc-locator
pip install -e ../edc-ltfu
pip install -e ../edc-metadata
pip install -e ../edc-mnsi
pip install -e ../edc-model
pip install -e ../edc-model-admin
pip install -e ../edc-model-fields
pip install -e ../edc-model-form
pip install -e ../edc-navbar
pip install -e ../edc-next-appointment
pip install -e ../edc-notification
pip install -e ../edc-offstudy
pip install -e ../edc-pdf-reports
pip install -e ../edc-pdutils
pip install -e ../edc-pharmacy
pip install -e ../edc-prn
pip install -e ../edc-protocol
pip install -e ../edc-protocol-incident
pip install -e ../edc-pylabels
pip install -e ../edc-qareports
pip install -e ../edc-qol
pip install -e ../edc-randomization
pip install -e ../edc-refusal
pip install -e ../edc-registration
pip install -e ../edc-reportable
pip install -e ../edc-review-dashboard
pip install -e ../edc-rx
pip install -e ../edc-screening
pip install -e ../edc-search
pip install -e ../edc-sites
pip install -e ../edc-subject-dashboard
pip install -e ../edc-timepoint
pip install -e ../edc-transfer
pip install -e ../edc-unblinding
pip install -e ../edc-utils
pip install -e ../edc-view-utils
pip install -e ../edc-visit-schedule
pip install -e ../edc-visit-tracking
pip install -e ../edc-vitals

# Install packages from: https://github.com/clinicedc (contrib) as editable
pip install -e ../edc-csf
pip install -e ../edc-microbiology
pip install -e ../edc-microscopy
