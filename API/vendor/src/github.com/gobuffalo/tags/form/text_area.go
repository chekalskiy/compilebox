package form

import "github.com/gobuffalo/tags"

//TextArea creates a textarea for a form with passed options
func (f Form) TextArea(opts tags.Options) *tags.Tag {
	if opts["value"] != nil {
		opts["body"] = opts["value"]
		delete(opts, "value")
	}
	return tags.New("textarea", opts)
}
