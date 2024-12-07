import SwiftUI

struct homePage: View {
    // Переместил в начало структуры, чтобы избежать ошибок
    
    var body: some View {
        @State var users = users 
        ZStack {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    Color.orange
                        .frame(height: geometry.size.height / 2.7)
                        .opacity(0.7)
                    LinearGradient(colors: [Color.yellow, Color.white],
                                   startPoint: .top, endPoint: .bottom)
                        .opacity(0.6)
                }
                .ignoresSafeArea(edges: .top)
            }
            
            VStack {
                headerView()
                    .padding(.top, 20) // Убедитесь, что верхнее пространство достаточное
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(height: 120)
                        .padding(.horizontal) // Добавляем горизонтальные отступы
                    
                    VStack(spacing: 16) {
                        subheaderView()
                        
                        // Для пользователей отображаем список данных
                        ForEach(users) { user in
                            let formattedString = String(format: "%.2f", user.accountValue)
                            HStack {
                                Text("\(formattedString)")
                                    .font(.title)
                                    .padding(.horizontal)
                                Spacer()
                                Text(user.currency)
                                    .font(.title2)
                                    .padding(.horizontal)
                            }
                            .padding(.vertical, 5) // Отступы по вертикали
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 10) // Меньший отступ сверху, чтобы карта была ближе к градиенту
                
                Spacer()
                    .frame(height: 60)
                
                activityView()
            }
            .padding(.top, 100) // Дополнительный отступ сверху для всех элементов
        }
    }
}

#Preview {
    homePage()
}
