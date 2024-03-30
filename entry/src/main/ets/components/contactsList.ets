import router from '@ohos.router'
import AIChater from '../classes/AIChater'
import getAssistant from '../utils/aichater'
import buildFeatureCard, { CardItem, Card_Type } from '../utils/card'

/*
 * 组件：通讯录列表
 * 使用：主页通讯录列表
 * */
@Component
export default struct ContactList{
  chaters: Array<AIChater> = [
    getAssistant()
  ]

  @State chaterItems: Array<CardItem> = [
    new CardItem(this.chaters[0].getName(), this.chaters[0].getAvatarUrl(), Card_Type.CHATTER
      , this.chaters[0].getId(), '')
  ]

  build() {
    Column({space: 10}) {
      List({space: 5}) {
        ForEach(
          this.chaterItems,
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