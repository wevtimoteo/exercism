package gigasecond

import "time"

const gigasecond = time.Duration(1000000000) * time.Second

// AddGigasecond receives a time then add 1 gigasecond to it
func AddGigasecond(t time.Time) time.Time {
	return t.Add(gigasecond)
}
