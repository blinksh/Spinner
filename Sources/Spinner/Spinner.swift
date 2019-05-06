import Foundation
import Dispatch

public class Spinner {
    
    var pattern: Pattern
    var text: String
    
    var running: Bool
    var frameIndex: Int
    var speed: Double
    var queue: DispatchQueue

    public init(pattern: Pattern, text: String = "", speed: Double? = nil) {
        self.pattern = pattern
        self.text = text
        self.speed = speed ?? pattern.defaultSpeed

        self.frameIndex = 0
        self.running = false
        self.DispatchQueue = DispatchQueue(label: "io.Swift.Spinner")
    }

    public start() {
        this.running = true
        self.queue.async { [weak self] in

            guard let `self` = self else { return }

            while self.running {
                //render
                //sleep
            }
        }
    }

    public stop() {
        this.running = false
        print(terminator: "\n")
    }
}