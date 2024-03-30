import Personality from './Personality'
/*
 * 类：用户
 * */
class User {
  private userID: string;
  private name: string;
  private avatarUrl: Resource;

  private personality: Personality = new Personality();

  constructor(userID?: string, userName?: string, avatarUrl?: Resource) {
    this.userID = userID ?? 'User@unknown.com';
    this.name = userName ?? 'User';
    this.avatarUrl = avatarUrl ?? $r('app.media.dango');
  }

  public getId(): string {
    return this.userID;
  }

  public getName(): string {
    return this.name;
  }

  public getAvatarUrl(): Resource {
    return this.avatarUrl;
  }

  public getPersonality(): Personality {
    return this.personality;
  }

  public setName(username: string): void {
    this.name = username;
  }

  public setID(userID: string) {
    this.userID = userID;
  }

  public setAvatarUrl(avatarUrl: Resource): void {
    this.avatarUrl = avatarUrl;
  }

  public setPersonality(personality: Personality): void {
    this.personality = personality;
  }
}

export default User