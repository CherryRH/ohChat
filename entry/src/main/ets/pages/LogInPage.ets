import { BackHeader } from '../components/header'
import routerIndexPage from '../utils/routers';
import user from '../utils/user'

@Entry
@Component
struct LogIn {
  @State userName: string = '';
  @State password: string = '';

  build() {
    Column() {
      BackHeader({title: '登录'})
      Text('JigenChat')
        .fontColor(Color.Gray)
        .fontSize(30)
        .fontWeight(FontWeight.Lighter)
        .layoutWeight(1)
      Column({space: 20}) {
        TextInput({text: this.userName, placeholder: '请输入用户名'})
          .inputBar()
          .placeholderColor(Color.Grey)
          .placeholderFont({ size: 14, weight: 400 })
          .caretColor(Color.Blue)
          .fontSize(14)
          .fontColor(Color.Black)
          .onChange((value: string) => {
            this.userName = value;
          })
        TextInput({ placeholder: '请输入密码' })
          .inputBar()
          .type(InputType.Password)
          .maxLength(15)
          .showPasswordIcon(true)
          .onChange((value: string) => {
            this.password = value;
          })
        Row() {
          Text('注册')
            .linkText()
          Text('Jaccount登录')
            .linkText()
        }
        .width('75%')
        .justifyContent(FlexAlign.SpaceBetween)
        Button('登录')
          .inputBar()
          .backgroundColor($r('app.color.button_background'))
          .onClick(() => {
            //登录请求
            user.setName(this.userName);
            user.setID('LogIn@sjtu.edu.cn');
            this.userName = '';
            this.password = '';
            routerIndexPage();
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .layoutWeight(1)
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.SpaceBetween)
  }
}

@Styles
function inputBar() {
  .width('75%')
  .height(40)
}

@Extend(Text)
function linkText() {
  .fontColor($r('app.color.button_background'))
  .fontSize(16)
  .decoration({type: TextDecorationType.Underline})
}