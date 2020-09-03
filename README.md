# Vangst Internship Interview Challenge 
This is an Interview challenege I recieved, the original can be found [here](https://github.com/Carmer/interview_challenge)

# Setup the Project: 
(Note - the Ruby version is set to 2.7, so you may need to update your ruby version to run this project. See RVM or RBENV documentation to do this.)

- `Clone the repository`
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


# Endpoints:

1. Return all Candidates on the Database:

Example Request: 
```
query getAllCandidates {
    allCandidates { 
        id
        firstName
        lastName
        email
    }
 }
```

Expected Response:
```
{
  "data": {
    "allCandidates": [
      {
        "id": "1",
        "firstName": "Mary",
        "lastName": "Jane",
        "email": "mary.jane@vangst.com"
      },
      {
        "id": "2",
        "firstName": "Bob",
        "lastName": "Marley",
        "email": "b.mar@vangst.com"
      },
      {
        "id": "3",
        "firstName": "Smokey",
        "lastName": "TheBear",
        "email": "smokey@vangst.com"
      }
    ]
  }
}
```

2. Get a Specific Candidate by id:

Example request:
```
query getCandidate {
    candidate(id: 1) { 
        id
        firstName
        lastName
        email
    }
 }
```

Expected Response:
```
{
  "data": {
    "candidate": {
      "id": "1",
      "firstName": "Mary",
      "lastName": "Jane",
      "email": "mary.jane@vangst.com"
    }
  }
}
```

3. Get a Single Job Application from the Database by id:

Example Request:
```
query getJobApplications {
    jobApplications(id: 1) { 
        id
        jobPostingId
        candidateId
    }
 }
```

Expected Response:
```
{
  "data": {
    "jobApplications": {
      "id": "1",
      "jobPostingId": 1,
      "candidateId": 1
    }
  }
}
```

# Future Additions:

- Finish User stories 4 and 5, expanded on in pull request #14, Get Active Jobs
- Test enpoints, as this was time limited I did not dive too deeply into testing, but I did do some reasearch and found [this](https://graphql-ruby.org/testing/integration_tests.html) guide that would likely help me get started


