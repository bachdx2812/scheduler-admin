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

## API:

### Endpoint:
http://localhost:3000/api

### How to get token

```bash
curl -X POST -d email="test@test.com" -d password="changeme" http://localhost:3000/auth
```

### How to access API after got token

```bash
curl --header "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1MjYxOTA1MDB9.ABVCQGdzF3u2XcAp66vXZxeUy2dhsCuxsg88NsEdoFs" http://localhost:3000/api/{salons}
```
