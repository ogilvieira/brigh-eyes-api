import jwt, { JwtPayload } from 'jsonwebtoken';
import validator from "validator";

export default function getDecodedTokenByHeader(headerAuthorization: string): null | JwtPayload {
  const token = (headerAuthorization ?? null).split(" ").pop() || '';
  if(!validator.isJWT(token)){ return null; }
  const decodetoken: any = jwt.verify(token, ''+process.env.JWT_SECRET);
  
  return decodetoken || null
}
