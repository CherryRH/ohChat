import router from '@ohos.router'
import buildFeatureCard, { CardItem, Card_Type } from '../utils/card'


/*
 * 组件：聊天列表
 * 使用：主页聊天列表
 * */
@Component
export default struct ChatList {
  @Link chatItems: CardItem[]

  build() {
    Column({space: 10}) {
      List({space: 5}) {
        ForEach(
          this.chatItems,
          (item: CardItem) => {
            ListItem() {
              buildFeatureCard(item)
            }
          }
        )
      }
    }
    .mainPageStyle()
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