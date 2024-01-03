//
//  HomeView.swift
//  pathfinder
//
//  Created by Bubby Doo on 1/2/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Hello User Section
                    HStack {
                        Image("profile_pic") // Replace with your profile image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Hi, Richard")
                                .font(.title)
                                .bold()
                            Text("Welcome back!")
                                .font(.subheadline)
                        }
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "bell.fill") // Notification icon
                        }
                    }
                    .padding()
                    
                    // Task Summary Section
                    VStack(alignment: .leading) {
                        Text("You have 3 steps to complete")
                            .font(.headline)
                        HStack {
                            ForEach(0..<3) { _ in
                                Circle()
                                    .frame(width: 10, height: 10)
                            }
                        }
                    }
                    .padding()
                    
                    // Tasks List Section
                    ForEach(0..<3) { index in
                        // Dummy data for now
                        TaskCell(taskName: "Task \(index)", taskTime: "Time")
                    }
                    
                    // Progress Section
                    VStack {
                        HStack {
                            Text("Your progress")
                                .font(.title2)
                            Spacer()
                            // Profile Settings Icon
                            Image(systemName: "gearshape.fill")
                        }
                        
                        Text("Great start to the week!")
                            .font(.headline)
                        
                        // Progress Tabs (Weekly, Monthly)
                        // Here you will implement a custom tab view with animation
                        
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct TaskCell: View {
    var taskName: String
    var taskTime: String
    
    var body: some View {
        HStack {
            Image(systemName: "list.bullet") // Replace with appropriate icons for your tasks
            VStack(alignment: .leading) {
                Text(taskName)
                    .font(.headline)
                Text(taskTime)
                    .font(.caption)
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(Color.blue.opacity(0.3)) // Replace with your desired color
        .cornerRadius(10)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
