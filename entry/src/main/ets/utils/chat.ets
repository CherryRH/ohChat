import Chat from '../classes/Chat'
import user from './user'
import getAssistant from './aichater'

class Chats {
  private chatArr: Chat[] = []

  constructor() {
    this.chatArr.push(new Chat(user, getAssistant(), $r('app.media.ic_user_portrait')));
  }

  public getAllBasicChat() {
    let basicMessage: basicChat[] = [];
    for (let index = 0; index < this.chatArr.length; index++) {
      const it = this.chatArr[index];
      basicMessage.push({name: it.getName(), iconUrl: it.getIconUrl(), ID: it.getID()});
    }
    return basicMessage;
  }
}

interface basicChat {
  name: string,
  iconUrl: Resource,
  ID: number
}

let chats: Chats = new Chats()

export default chats as Chats