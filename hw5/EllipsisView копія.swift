//
//  EllipsisView.swift
//  SweaterShopDemo
//
//  Created by Macbook on 21.07.2022.
//

import SwiftUI

struct EllipsisView: View {
    @State var showActionSheet = false
    @State var showAlert = false

    var actionSheet: ActionSheet {
//        ActionSheet(title: Text("Action Sheet's Title"), message: Text("Massage"), buttons: [
//            .default(Text("This is a difault button")),
//            .destructive(Text("Destractive")),
//            .cancel()
//        ])
        
        ActionSheet(title: Text("Action Sheet's Title"), buttons: [
            .default(Text("Delete comment")),
            .cancel()
        ])
    }
    
    var alert: Alert {
        Alert(title: Text("Alert's Title"), primaryButton: .default(Text("ok")), secondaryButton: .cancel())

//        Alert(title: Text("Alert's Title"), message: Text("Massage"), primaryButton: .default(Text("ok")), secondaryButton: .cancel())
    }
    
    var body: some View {
        VStack {
            Button("Show Action Sheet") {
                self.showActionSheet.toggle()
            }
            Button("Show Alert") {
                self.showAlert.toggle()
            }
        }
        .actionSheet(isPresented: $showActionSheet, content: { self.actionSheet })
        .alert(isPresented: $showAlert, content: { self.alert })
    }
}

struct EllipsisView_Previews: PreviewProvider {
    static var previews: some View {
        EllipsisView()
    }
}
