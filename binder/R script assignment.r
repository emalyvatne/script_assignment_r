# Importing the dataset
dataset = read.csv('regrex1.csv')

# Fitting Linear Regression to the dataset
model = lm(formula = y ~ x,
               data = dataset)
               
 #Summary analysis of the model              
summary(model)

#Visualizing the Linear Regression results
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('X vs Y') +
  xlab('x') +
  ylab('y')


