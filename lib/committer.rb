require 'date'

class Committer
  def reset
    `git reset --hard $(git log --pretty=%H --reverse | head -1)`
  end

  def amend_date date, message = "First commit."
    `git commit --amend --date=#{date.iso8601} -m '#{message}'`
  end

  def commit date
    `git commit --date=#{date.iso8601} -m 'And now for something completely different.'`
  end

  def add
    `git add ./mock.txt`
  end

end

