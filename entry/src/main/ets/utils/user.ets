import { routerLogInPage } from './routers'
import User from '../classes/User'
import preferenceUtil from './UserPreferenceUtil'

let user = new User()

export async function initUser(preferenceName: string) {
  const userID = await preferenceUtil.getPereferenceValue(preferenceName , 'UserID', user.getId());
  const name = await preferenceUtil.getPereferenceValue(preferenceName, 'UserName', user.getName());
  //const avatarUrl = await preferenceUtil.getPereferenceValue(preferenceName, 'AvatarUrl', user.getAvatarUrl());
  if (!userID || !name) {
    routerLogInPage();
  }
}

export default user as User