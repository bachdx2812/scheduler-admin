# Scheduler

### Development Environment
#### Required these below `applications` to run in background
- mysql server
- redis (default port 6379)

#### DB:
```bash
bundle exec rake db:create
bundle exec rails ridge:apply
bundle exec rake db:seed
yarn
```

### Kick off server
```
bundle exec foreman start
```

### Login Test Account:
ID: admin@gmail.com
PW: 123456

#### Access http://localhost:3000
