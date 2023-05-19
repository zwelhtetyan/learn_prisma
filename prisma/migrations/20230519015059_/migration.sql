/*
  Warnings:

  - A unique constraint covering the columns `[userPreferenceId]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "User" ADD COLUMN     "userPreferenceId" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "User_userPreferenceId_key" ON "User"("userPreferenceId");

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_userPreferenceId_fkey" FOREIGN KEY ("userPreferenceId") REFERENCES "UserPreferences"("id") ON DELETE SET NULL ON UPDATE CASCADE;
