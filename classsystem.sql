CREATE DATABASE classsystem
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Philippines.1252'
    LC_CTYPE = 'English_Philippines.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;


    CREATE TABLE IF NOT EXISTS public.classroom
(
    "SubjectID" integer NOT NULL,
    "TID" integer NOT NULL,
    CONSTRAINT classroom_pkey PRIMARY KEY ("SubjectID"),
    CONSTRAINT "TID_FKEY" FOREIGN KEY ("TID")
        REFERENCES public.teacher ("TID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.classroom
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.student
(
    "SID" integer NOT NULL,
    "Name" "char",
    "SubjectID" integer NOT NULL,
    CONSTRAINT student_pkey PRIMARY KEY ("SID"),
    CONSTRAINT "SubjectID" FOREIGN KEY ("SubjectID")
        REFERENCES public.classroom ("SubjectID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.student
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.teacher
(
    "TID" integer NOT NULL,
    "Name" "char",
    "SubjectID" integer NOT NULL,
    CONSTRAINT teacher_pkey PRIMARY KEY ("TID"),
    CONSTRAINT "SubjectID" FOREIGN KEY ("SubjectID")
        REFERENCES public.classroom ("SubjectID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.teacher
    OWNER to postgres;