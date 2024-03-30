import { IconType } from '@ohos.arkui.advanced.ComposeListItem';
import Message from '../classes/Message';
import { routerLogInPage } from '../utils/routers';

/*
 * 组件：功能卡片
 * 使用：显示功能卡片
 * */
@Component
export default struct FeatureCard {
  @Prop name: string;
  @Prop iconUrl: Resource;

  build() {
    Row() {
      Row({space: 10}) {
        Image(this.iconUrl)
          .width(25)
        Text(this.name)
      }
      Image($r('app.media.ic_public_arrow_right'))
        .width(25)
    }
    .width('100%')
    .height(60)
    .padding(15)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
  }
}

/*
 * 组件：聊天卡片
 * 使用：显示一个聊天卡片
 * */
@Component
export struct ChatCard {
  @Prop name: string;
  @Prop newMessage: Message;
  @Prop iconUrl: Resource;

  build() {
    Row({space: 15}) {
      Image(this.iconUrl)
        .height('100%')
      Column() {
        Text(this.name)
        Blank()
        Text(this.newMessage ? this.newMessage.getSenderName() + '：' + this.newMessage.getText() : '暂无消息')
          .sub_font()
      }
      .layoutWeight(4)
      .height('90%')
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Start)
      Column() {
        Text(this.newMessage ? this.newMessage.getTime().toTimeString() : '时间')
          .sub_font()
      }
      .layoutWeight(1)
      .height('100%')
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.End)
    }
    .width('100%')
    .height(80)
    .padding(15)
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .backgroundColor(Color.White)
  }
}

@Extend(Text)
function sub_font() {
  .fontSize(12)
  .fontColor(Color.Gray)
}

/*
 * 组件：我的卡片
 * 使用：显示我的用户卡片
 * */
@Component
export struct UserCard {
  @Prop username: string;
  @Prop avatarUrl: Resource;
  @Prop userID: string;

  build() {
    Row() {
      Row({space: 10}) {
        Image(this.avatarUrl)
          .width(60)
          .borderRadius(10)
      }
      Column() {
        Text(this.username)
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
        Text(this.userID)
      }
      .width('65%')
      .height(60)
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(HorizontalAlign.Start)
      Image($r('app.media.ic_public_arrow_right'))
        .width(25)
        .onClick(() => {
          routerLogInPage();
        })
    }
    .width('100%')
    .height(150)
    .padding(15)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
  }
}

/*
 * 组件：聊天机器人卡片
 * 使用：通讯录显示聊天机器人卡片
 * */
@Component
export struct ChaterCard {
  @Prop name: string;
  @Prop iconUrl: Resource;

  build() {
    Row() {
      Row({space: 10}) {
        Image(this.iconUrl)
          .height('100%')
        Text(this.name)
      }
      Blank()
    }
    .width('100%')
    .height(60)
    .padding(15)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)
  }
}