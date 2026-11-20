# Builds an ILLUSTRATIVE sample dataset that mirrors the AO1 test design.
# Replace data/rkr_newsletter.csv with real issue data (or Case 31) when available.
set.seed(2026)

make_rows <- function(dates, phase, variant, ctr, open_rate, res_rate) {
  n <- length(dates)
  recipients <- round(rnorm(n, 3200, 120))
  opens  <- rbinom(n, recipients, open_rate)
  clicks <- rbinom(n, opens, ctr)
  res    <- rbinom(n, clicks, res_rate)
  data.frame(issue_date = dates, phase = phase, variant = variant,
             recipients = recipients, opens = opens,
             reserve_clicks = clicks, reservations = res)
}

baseline <- make_rows(seq(as.Date("2026-02-05"), by = "week", length.out = 12),
                      "Baseline (past issues)", "Baseline", 0.012, 0.44, 0.16)
fall     <- make_rows(seq(as.Date("2026-10-08"), by = "week", length.out = 10),
                      "Fall: button placement", "Upper-left button", 0.018, 0.45, 0.17)
spring_d <- seq(as.Date("2027-01-14"), by = "week", length.out = 18)
# Spring A/B: each issue is split, half the list sees image, half sees video
img <- make_rows(spring_d, "Spring: image vs video", "Image", 0.019, 0.45, 0.17)
vid <- make_rows(spring_d, "Spring: image vs video", "Video", 0.024, 0.45, 0.18)
img$recipients <- round(img$recipients / 2); img$opens <- round(img$opens / 2)
img$reserve_clicks <- round(img$reserve_clicks / 2); img$reservations <- round(img$reservations / 2)
vid$recipients <- round(vid$recipients / 2); vid$opens <- round(vid$opens / 2)
vid$reserve_clicks <- round(vid$reserve_clicks / 2); vid$reservations <- round(vid$reservations / 2)

out <- rbind(baseline, fall, img, vid)
out <- out[order(out$issue_date, out$variant), ]
write.csv(out, "data/rkr_newsletter.csv", row.names = FALSE)
