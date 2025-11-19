/*
  Warnings:

  - A unique constraint covering the columns `[userid,storeid]` on the table `teammember` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateEnum
CREATE TYPE "HealthStatus" AS ENUM ('HEALTHY', 'DEGRADED', 'UNHEALTHY');

-- CreateTable
CREATE TABLE "health" (
    "id" TEXT NOT NULL,
    "duration" INTEGER NOT NULL,
    "status" "HealthStatus" NOT NULL DEFAULT 'HEALTHY',
    "starttime" TIMESTAMP(3) NOT NULL,
    "endtime" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "health_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "teammember_userid_storeid_key" ON "teammember"("userid", "storeid");
