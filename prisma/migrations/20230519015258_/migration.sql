/*
  Warnings:

  - You are about to drop the column `userPreferenceId` on the `User` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[userId]` on the table `UserPreferences` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `userId` to the `UserPreferences` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "User" DROP CONSTRAINT "User_userPreferenceId_fkey";

-- DropIndex
DROP INDEX "User_userPreferenceId_key";

-- AlterTable
ALTER TABLE "User" DROP COLUMN "userPreferenceId";

-- AlterTable
ALTER TABLE "UserPreferences" ADD COLUMN     "userId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "UserPreferences_userId_key" ON "UserPreferences"("userId");

-- AddForeignKey
ALTER TABLE "UserPreferences" ADD CONSTRAINT "UserPreferences_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
