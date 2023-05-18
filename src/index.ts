import { prisma } from "./client";

const main = async () => {
  // need to check user and user_preference relation)
};

main()
  .catch((err) => console.log(err.message))
  .finally(async () => await prisma.$disconnect());
