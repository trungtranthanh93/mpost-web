we need to put sql scripts for migration in this folder

1. Open cmd and go to folder 'database'
ex: cd D:\projects\mpost-web-v2\database

2. Run 'migrate --path=".." new "<file name>"' to add new script
ex: migrate path=".." new "create database and table"
New fie <timestamp>_create_database_and_table.sql will be created in folder 'scripts'

3. Run 'migrate --path=".." status' to see if there is any missed scripts (not update your database yet)

4. Run 'migrate --path=".." up' to update your database 

4. Run 'migrate --path=".." down' to come back old version

-------------------------
Usage: migrate command [parameter] [--path=<directory>] [--env=<environment>]
               [--template=<path to template>]
--path=<directory>   Path to repository.  Default current working directory.
--env=<environment>  Environment to configure. Default environment is 'development'.
--force              Forces script to continue even if SQL errors are encountered.
--help               Displays this usage message.
--trace              Shows additional error details (if any).
--template           (Optional) Specify template to be used with ‘new'command
Commands:
  init               Creates (if necessary) and initializes a migration path.
  bootstrap          Runs the bootstrap SQL script (see scripts/bootstrap.sql for more).
  new <description>  Creates a new migration with the provided description.
  up                 Run all unapplied migrations.
  down               Undoes the last migration applied to the database.
  version <version>  Migrates the database up or down to the specified version.
pending
status
script <v1> <v2>
Force executes pending migrations out of order (not recommended).
Prints the changelog from the database if the changelog table exists.
Generates a delta migration script from version v1 to v2 (undo if v1 > v2).