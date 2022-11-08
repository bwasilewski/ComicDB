# ComicDB

ComicDB is a web application that can track comic book collections.


## Requirements

- Ruby v2.7.5
- Rails v6.1.7
- PostgreSQL 14.5


## Tasks

- [x] 🤝 User Authentication
- [x] 🔌 Connect to ComicVine API
- [x] 🔍 Search ComicVine API and display results
- [x] 📕 Fetch and display a single issue
- [ ] 📚 Fetch and display a series
- [ ] 💾 CRUD collections


## Getting Started

``` bash
git clone https://github.com/bwasilewski/ComicDB.git
cd comicdb
bundle install
```

Create a file named `local_dev.yml` and save it at the root of your project. The file's contents should look like the following:

``` yaml
EMAIL_USERNAME: 'email@address.com'
EMAIL_PASSWORD: 'password'
```

Lastly, run:

``` bash
rails server
```


## Resources

- [Getting Started With Rails](https://guides.rubyonrails.org/v6.1/getting_started.html)
- [How to Setup User Authentication... by Njunu Simon](https://www.section.io/engineering-education/how-to-setup-user-authentication-from-scratch-with-rails-6/#configuring-routes)