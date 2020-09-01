# Vangst Internship Interview Challenge 

To setup the project: 
(Note - the Ruby version is set to 2.7, so you may need to update your ruby version to run this project. See RVM or RBENV documentation to do this.)

- Clone the repository, and push up your own cloned version to your github profile/repositories.
- Invite @carmer to your repository for PR review by adding/inviting to the project/repository, or tagging in the PR with `@carmer`.
- `bundle install`
- `rails db:create`
- `rails db:migrate`
- `rails db:seed` 
- `rails assets:precompile`
- `rails s`
- Navigate to `localhost:3000/graphiql` to confirm 
- On `localhost:3000/graphiql` you can execute the following query by pasting it into the query editor and hitting the play buttom on the top nav: 
```graphql
query isItWorking{
  helloWorld
}
```

### The Challenge:

Add new a new feature to the rails project.

#### The expectations:
- 5-8hrs of estimated working time - You will have 2 days to deliver your PRs.
- Submit 1 PR per story submitted for review. 5 Total stories below.
- PRs should include some information in the message. For example you should include something like the purpose of the PR, changes made, any necessary context, notes etc
- Submit AT LEAST 1 story for review. You don't need to finish all 5 stories. We would like to see as many as you can complete, but we don't want to prescribe a set amount to finish. We know it's unlikely you know graphQL and we know there will be learning for these tasks but we think graphQL docs are good and well documented, so we want to see what you can accomplish with good docs and a few days. To us it's not just about how much you get done but if you learned the thing and you're making progress. That means we'll be looking at your commits, and the description/context of your work provided in your PRs for a full assessment.
- #6 is extra credit

#### The Project:

We have a rails, postgres DB, RSpec project with an existing data model of:

- Candidate 
- JobPosting
- JobApplication

Relations: 
- `Candidate`s can have many `JobApplication`s
- `JobPosting`s can have many `JobApplication`s
- `JobApplication`s belong to `Candidate`s and `JobPosting`s

#### The Scenario:

Our team has been tasked this "sprint" with adding starting an api with GraphQL. These are the first stories to implement GraphQL for this project so you'll be working from a blank slate. Another team has setup GraphQL in the project, but it's your task to start building the api "endpoints" aka `queries` and `mutations` in graphql verbage. 

Since graphql is new to this project it's new to the whole team meaning there aren't defined resources yet. That means part of the engineering process for these stories is learning and discovery! Share your knowledge! Including learning and discoveries made in your PRs and any documentation you write is a big plus+ and welcomed by your team. Share any questions you have or things you couldn't quite solve in any PRs too. For a remote team, PRs are a place to provide your team all your context for what you were working on, and to talk it all out. 

The team that added graphql to the project left you this note from their PR:

```
Added graphQL library and graphiQL GUI for executing queries and mutations.

- Start here: https://graphql.org/ . Learn about basic queries and mutations
- You can find the ruby specific graphql library docs and info here: 
    - https://github.com/rmosolgo/graphql-ruby
    - https://graphql-ruby.org/development
```

### Your stories:
You are tasked with a few stories this sprint. You are welcome to pick up these stories in whatever order you like. 

1. As a graphQL user, I want to execute a `query` for `allCandidates` and see all candidates, with all their attributes (`id`,`first_name`, `last_name`, `email`) returned in the graphiQL UI:
```
query getAllCandidates {
    allCandidates() { 
        id
        firstName
        lastName
        email
    }
 }
```
2. As a graphQL user, I want to execute a `query` for `getCandidate()` and see the specified candidate, with all their attributes (`first_name`, `last_name`, `email`) returned in the graphiQL UI:
```

query getCandidate {
    candidate(id: ID) { 
        id
        firstName
        lastName
        email
    }
 }
```
3. As a graphQL user, I want to execute a `query` for `getJobApplications()` and see all the `JobApplication`s in the database, with all their attributes (`candidate_id`, `job_posting_id`) returned in the graphiQL UI:
```
query getJobApplications {
    jobApplications(id: ID) { 
        id
        jobPostingId
        candidateId
    }
 }
```
4. As a graphQL user, I want to execute a `query` for `getCandidate()` and see the specified candidate, with all their `jobApplications` returned in the graphiQL UI:
```
query getCandidateWithApplications {
    candidate(id: ID) { 
        id
        email
        jobApplications {
            id
            jobPostingId
            candidateId
        }
    }
 }
```
5. As a graphQL user, I want to execute a `query` for `getJobApplications()` and be able filter by `is_active` attribute on `JobApplications`, with jobApplications by the `isActive` boolean returned in the graphiQL UI:
```
query getActiveJobApplications {
    jobApplications(isActive: true) { 
        id
        jobPostingId
        candidateId
    }
 }
```
6. Stretch Goal/Xtra Credit: Write a mutation to create a jobApplication for a candidate. 

