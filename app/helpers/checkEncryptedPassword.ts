import bcrypt from 'bcryptjs';

export default async function checkEncryptedPassword(password: string, hashedPassword: string): Promise<boolean> {
  const res = await bcrypt.compare(password, hashedPassword);
  return res;
}
