#saved data as a csv and imported into R
bigmart <- Big.Mart.Dataset
View(bigmart)

#plots using ggplot have similar components:
#data set + set of geoms + coordinate system
#can map data values to aesthetic properties


#Exploring Scatter Plots
library(ggplot2)
ggplot(bigmart, aes(Item_Visibility, Item_MRP)) + geom_point() + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05)) + 
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ theme_bw() +
  ggtitle("Scatterplot of Item Visibility vs. Item MRP")

#setting Item_Type
ggplot(bigmart, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05)) + 
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ theme_bw() +
  ggtitle("Scatterplot of Item Visibility vs. Item MRP")

#separating by category
ggplot(bigmart, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ 
  theme_bw() + ggtitle("Scatterplot of Item Visibility vs. Item MRP") +
  facet_wrap( ~ Item_Type)


#Exploring Histograms
ggplot(bigmart, aes(Item_MRP)) + geom_histogram(binwidth = 2)+
  scale_x_continuous(" ", breaks = seq(0,270,by = 30))+
  scale_y_continuous("Count", breaks = seq(0,200,by = 20))+
  labs(title = "Histogram of Item MRP")

ggplot(bigmart, aes(Item_Weight)) + geom_histogram(bins = 30)+
  labs(title = "Histogram of Item Weight")

ggplot(bigmart, aes(Item_Weight)) + geom_histogram(bins = 30)+
  labs(title = "Histogram of Item Weight")


#
