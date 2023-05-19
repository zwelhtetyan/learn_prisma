import { prisma } from "./client";

const main = async () => {
  const r = await prisma.post.findMany({
    where: {
      author: { is: { age: 21 } },
    },
  });

  console.log(r);
};

main()
  .catch((err) => console.log(err.message))
  .finally(async () => await prisma.$disconnect());
