import Foundation
import Sword

let options = ShieldOptions(
  prefixes: ["c!"]
)

let bot = Shield(token: ProcessInfo.processInfo.environment["CALCBOT_TOKEN"]!, shieldOptions: options)

bot.register("calc") {msg, args in
    print(args)
}

bot.connect()