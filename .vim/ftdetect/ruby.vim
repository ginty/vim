" Ruby
au BufNewFile,BufRead *.rb,*.rbw,*.rjs,*.rxml,*.gem,*.gemspec	set filetype=ruby

" Rakefile
au BufNewFile,BufRead [rR]akefile*				set filetype=ruby

" Rantfile
au BufNewFile,BufRead [rR]antfile,*.rant			set filetype=ruby

" eRuby
au BufNewFile,BufRead *.rhtml					set filetype=eruby
au BufNewFile,BufRead *.html.erb				set filetype=eruby

" ERB template files
au BufNewFile,BufRead *.txt.erb					set filetype=eruby
au BufNewFile,BufRead *.md.erb					set filetype=eruby
au BufNewFile,BufRead *.bas.erb					set filetype=eruby
au BufNewFile,BufRead *.cls.erb					set filetype=eruby
au BufNewFile,BufRead *.c.erb					set filetype=eruby
au BufNewFile,BufRead *.h.erb					set filetype=eruby
au BufNewFile,BufRead *.csv.erb					set filetype=eruby
au BufNewFile,BufRead *.haml.erb				set filetype=eruby

