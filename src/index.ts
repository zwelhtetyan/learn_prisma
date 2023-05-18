import { prisma } from "./client";

const main = async () => {
  const postsByCat = await prisma.post.findMany({
    where: { categories: { some: { name: "animal" } } },
  });

  console.log(postsByCat);
};

main();
