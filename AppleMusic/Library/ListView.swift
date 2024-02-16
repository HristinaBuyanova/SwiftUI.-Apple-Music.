
import SwiftUI


struct ListView: View {

    @State private var listData = ListData.data
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {

            List {
                ForEach($listData) { $item in
                    ListRow(list: item).tag(item)
                        .onTapGesture {
                            item.isEdit.toggle()
                        }
                }.onMove { IndexSet, index in
                    self.listData.move(fromOffsets: IndexSet, toOffset: index)
                }
            }
            .listStyle(.inset)
            .environment(\.editMode, .constant(.active))
            .navigationTitle(mediateka)

            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
//                    NavigationLink("Готово") {
//                        LibraryView()
//                            .navigationBarBackButtonHidden(true)
//
//                    }
                    NavigationLink {
                    } label: {
                        Button {
                            dismiss()
                        } label: {
                            Text("Готово")
                        }
                    }
                    .tint(.red)
                    .bold()
                }
            }
        }
        .padding(.bottom, 60)
    }
}
#Preview {
    ListView()
}
