import User from './User'
import AIChater from './AIChater'
import Message from './Message'
/*
 * 类：聊天
 * */
class Chat {
  private user: User;
  private chater: AIChater;

  private iconUrl: Resource;
  private name: string;
  private ID: number = 0;

  private messageVector: Message[] = [];

  constructor(user: User, chater: AIChater, iconUrl?: Resource) {
    this.user = user;
    this.chater = chater;
    this.name = chater.getName();
    this.iconUrl = iconUrl ?? $r('app.media.ic_public_message');
  }

  public getIconUrl(): Resource {
    return this.iconUrl;
  }

  public getName(): string {
    return this.name;
  }

  public getID(): number {
    return this.ID;
  }

  public getNewMessage(): Message | undefined {
    if (this.messageVector.length > 0) {
      return this.messageVector[this.messageVector.length - 1];
    }
    else return undefined;
  }

  public setID(ID: number) {
    return this.ID = ID;
  }

  public sendMessage(message: Message) {
    this.messageVector.push(message);
  }
}

export default Chat