import User from './User'
import AIChater from './AIChater'
/*
 *类：聊天信息
 * */
class Message {
  private sender: User | AIChater;
  private text: string;
  private time: Date;

  constructor(user: User | AIChater, text: string, time: Date) {
    this.sender = user;
    this.text = text;
    this.time = time;
  }

  public getText(): string {
    return this.text;
  }

  public getTime(): Date {
    return this.time;
  }

  public getSenderName(): string {
    return this.sender.getName();
  }
}

export default Message