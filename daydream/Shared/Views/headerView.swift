import SwiftUI

struct headerView: View {
    
    
    var body: some View {
        @State var users = users
        HStack {
            HStack {
                Image(systemName: "person.circle.fill") // Используем изображение вместо круга
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.black)
                
                // Отображаем имя и фамилию пользователя
                ForEach(users, id: \.login) { user in
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.title2)
                        Text(user.surname)
                            .font(.title2)
                    }
                }
            }
            .padding()
            
            Spacer() // Отступ для сдвига элементов влево
        }
        .padding(.top, 20) // Меньше отступа сверху
    }
}

#Preview {
    headerView()
}
