import { prisma } from "./client";

const main = async () => {
  const users = await prisma.user.findMany();
  console.log(users);
};

main();
