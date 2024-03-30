import router from '@ohos.router'
import User from '../classes/User'
import user from '../utils/user'
import FeatureCard from './featureCard'
import buildFeatureCard, { CardItem, Card_Type } from '../utils/card'

/*
 * 组件：我的列表
 * 使用：主页我的列表
 * */
@Component
export default struct MineList {
  @Link cardItems: CardItem[];

  build() {
    Column({space: 10}) {
      List({space: 5}) {
        ForEach(
          this.cardItems,
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