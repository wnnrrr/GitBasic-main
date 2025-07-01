//
//  GitGlossaryView.swift
//  GitBasic
//
//  Created by Dini on 25/04/25.
//

import SwiftUI

struct GitTerm: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let explanation: String
    let example: String
    let howTo: String
}


struct GitGlossaryView: View {
    
    @State private var sampleTerms = [
        GitTerm(title: "Commit",
                explanation: "A commit records the current changes to the repository. Think of it as a save point.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Stage your changes with: git add .
        2. Create a commit: git commit -m \"Your message\"
        """),

        GitTerm(title: "Repository",
                explanation: "A repository is a folder that Git tracks, containing all versions of your project.",
                example: "git init",
                howTo: """
        1. Navigate to your project folder
        2. Run: git init
        """),

        GitTerm(title: "Stage",
                explanation: "Staging prepares files for a commit. You pick what goes into the next commit.",
                example: "git add index.html",
                howTo: """
        1. Modify a file
        2. Run: git add filename
        """),

        GitTerm(title: "Push",
                explanation: "Push uploads your local commits to a remote repository.",
                example: "git push origin main",
                howTo: """
        1. Make sure you committed changes
        2. Run: git push origin <branch>
        """),

        GitTerm(title: "Pull",
                explanation: "Pull fetches and integrates changes from the remote to your local repo.",
                example: "git pull origin main",
                howTo: """
        1. Make sure you're on the correct branch
        2. Run: git pull
        """),

        GitTerm(title: "Pull request",
                explanation: "A pull request is a request to merge changes from one branch to another, usually on platforms like GitHub.",
                example: "Create pull request on GitHub",
                howTo: """
        1. Push your branch to remote
        2. Open GitHub and click 'New Pull Request'
        """),

        GitTerm(title: "Merge",
                explanation: "Merging brings changes from one branch into another.",
                example: "git merge feature-branch",
                howTo: """
        1. Checkout the branch you want to merge into
        2. Run: git merge <branch-name>
        """),

        GitTerm(title: "Conflict",
                explanation: "A conflict happens when two branches edit the same line differently.",
                example: "Merge conflict in main.swift",
                howTo: """
        1. Open the conflicted file
        2. Manually resolve the conflict
        3. Run: git add . and commit
        """),

        GitTerm(title: "Remote",
                explanation: "A remote is a version of your project hosted online.",
                example: "git remote add origin <URL>",
                howTo: """
        1. Copy your GitHub repo URL
        2. Run: git remote add origin <url>
        """),

        GitTerm(title: "Clone",
                explanation: "Cloning creates a local copy of a remote repository.",
                example: "git clone https://github.com/user/repo.git",
                howTo: """
        1. Copy the repository link
        2. Run: git clone <repo-url>
        """),

        GitTerm(title: "Branch",
                explanation: "A branch is a parallel version of your project for experimenting.",
                example: "git checkout -b feature-x",
                howTo: """
        1. Run: git branch <name>
        2. Switch with: git checkout <name>
        """),

        GitTerm(title: "Stash",
                explanation: "Stash temporarily shelves changes so you can work on something else.",
                example: "git stash",
                howTo: """
        1. Run: git stash to save changes
        2. Run: git stash apply to restore them
        """),

        GitTerm(title: "Winner",
                explanation: "A fun term for someone who has mastered Git basics and is building amazing things!",
                example: "git commit -m \"Won the Git game!\"",
                howTo: """
        1. Complete the bootcamp
        2. Build awesome apps using Git and Apple tools
        3. Keep committing like a champion!
        """)

    ]
    
    var body: some View {
        List(sampleTerms) { term in
            NavigationLink(destination: GitGlossaryDetailView(term: term)) {
                Text(term.title)
            }
        }
        .navigationTitle("Git Glossary")
    }
}

#Preview {
    NavigationStack {
        GitGlossaryView()
    }
}
