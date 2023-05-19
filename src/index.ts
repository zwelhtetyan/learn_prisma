import { prisma } from "./client";

const main = async () => {
  // need to check user and user_preference relation)

  await prisma.user.deleteMany();

  const r = await prisma.user.create({
    data: {
      name: "zw",
      age: 21,
      email: "zw@gmail.com",
      userPreferences: { create: { emailUpdate: true } },
    },
    include: { userPreferences: true },
  });

  console.log(r);
};

main()
  .catch((err) => console.log(err.message))
  .finally(async () => await prisma.$disconnect());
