//
//  TaskView.swift
//  TaskManager
//
//  Created by Mohammad Yasir on 13/04/21.
//

import SwiftUI

struct CherishedPersonView: View {
    
    var person : CherishedPerson
    
    var body: some View {
        VStack (alignment : .leading){
            HStack{
                VStack(alignment:.leading) {
                    Text(person.name)
                        .font(.system(size: 20, weight: .bold))
                }
                Spacer()
                VStack (alignment:.leading){
                    Text("Days to Birthday:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(daysUntil(person.birthDay), style: .date)
                }
            }
            Text("Task:")
                .font(.caption)
                .foregroundColor(.secondary)
            Text(person.birthDay)
                .font(.system(size: 15, weight: .bold))
                .italic()
        }
        .padding(10)
        .background(
            .white.opacity(0.2))
        .cornerRadius(10)
        .background(
            RoundedRectangle(cornerRadius: 10 , style: .continuous)
                .stroke(.white , lineWidth: 0.7)
                .shadow(color: .white, radius: 0.7))
    }
}

struct CherishedPersonView_Previews: PreviewProvider {
    static var previews: some View {
        CherishedPersonView(person: CherishedPerson(id: "", name: "Patrick N", gender: Gender.male, birthDay: NSDate(dateString:"1985-02-06") as Date, dates : [], attributes: ["computers", "3d printing", "skiing"], relationship: Relationship.friend ))
    }
}
