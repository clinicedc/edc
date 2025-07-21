
M2M Pivot Table in SQL
======================

Here is an example of how to pivot a CRF on a ManyToMany column. M2M uses an interim table to join the main table with the reference table. In our case
the main table is a ``CRF``, the reference table is a ``List`` table.

Our model class has two M2M fields:

.. code-block:: python

   abnormal_obs_left_foot = models.ManyToManyField(
      "edc_mnsi.abnormalfootappearanceobservations",
         related_name="+",
         verbose_name=f"If NO, check all that apply to LEFT foot?",
         blank=True,
     )

   abnormal_obs_right_foot = models.ManyToManyField(
      "edc_mnsi.abnormalfootappearanceobservations",
         related_name="+",
         verbose_name=f"If NO, check all that apply to RIGHT foot?",
         blank=True,
     )


An example of the complete model class may be found here: meta_subject_mnsi_. See also edc_mnsi_.

The tables involved are:

* meta_subject_mnsi (CRF)
* edc_mnsi_abnormalfootappearanceobservations (List table)
* meta_subject_mnsi_abnormal_obs_left_foot (Interim table)

The interim table is created by ``Django``.

The SQL pattern:

.. code-block:: sql

    SET @sql = NULL;
    SELECT GROUP_CONCAT(logic)
    INTO @sql
    FROM your_table;

    SET @sql = CONCAT('select…', @sql, 'from…');

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;


In the case below, ``your_table`` is temp table created from a sub-query.

.. code-block:: sql

    SET @sql = NULL;

    CREATE TEMPORARY TABLE tmp_data
        select name as obs_name, subject_identifier, visit_code, visit_code_sequence
        from meta_subject_mnsi as CRF
            left join meta_subject_subjectvisit as v on crf.subject_visit_id=v.id
            left join meta_subject_mnsi_abnormal_obs_left_foot as M2MA on CRF.id = m2ma.mnsi_id
            left join edc_mnsi_abnormalfootappearanceobservations as LISTA
            on M2MA.abnormalfootappearanceobservations_id = LISTA.id
        WHERE LISTA.name is not null
        GROUP BY subject_identifier, visit_code, visit_code_sequence, LISTA.name
        UNION ALL
        select name as obs_name,v.subject_identifier, v.visit_code, v.visit_code_sequence
        from meta_subject_mnsi as CRF
            left join meta_subject_subjectvisit as v on crf.subject_visit_id=v.id
            left join meta_subject_mnsi_abnormal_obs_right_foot as M2MB on crf.id = M2MB.mnsi_id
            left join edc_mnsi_abnormalfootappearanceobservations as LISTB
            on m2mb.abnormalfootappearanceobservations_id = LISTB.id
        WHERE LISTB.name is not null
        GROUP BY subject_identifier, visit_code, visit_code_sequence, LISTB.name;

    SELECT
    GROUP_CONCAT(DISTINCT CONCAT(
      'SUM(CASE WHEN obs_name = "', obs_name, '" THEN 1 ELSE 0 END) AS ', obs_name)
    )
    INTO @sql
    FROM tmp_data;

    SET @sql = CONCAT('SELECT subject_identifier, visit_code, visit_code_sequence, ', @sql,
      ' FROM tmp_data GROUP BY subject_identifier, visit_code, visit_code_sequence');
    SELECT @sql;
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    DROP table tmp_data;

The result is pivoted on ``obs_name``.

.. code-block:: text

   | subject_identifier  visit_code  visit_code_sequence  callous_formation  deformity_amputation |
   +------------------+-----------+---------------------+------------------+----------------------+
   | 105-20-0021-1    |  1000     |  0                  |  2               | 1                    |
   +------------------+-----------+---------------------+------------------+----------------------+
   | 105-20-0022-4    |  1000     |  0                  |  1               | 0                    |
   +------------------+-----------+---------------------+------------------+----------------------+
   | 105-20-0023-2    |  1000     |  0                  |  0               | 0                    |
   +------------------+-----------+---------------------+------------------+----------------------+
    etc ...


.. _meta_subject_mnsi: https://github.com/meta-trial/meta-edc/blob/develop/meta_subject/models/mnsi.py
.. _edc_mnsi: https://github.com/clinicedc/edc-mnsi
