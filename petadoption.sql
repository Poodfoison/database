CREATE DATABASE petadoption
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Philippines.1252'
    LC_CTYPE = 'English_Philippines.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

    CREATE TABLE IF NOT EXISTS public."Customer"
(
    "OwnerID" integer NOT NULL,
    "Name" "char",
    CONSTRAINT "Customer_pkey" PRIMARY KEY ("OwnerID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Customer"
    OWNER to postgres;


CREATE TABLE IF NOT EXISTS public."Pet"
(
    "PetID" integer NOT NULL,
    "Name" "char",
    "Age" integer,
    "Breed" "char",
    "Type" "char",
    "OwnerID" integer NOT NULL,
    CONSTRAINT "Pet_pkey" PRIMARY KEY ("PetID"),
    CONSTRAINT "OwnerID" FOREIGN KEY ("OwnerID")
        REFERENCES public."Customer" ("OwnerID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Pet"
    OWNER to postgres;