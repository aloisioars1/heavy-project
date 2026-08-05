import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

struct ContentView: View {
    @State private var messageText: String = ""
    @State private var messages: [Message] = [
        Message(text: "Olá! Bem-vindo ao Curso de Grego .", isUser: false)
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Curso de Grego ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                if "" != "" {
                    Link("Visitar Site", destination: URL(string: "")!)
                        .font(.caption)
                        .padding(8)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            .padding()

            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(messages) { message in
                        HStack {
                            if message.isUser { Spacer() }
                            Text(message.text)
                                .padding()
                                .background(message.isUser ? Color.blue : Color(.systemGray5))
                                .foregroundColor(message.isUser ? .white : .primary)
                                .cornerRadius(16)
                            if !message.isUser { Spacer() }
                        }
                    }
                }
                .padding()
            }

            HStack {
                TextField("Digite uma mensagem...", text: $messageText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button(action: sendMessage) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .clipShape(Circle())
                }
                .padding(.trailing)
            }
            .padding(.bottom)
        }
        .preferredColorScheme(true ? .dark : .light)
    }

    func sendMessage() {
        guard !messageText.isEmpty else { return }
        let userMsg = Message(text: messageText, isUser: true)
        messages.append(userMsg)
        
        let sentText = messageText
        messageText = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let aiMsg = Message(text: "Recebi seu: (sentText)", isUser: false)
            messages.append(aiMsg)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
