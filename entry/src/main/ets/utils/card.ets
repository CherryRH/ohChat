import { DEFAULT } from '@ohos/hypium';
import Message from '../classes/Message';
import FeatureCard, { ChatCard, ChaterCard, UserCard } from '../components/featureCard'

//卡片的构造函数
@Builder
export default function buildFeatureCard(item: CardItem) {
  if (item.type === Card_Type.Feature) {
    FeatureCard({name: item.name, iconUrl: item.iconUrl});
  }
  else if (item.type === Card_Type.USER) {
    UserCard({username: item.name, avatarUrl: item.iconUrl, userID: item.userID});
  }
  else if (item.type === Card_Type.CHAT) {
    ChatCard({name: item.name, iconUrl: item.iconUrl, newMessage: item.newMessage});
  }
  else if (item.type === Card_Type.CHATTER) {
    ChaterCard({name: item.name, iconUrl: item.iconUrl})
  }
}

//用来显示卡片信息
export class CardItem {
  ID: number;
  name: string;
  userID: string;
  iconUrl: Resource;
  type: Card_Type;

  newMessage?: Message;

  constructor(name: string, iconUrl: Resource, type: Card_Type, ID: number
    , userID?: string, newMessage?: Message) {
    this.name = name;
    this.iconUrl = iconUrl;
    this.type = type;
    this.ID = ID;
    this.userID = userID ?? '';
    if (newMessage) {
      this.newMessage = newMessage;
    }
  }
}

//卡片种类
export enum Card_Type {
  Feature,
  USER,
  CHATTER,
  CHAT,
  SETTINGS
}