/*-------------------------------------------------------------------------
 *
 *                foreign-data wrapper  quasar
 *
 * Copyright (c) 2013, PostgreSQL Global Development Group
 *
 * This software is released under the PostgreSQL Licence
 *
 * Author:  Andrew Dunstan <andrew@dunslane.net>
 *
 * IDENTIFICATION
 *                quasar_fdw/=sql/quasar_fdw.sql
 *
 *-------------------------------------------------------------------------
 */

CREATE FUNCTION quasar_fdw_handler()
RETURNS fdw_handler
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION quasar_fdw_validator(text[], oid)
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FOREIGN DATA WRAPPER quasar_fdw
  HANDLER quasar_fdw_handler
  VALIDATOR quasar_fdw_validator;
