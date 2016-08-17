-- // add changelog
-- Migration SQL that makes the change goes here.

CREATE TABLE ${changelog} (
	[id] [bigint] NOT NULL,
	[applied_at] [datetime] NULL,
	[description] [nvarchar](250) NULL
);


-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE ${changelog}

