import Personality from './Personality'
/*
 * 类：AI聊天机器人
 * */
class AIChater {
  private ID: number;
  private name: string;
  private avatarUrl: Resource;

  private personality: Personality = new Personality();

  constructor(ID: number, name: string, avatarUrl?: Resource) {
    this.ID = ID;
    this.name = name;
    this.avatarUrl = avatarUrl ?? $r('app.media.dango');
  }

  public getId(): number {
    return this.ID;
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

  public setMame(name: string): void {
    this.name = name;
  }

  public setAvatarUrl(avatarUrl: Resource): void {
    this.avatarUrl = avatarUrl;
  }

  public setPersonality(personality: Personality): void {
    this.personality = personality;
  }
}

export default AIChater