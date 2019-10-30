Exporting Tables/Models with Encrypted Data
-------------------------------------------

By default, the export feature of the EDC does not export any model fields that are encrypted.

Encrypted fields include all PII and some fields in the Randomization list.

To export a table with encrypted fields you need access to the system console.

Once at the application console:

.. code-block:: python

	from edc_pdutils import CsvModelExporter

	export_folder = '/Users/erikvw/Downloads/'
	model = 'ambition_rando.randomizationlist'

	exporter = CsvModelExporter(model=model, export_folder=export_folder, decrypt=True)

	exporter.to_csv()

Once exported, a file will be placed in the export folder specified. In the above example the file name will be prefixed with the model name given.

Copy the file from the export folder to your destination.
