-- Manual additions for inital setup
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- CreateTable
CREATE TABLE "challenge" (
    "challenge_id" UUID NOT NULL DEFAULT public.uuid_generate_v4(),

    CONSTRAINT "challenge_pkey" PRIMARY KEY ("challenge_id")
);

-- CreateIndex
CREATE INDEX "challenge_challenge_id_idx" ON "challenge"("challenge_id");
