import SwiftUI


struct CategoryHome: View {
    @Environment(ModelData.self) var modelData


    var body: some View {
        NavigationSplitView {
            
            List{
                ForEach(modelData.category.keys.sorted(), id: \.self){
                    cat in
                    Text(cat)
                }
            }                .navigationTitle("Featured")

        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    CategoryHome()
        .environment(ModelData())
}
