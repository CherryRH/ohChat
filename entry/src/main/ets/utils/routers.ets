import router from '@ohos.router'

export default function routerIndexPage() {
  router.pushUrl(
    {
      url: 'pages/Index',
      params: {id: 0}
    },
    router.RouterMode.Single,
    Error => {
      if (Error) {
        console.log('Router to ' + '/pages/Index' + ' failed.');
      }
    }
  )
}

export function routerLogInPage() {
  router.pushUrl(
    {
      url: 'pages/LogInPage',
      params: {id: -1}
    },
    router.RouterMode.Single,
    Error => {
      if (Error) {
        console.log('Router to ' + '/pages/LogInPage' + ' failed.');
      }
    }
  )
}

export function routerChatPage(chatPageID: number) {
  router.pushUrl(
    {
      url: 'pages/ChatPage',
      params: {id: chatPageID}
    },
    router.RouterMode.Single,
    Error => {
      if (Error) {
        console.log('Router to ' + '/pages/ChatPage' + ' failed.');
      }
    }
  )
}

export function routerCreateChaterPage() {
  router.pushUrl(
    {
      url: 'pages/CreateChaterPage',
      params: {id: 1}
    },
    router.RouterMode.Single,
    Error => {
      if (Error) {
        console.log('Router to ' + '/pages/CreateChaterPage' + ' failed.');
      }
    }
  )
}