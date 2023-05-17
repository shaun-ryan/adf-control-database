CREATE TABLE [stage].[file]
(
  [id] INT IDENTITY(1, 1),
  [import_id] INT NULL,
  [import_batch_id] UNIQUEIDENTIFIER NOT NULL,
  [import_created] DATETIME NOT NULL default(getdate()),
  [imported] DATETIME NULL,
  [imported_by] VARCHAR(200),
  [project] varchar(250) not null,  
  [file_service] varchar(100) not null,
  [file]	varchar(100) not null,
  [ext]	varchar(5) not null,
  [frequency]	varchar(15) not null,
  [utc_time]	time not null,
  [linked_service]	varchar(100) null,
  [compression_type]	varchar(100) null,
  [compression_level]	varchar(100) null,
  [column_delimiter]	char(1) null,
  [row_delimiter]	varchar(2) null,
  [encoding]	varchar(10) not null default('utf-8'),
  [escape_character]	varchar(100) null,
  [quote_character]	varchar(100) null,
  [first_row_as_header]	bit not null,
  [null_value]	varchar(100) not null,
  CONSTRAINT pk_stage_file_id PRIMARY KEY CLUSTERED (id)
)
