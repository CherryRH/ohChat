import ChatList from '../components/chatList';
import ContactList from '../components/contactsList';
import FindList from '../components/findList';
import Header from "../components/header"
import MineList from '../components/mineList';
import { CardItem, Card_Type } from '../utils/card';
import user from '../utils/user'
import chats from '../utils/chat'
import { routerCreateChaterPage } from '../utils/routers';

@Entry
@Component
struct Index {
  //聊天列表
  @State chatItems: CardItem[] = [];
  //通讯录列表
  @State contactItems: CardItem[] = [];
  //发现列表
  @State findItems: CardItem[] = [];
  //我的列表
  @State mineItems: CardItem[] = [];

  onPageShow() {
    //加载页面
    setChatCardItems(this.chatItems);
    setMineCardItems(this.mineItems);
    console.log(user.getId());
  }

  onChatListAddButtonClick() {

  }

  onContactListAddButtonClick() {
    routerCreateChaterPage();
  }

  onFindListAddButtonClick() {

  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        TabContent() {
          Column() {
            Header({title: 'JigenChat', handleAddButtonClicked: this.onChatListAddButtonClick})
            ChatList({chatItems: this.chatItems})
          }
          .mainPageStyle()
        }
        .tabBar({ text: "聊天" })
        .backgroundColor($r('app.color.index_background'))
        TabContent() {
          Column() {
            Header({title: '通讯录', handleAddButtonClicked: this.onContactListAddButtonClick})
            ContactList()
          }
          .mainPageStyle()
        }
        .tabBar({ text: "通讯录" })
        .backgroundColor($r('app.color.index_background'))
        TabContent() {
          Column() {
            Header({title: '发现', handleAddButtonClicked: this.onFindListAddButtonClick})
            FindList()
          }
          .mainPageStyle()
        }
        .tabBar({ text: "发现" })
        .backgroundColor($r('app.color.index_background'))
        TabContent() {
          Column() {
            MineList({cardItems: this.mineItems})
          }
          .mainPageStyle()
        }
        .tabBar({ text: "我的" })
        .backgroundColor($r('app.color.index_background'))
      }
      .fullScreen()
    }
    .fullScreen()
  }
}

// 加载聊天列表
function setChatCardItems(obj: CardItem[]) {
  if (obj.length > 0) {
    obj.splice(0, obj.length);
  }
  const basicChatArr = chats.getAllBasicChat();
  for (let index = 0; index < basicChatArr.length; index++) {
    let it = basicChatArr[index];
    obj.push(new CardItem(it.name, it.iconUrl, Card_Type.CHAT, it.ID))
  }
}

// 加载我的卡片列表
function setMineCardItems(obj: CardItem[]) {
  if (obj.length === 0) {
    obj.push(new CardItem(user.getName(), user.getAvatarUrl(), Card_Type.USER, 0, user.getId()));
    obj.push(new CardItem('设置', $r('app.media.ic_gallery_collage'), Card_Type.Feature, 1));
  }
  else {
    for (let index = 0; index < obj.length; index++) {
      if (obj[index].type === Card_Type.USER) {
        let it = new CardItem(user.getName(), user.getAvatarUrl(), Card_Type.USER, 0, user.getId())
        obj[index] = it;
      }
    }
  }
}

// 样式表
@Styles
function fullScreen() {
  .width('100%')
  .height('100%')
}

@Extend(Column)
function mainPageStyle() {
  .width('100%')
  .height('100%')
  .justifyContent(FlexAlign.Start)
}