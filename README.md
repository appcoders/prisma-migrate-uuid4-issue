To recreate the issue:

Run Docker:
`docker run -d --name testdb --rm -e "POSTGRES_USER=testuser" -e "POSTGRES_PASSWORD=testpass" -e "POSTGRES_DB=testdb" -p 5435:5432 postgres:13`

Run Migrate:
`npx prisma migrate dev`

It runs and asks for a migration name, enter: test

A new Migration has been created with:

``` 
-- AlterTable
ALTER TABLE "challenge" ALTER COLUMN "challenge_id" SET DEFAULT public.uuid_generate_v4();
```


Cleanup:
`docker stop testdb`