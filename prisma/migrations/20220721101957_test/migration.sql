-- AlterTable
ALTER TABLE "challenge" ALTER COLUMN "challenge_id" SET DEFAULT public.uuid_generate_v4();
