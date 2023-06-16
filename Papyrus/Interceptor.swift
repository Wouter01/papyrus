import Foundation

public protocol Interceptor {
    func intercept(req: Request, next: (Request) async throws -> Response) async throws -> Response
}

public protocol RequestModifier {
    func modify(req: inout RequestBuilder) throws
}