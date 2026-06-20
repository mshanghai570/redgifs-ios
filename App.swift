import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView { WKWebView() }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: "https://www.redgifs.com") {
            uiView.load(URLRequest(url: url))
        }
    }
}

@main
struct RedgifsApp: App {
    var body: some Scene {
        WindowGroup {
            WebView().edgesIgnoringSafeArea(.all)
        }
    }
}
