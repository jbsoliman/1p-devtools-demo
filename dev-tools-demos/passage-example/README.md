Hello From 1Password!

# Passage Example React App

This example application uses the Passage Element in a React application to authenticate users using biometrics or magic links. The homepage uses the passage-auth element to handle user login and registration and the dashboard utilizes passage-profile to allow the user to view and manage their profile data. To run this example application, follow the instructions below to install and start the application.


## Building the Client

Install dependencies
```bash
npm install
```

To start the app in development mode with API auth errors, run:
```bash
npm run start
```

The application will run on http://localhost:3000, which you can navigate to in your browser.

## Using 1Password Secrets References

To start the app in development mode with 1Password secrets referencing, run:
```bash
op run --env-file ".env" npm run start
```

This pulls in values of environments within our .env file that are hosted remotely in 1Password.



## Authenticate Requests With Passage

Navigate to [http://localhost:3000](http://localhost:3000) and see what it's like authenticating users using Passage with React!

