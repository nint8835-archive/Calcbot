import Foundation
import Sword
import SoulverCore

let options = ShieldOptions(
  prefixes: ["ca!"]
)

let bot = Shield(token: ProcessInfo.processInfo.environment["CALCBOT_TOKEN"]!, shieldOptions: options)

bot.register("calc") {msg, args in
    let lineCollection = LineCollection(multiLineText: args.joined(separator: " "), customization: .standard)
    lineCollection.evaluateAll()
    msg.reply(with: (lineCollection.lines.map {"\($0.expression) = \($0.result!.stringValue)"}).joined(separator: "\n"))
}

bot.connect()