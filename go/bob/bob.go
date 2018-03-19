package bob

import (
  "strings"
)

// Possible answers
const (
	nothing = "Fine. Be that way!"
  forcefulQuestion = "Calm down, I know what I'm doing!"
	shouting = "Whoa, chill out!"
	question = "Sure."
	something = "Whatever."
)

// Receives a sentence then answer according with
// sentence pattern
func Hey(remark string) string {
	remark = strings.TrimSpace(remark)

	switch {
	case len(remark) == 0:
		return nothing
	case isShouting(remark) && isQuestion(remark):
		return forcefulQuestion
  case isQuestion(remark):
		return question
  case isShouting(remark):
		return shouting
	default:
		return something
	}
}

func isQuestion(sentence string) bool {
  return strings.HasSuffix(sentence, "?")
}

func isShouting(sentence string) bool {
  return sentence == strings.ToUpper(sentence) && sentence != strings.ToLower(sentence)
}
