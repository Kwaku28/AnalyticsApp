<a name="readme-top"></a>

<div align="center">
  <h1><b> Search Analytics App </b></h1>
</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [ Search Analytics ](#-about-project-)
- [🛠 Built With ](#-built-with-)
  - [📌 Tech Stack ](#-tech-stack-)
- [🚀 Live Demo](#-live-demo-)
- [💻 Getting Started ](#-getting-started-)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors ](#-authors-)
- [🔭 Future Features ](#-future-features-)
- [🤝 Contributing ](#-contributing-)
- [⭐️ Show your support ](#️-show-your-support-)
- [🙏 Acknowledgments ](#-acknowledgments-)
- [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# Search Analytics <a name="about-project"></a>

This app is a realtime search box, where users search articles, and then to have analytics that display what users were searching for. The app records their input in realtime and ultimately display analytics & trends on what people are searching for the most.

# 🛠 Built With <a name="built-with"></a>

## 📌 Tech Stack <a name="tech-stack"></a>

| Domain | Tech Stack |
|--------|--------|
| Server | <a href="https://rubyonrails.org/">Ruby on Rails</a> |
| Database | <a href="https://www.postgresql.org/">PostgreSQL</a> |
| Testing Framework | <a href="https://github.com/rspec/rspec-rails">RSpec Rails |
| Authentification | <a href="https://github.com/heartcombo/devise#getting-started">Devise</a> |

<!-- Features -->

# 🚀 Live Demo <a name="live-demo"></a>

👉 [Live Demo](https://analytics-xpp1.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running follow these simple example steps.

```sh
git clone https://github.com/Kwaku28/AnalyticsApp.git
cd AnalyticsApp
```

### Prerequisites
Before starting make sure that you have the following runing on your computer
- `Ruby ~>3.2.2`
- `Rails ~>7.0.8`
- `PostgresSQL`

### Setup

Install gems with:
```sh
bundle install
```
On the root of your project create a file `.env` to store your database name and the password.

`.env` file content

```ruby
DB_USERNAME=your_database_name
DB_PASSWORD=your_database_password
```

Setup database

```sh
rails db:create
rails db:migrate
```

Start server 

```sh
rails s
```

Open [http://localhost:3000/](http://localhost:3000/]) in your browser.

### Run tests

```
rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

# 👥 Authors <a name="authors"></a>

👤 **Lawrence Amoafo**

- GitHub: [@Kwaku28](https://github.com/Kwaku28)
- Linkedin: [@lawrence_appoh](https://www.linkedin.com/in/lawrence-amoafo-appoh/)

# 🔭 Future Features <a name="future-features"></a>

- [ ] Topic Clustering
- [ ] Time-Based Analysis
- [ ] User Behavior Analysis

# 🤝 Contributing <a name="contributing"></a>
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Kwaku28/AnalyticsApp/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

# ⭐️ Show your support <a name="support"></a>

Your support is crucial to the success of this project! There are ways you can contribute and show your support:

- Provide Feedback: If you've tried out the project or have any suggestions for improvement, I would love to hear from you. Your feedback is invaluable in shaping the future direction of the project.

- If you like this project Give it a **Star**

# 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
