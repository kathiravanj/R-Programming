# R-Programming
Solving Real word problems using R programming
My inferences on this PCA analysis are as follows:

1.	The components Var 3 to Var 7 are all co-related and could be represented as one dimension or principal component representing whether the movie is a good or bad movie. That means, the runtime of the movie, rating, votes, revenue and metascore of a movie are all directly proportional and correlated to each other. I am surprised and excited to see that the long running movies are somehow good movies w.r.t this dataset.

2.	The components Var 4 (Ratings) and Var 5 (Votes) are almost same direction and value. Based on this, I would say, if a movie gets more votes, then the rating will be higher. This could be due to users who liked the movie tend to vote much.

3.	Var 2 (Year of the movie) has no relation to other components. That means, year of the movie cannot decide if a movie is good or bad. So, it cannot be considered for dimension reduction.

