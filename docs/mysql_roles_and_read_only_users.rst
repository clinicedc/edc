Configure Statistician/Analyst Database Access
==============================================

Details how to create and configure MySQL roles with read only access,
along with how to create and configure end user accounts who will be
assigned these roles.

Download prerequisites (required scripts)
+++++++++++++++++++++++++++++++++++++++++

Before beginning, you will need to download the (prerequisite) scripts:

.. code-block:: bash

    mkdir -p ~/_scripts
    cd ~/_scripts

    git clone https://gist.github.com/JonathanWillitts/4e03ecfcd90fc71bd9968c4733e40676 db_grant_select_access
    git clone https://gist.github.com/JonathanWillitts/f799c690bc9b7ec09367034e75de0ae9 create_ssh_tunnel_user


Create MySQL DB role(s)
+++++++++++++++++++++++

.. code-block:: sql

    # Define one or more roles in the format: role-<read|write>-<trial>-<live|uat>
    CREATE ROLE 'role-read-ambition-live'@'localhost';
    CREATE ROLE 'role-read-ambition-uat'@'localhost';


See also: https://dev.mysql.com/doc/refman/8.0/en/roles.html#roles-creating-granting


Grant privileges to role
++++++++++++++++++++++++

We can use earlier downloaded script `db_grant_select_access.sh`
to assign `SELECT` privileges to all tables in a database,
excluding those containing 'rando' or 'erik' in their name.

.. code-block:: bash

    # Change to script location
    cd ~/_scripts/db_grant_select_access/

    # Grants/privileges defined in: generate_edc_select_grants.sql
    # providing select-only access to all tables in specified database,
    # excluding those containing 'rando' or 'erik' in their name.

    bash ./db_grant_select_access.sh role-read-ambition-live ambition_production
    bash ./db_grant_select_access.sh role-read-ambition-uat ambition_uat



Review role privileges
++++++++++++++++++++++

.. code-block:: sql

    # Show privileges for a role
    SHOW GRANTS FOR 'role-read-ambition-live'@'localhost';



Create SSH user
+++++++++++++++

This is the account that will be used to remotely connect to the database.

.. code-block:: bash

    # Create user using a secure, complex password (which you can then discard).
    # Full name, room, phone numbers etc can be skipped
    sudo bash ~/_scripts/create_ssh_tunnel_user/create_ssh_tunnel_user.sh my_username



Create MySQL DB user(s)
+++++++++++++++++++++++

.. code-block:: sql

    CREATE USER 'jw'@'localhost' IDENTIFIED BY 'different_p@ssw0rd';



Assign role(s) to user(s)
+++++++++++++++++++++++++

.. code-block:: sql

    # Assign roles to users, either individually
    GRANT 'role-read-ambition-live'@'localhost' TO 'jw'@'localhost';

    # Or all at once
    GRANT
    'role-read-ambition-live'@'localhost',
    'role-read-ambition-uat'@'localhost'
    TO 'jw'@'localhost';


Review list of users and roles
++++++++++++++++++++++++++++++

To review list of users, use the following:

.. code-block:: sql

    SELECT user, host, password_expired, password_last_changed, password_lifetime, account_locked FROM mysql.user;


Note: by default, role accounts are locked with expired passwords


Verify user privileges
++++++++++++++++++++++

.. code-block:: sql

    # Show privileges for a user (including any roles assigned)
    SHOW GRANTS FOR 'jw'@'localhost';

    # Expand role privileges for a user, showing effective privileges
    SHOW GRANTS FOR 'jw'@'localhost' USING 'role-read-ambition-live'@'localhost';


See also: https://dev.mysql.com/doc/refman/8.0/en/roles.html#roles-checking


Activating roles
++++++++++++++++

Even after creation, roles need to be activated for each user.

.. note::

    if additional roles are assigned to the user **after** setting the
    default roles for a user, one or more of the commands below will need to
    be re-run (to set this newly assigned role as one of the default roles
    for the user).
    i.e. the default role isn't automatically updated when additional roles
    are assigned to a user.


.. code-block:: sql

    # To check for active roll assignments for current user, use
    SELECT CURRENT_ROLE();

    # To set a specific role for a user, use
    SET DEFAULT ROLE 'role-read-ambition-live'@'localhost' TO 'jw'@'localhost';

    # To set the default role for a user to ALL assigned roles, use
    SET DEFAULT ROLE ALL TO 'jw'@'localhost';

See also:
- https://dev.mysql.com/doc/refman/8.0/en/roles.html#roles-activating
- https://dev.mysql.com/doc/refman/8.0/en/set-default-role.html


Revoking roles
++++++++++++++

.. code-block:: sql

    # To revoke a role from a user
    REVOKE 'role-read-ambition-uat'@'localhost' FROM 'jw'@'localhost';

See also: https://dev.mysql.com/doc/refman/8.0/en/roles.html#roles-revoking
