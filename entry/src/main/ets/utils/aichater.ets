import AIChater from '../classes/AIChater'

export default function getAssistant(): AIChater {
  return new AIChater(0, '聊天助手', $r('app.media.ic_user_portrait'))
}