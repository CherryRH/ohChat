/*
 * 类：人设
 * */
export default class Personality {
  age: number = 0;
  sex: SEX_TYPE = SEX_TYPE.UNKNOWN;

}

export enum SEX_TYPE {
  UNKNOWN,
  MALE,
  FEMALE
}