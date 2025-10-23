mta_2020 <- mta_ridership |>
  +   filter(Year == 2020) |>
  +   group_by(Month) |>
  +  summarize(
    +   Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +   Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    + )|>
  +   pivot_longer(cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
                   +                names_to = "Type", values_to = "Value")
> 
  > ggplot(mta_2020, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   labs(
    +     title = "title",
    +     x = "Month",
    +     y = "Value (Traffic in Millions &  % of Pre-Pandemic)", 
    +     caption = "heh"
    +   ) +
  +   scale_x_continuous(breaks = 1:12, labels = month.abb) +
  +   theme_minimal()
mta_2020 <- mta_ridership |>
  +   filter(Year == 2020) |>
  +   group_by(Month) |>
  +  summarize(
    +   Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +   Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    + )|>
  +   pivot_longer(cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
                   +                names_to = "Type", values_to = "Value")
> 
  > ggplot(mta_2020, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   labs(
    +     title = "title",
    +     x = "Month",
    +     y = "Value (Traffic in Millions &  % of Pre-Pandemic)", 
    +     caption = "heh"
    +   ) +
  +   scale_x_continuous(breaks = 1:12, labels = month.abb) +
  +   theme_minimal()
> mta_2020 <- mta_ridership |>
  +   filter(Year == 2020) |>
  +   group_by(Month) |>
  +  summarize(
    +   Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +   Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    + )|>
  +   pivot_longer(cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
                   +                names_to = "Type", values_to = "Value")
> 
  > ggplot(mta_2020, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   labs(
    +     title = "title",
    +     x = "Month",
    +     y = "Ridership (in millions)", 
    +     caption = "heh"
    +   ) +
  +   scale_x_continuous(breaks = 1:12, labels = month.abb) +
  +   theme_minimal()
> mta_all <- mta_ridership |>
  +   group_by(Month) |>
  +  summarize(
    +   Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +   Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    + )|>
  +   pivot_longer(cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
                   +                names_to = "Type", values_to = "Value")
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   labs(
    +     title = "Access-A-Ride and Bus Ridership throughout Post-Covid",
    +     x = "Month",
    +     y = "Ridership (in millions)", 
    +     caption = "heh"
    +   ) +
  +   scale_x_continuous(breaks = 1:12, labels = month.abb) +
  +   theme_minimal()
> mta_all <- mta_ridership |>
  +   group_by(Month) |>
  +  summarize(
    +   Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +   Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    + )|>
  +   pivot_longer(cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
                   +                names_to = "Type", values_to = "Value")
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   labs(
    +     title = "MTA Access-A-Ride and Bus Ridership (All Years Combined)",
    +     x = "Month",
    +     y = "Ridership (in millions)"
    +   ) +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]
    +   ) +
  +   theme_minimal()
> mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +  summarize(
    +   Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +   Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    + )|>
  +   pivot_longer(cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
                   +                names_to = "Type", values_to = "Value")
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   labs(
    +     title = "MTA Access-A-Ride and Bus Ridership (All Years Combined)",
    +     x = "Month",
    +     y = "Ridership (in millions)"
    +   ) +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]
    +   ) +
  +   theme_minimal()
> mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +   summarize(
    +     Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership, na.rm = TRUE) / 1e6,
    +     Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips, na.rm = TRUE) / 1e6
    +   ) |>
  +   pivot_longer(
    +     cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
    +     names_to = "Type",
    +     values_to = "Value"
    +   )
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   facet_wrap(~ Year) +  # ← separates by year
  +   labs(
    +     title = "MTA Access-A-Ride and Bus Ridership (2020–2023)",
    +     x = "Month",
    +     y = "Ridership (in millions)"
    +   ) +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]
    +   ) +
  +   theme_minimal()
> 
  > mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +   summarize(
    +     Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +     Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    +   ) |>
  +   pivot_longer(
    +     cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
    +     names_to = "Type",
    +     values_to = "Value" )
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   facet_wrap(~ Year) +  # ← separates by year
  +   labs(
    +     title = "MTA Access-A-Ride and Bus Ridership (2020–2023)",
    +     x = "Month",
    +     y = "Ridership (in millions)") +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]) +
  +   theme_minimal()
> 
  > mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +   summarize(
    +     Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +     Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    +   ) |>
  +   pivot_longer(
    +     cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
    +     names_to = "Type",
    +     values_to = "Value" )
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   facet_wrap(~ Year) +
  +   labs(
    +     title = "MTA Access-A-Ride and Bus Ridership (2020–2023)",
    +     x = "Month",
    +     y = "Ridership (in millions)") +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]) +
  +   theme_minimal()
> 
  > mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +   summarize(
    +     Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +     Total_Access_A_Ride = sum(Access.A.Ride..Total.Scheduled.Trips) / 1e6
    +   ) |>
  +   pivot_longer(
    +     cols = c(Total_Bus_Ridership, Total_Access_A_Ride),
    +     names_to = "Type",
    +     values_to = "Value" )
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   facet_wrap(~ Year) +
  +   labs(
    +     title = "MTA Access-A-Ride and Bus Ridership (2020–2023)",
    +     x = "Month",
    +     y = "Ridership (in millions)",
    +     caption = "Data for 2025 only exists for the first nine days of January.") +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]) +
  +   theme_minimal()
> 
  > mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +   summarize(
    +     Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +     Total_Subway_Ridership = sum(Subways..Total.Estimated.Ridership) / 1e6
    +   ) |>
  +   pivot_longer(
    +     cols = c(Total_Bus_Ridership, Total_Subway_Ridership),
    +     names_to = "Type",
    +     values_to = "Value" )
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   facet_wrap(~ Year) +
  +   labs(
    +     title = "MTA Subway Ridership and Bus Ridership (2020–2023)",
    +     x = "Month",
    +     y = "Ridership (in millions)",
    +     caption = "Data for 2025 only exists for the first nine days of January.") +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]) +
  +   theme_minimal()
> 
  > mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +   summarize(
    +     Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +     Total_Subway_Ridership = sum(Subways..Total.Estimated.Ridership) / 1e6
    +   ) |>
  +   pivot_longer(
    +     cols = c(Total_Bus_Ridership, Total_Subway_Ridership),
    +     names_to = "Type",
    +     values_to = "Value" )
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   facet_wrap(~ Year) +
  +   labs(
    +     title = "MTA Subway Ridership and Bus Ridership (2020–2023)",
    +     x = "Month",
    +     y = "Ridership (in millions)",
    +     caption = "Data for 2025 only exists for the first nine days of January.") +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]) +
  +   theme_minimal()
> 
  > mta_all <- mta_ridership |>
  +   group_by(Year, Month) |>
  +   summarize(
    +     Total_Bus_Ridership = sum(Buses..Total.Estimated.Ridership) / 1e6,
    +     Total_Subway_Ridership = sum(Subways..Total.Estimated.Ridership) / 1e6
    +   ) |>
  +   pivot_longer(
    +     cols = c(Total_Bus_Ridership, Total_Subway_Ridership),
    +     names_to = "Type",
    +     values_to = "Value" )
`summarise()` has grouped output by 'Year'. You can override using the `.groups` argument.
> 
  > ggplot(mta_all, aes(x = Month, y = Value, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   facet_wrap(~ Year) +
  +   labs(
    +     title = "MTA Subway Ridership and Bus Ridership (2020–2023)",
    +     x = "Month",
    +     y = "Ridership (in millions)",
    +     caption = "Data for 2025 only exists for the first nine days of January.") +
  +   scale_x_continuous(
    +     breaks = seq(1, 12, by = 6),
    +     labels = month.abb[seq(1, 12, by = 6)]) +
  +   theme_minimal()
> ggplot(mta_ridership, aes(x = Date, y = Bridges.and.Tunnels....of.Comparable.Pre.Pandemic.Day)) +
  +   geom_line(color = "steelblue", size = 0.4, alpha = 0.8) +  
  +   geom_point(size = 0.7, alpha = 0.5, color = "red") +   
  +   scale_x_date(date_breaks = "6 months", date_labels = "%b %Y") + 
  +   labs(
    +     x = "Date",
    +     y = "% of Bridges and Tunnel Traffic Compared to Pre-COVID",
    +     title = "Traffic on Bridges and Tunnels Post-COVID"
    +   ) +
  +   theme_minimal(base_size = 12) +
  +   theme(
    +     axis.text.x = element_text(color = "purple", angle = 45, hjust = 1),
    +     axis.text.y = element_text(color = "purple"),
    +     plot.title = element_text(color = "blue", face = "bold", size = 14)
    +   )
> mta_2020 <- mta_ridership |>
  +   filter(Year == 2020) |>      
  +   group_by(Month) |>         
  +   summarize(
    +     Total_Traffic = sum(Bridges.and.Tunnels..Total.Traffic),
    +     Traffic_Compared_Pre_Pandemic = sum(Bridges.and.Tunnels....of.Comparable.Pre.Pandemic.Day)
    +   ) |>
  +   pivot_longer(cols = c(Total_Traffic, Traffic_Compared_Pre_Pandemic),
                   +                names_to = "Type", values_to = "Total")
> 
  > ggplot(mta_2020, aes(x = Month, y = Total, fill = Type)) +
  +   geom_bar(stat = "identity", position = "dodge") +
  +   labs(
    +     title = "Monthly Bus Ridership vs Bridge & Tunnel Traffic (2020)",
    +     x = "Month",
    +     y = "Total Volume",
    +     caption = "Data shown only for the year 2020"
    +   ) +
  +   scale_x_continuous(breaks = 1:12, labels = month.abb) +  
  +   scale_y_continuous(labels = scales::label_number(scale = 1e-6, suffix = "M")) +
  +   theme_minimal()
  