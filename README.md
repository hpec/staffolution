<head>
  <h1>
    Staffolution
  </h1>
  [![Code Climate](https://codeclimate.com/github/hpec/staffolution.png)](https://codeclimate.com/github/hpec/staffolution)
  [![Build Status](https://travis-ci.org/hpec/staffolution.png)](https://travis-ci.org/hpec/staffolution)
  <h5>
    <div>
      <i>Kevin W. Baum, Drew Haymond, Chris Lin, Daniel Liu, Peng Xue</i>
    </div>
    <div>
      <i>Nathan Brummel, Elizabeth Brummel, & Chris DeLauder</i>
    </div>
  </h5>
</head>

<body>
  <h2>
    Description
  </h2>
  
  <p>
    Staffolution, Inc.
    <a href="http://www.staffolution.com">
      Staffolution.com
    </a>
  </p>
  <p>
    Video: 
    <a href="https://www.youtube.com/watch?v=ZO494KukJDg">
      https://www.youtube.com/watch?v=ZO494KukJDg
    </a>
  </p>
  
</body>

##.

###views

+ devise/
+ education_classes
+ employees
+ employers
+ jobs
+ reps
+ reviews
+ education_classes

###tables(models)

+ active_admin_comments (table`)
+ admin_users
+ delayed_jobs (table)
+ education_classes
+ employees
+ employers
+ jobs
+ reps
+ reviews
+ users
+ votes (table)

###routes

+ jobs
+ employers > vote
+ reps > vote
+ reviews
+ employees > vote
+ education_classes > vote
+ users, admin_users (devise)
