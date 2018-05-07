v1 <- c(1, 6, 4, 7)

(v1 > 2) || (1:4 < 2)

id <- c(11, 12, 13)
name <- c("Lily", "Jim", "Tom")
credit <- c(710, 700, 680)
df <- data.frame(id, name, credit)

df[["credit"]][2]
df$credit[3]
tail(sort(df$credit,decreasing = TRUE), 2)
df["credit"][2]

df

colnames(df)[1] <- "student.id"
colnames(df)[2] <- "name"

df


